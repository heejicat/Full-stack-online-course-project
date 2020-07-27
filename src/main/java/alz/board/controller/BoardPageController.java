package alz.board.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.Principal;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import alz.board.domain.BoardCriteria;
import alz.board.domain.BoardDTO;
import alz.board.domain.BoardPageDTO;
import alz.board.exceptions.NoUserException;
import alz.board.service.BoardService;
import alz.file.domain.BoardFileDTO;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
public class BoardPageController {
 
	private BoardService boardService;
	
	@Autowired
	public BoardPageController(BoardService boardService) {
		this.boardService = boardService;
	}
	
	//@GetMapping("/list")
	//public void list(Model model) {
	//	model.addAttribute("list", boardService.readAll());
	//}
	
	@PostMapping("/delete")
	public String delete(@RequestParam("id") Long id, @ModelAttribute("cri") BoardCriteria cri, RedirectAttributes rttr) {
		List<BoardFileDTO> fileList = boardService.getFileList(id);
		BoardDTO board =boardService.readById(id);
		if(boardService.deleteById(id)==1) {
			deleteFiles(fileList);
			rttr.addFlashAttribute("result", "success");
		}
		
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
		
		return "redirect:/board/list?typeId=" + board.getTypeId();
	}
	
	@PostMapping("/update")
	public String update(@Valid BoardDTO board, @ModelAttribute("cri") BoardCriteria cri, RedirectAttributes rttr,  BindingResult result) {
	
		boardService.update(board.getId(), board);
			
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());
//		}
		return "redirect:/board/list";
	}
	
	@GetMapping( {"/read", "/update" })
	public void read(@RequestParam("id") Long id, @ModelAttribute("cri") BoardCriteria cri, Model model) {
		log.info("/read or update");
		
		model.addAttribute("board", boardService.readById(id));
		}
	
	@GetMapping("/list")
	public void list(BoardCriteria cri, Model model) {
  
		model.addAttribute("list", boardService.readAll(cri));

		int total = boardService.getTotal(cri);

		model.addAttribute("pageMaker", new BoardPageDTO(cri, total));
	}
	
	@GetMapping("/write")
	public void write(@RequestParam("typeId") Integer typeId, Model model) {
		model.addAttribute("typeId", typeId);
	}
	
	
	private void deleteFiles(List<BoardFileDTO> fileList) {
		
		if(fileList == null || fileList.size()==0) {
			return;
		}
		log.info("delete board files.................");
		log.info(fileList);
		
		fileList.forEach(file -> {
			try {
				Path files = Paths.get("C:\\upload\\"+file.getUploadPath()+"\\"+file.getUuid()+"_"+file.getFileName());
				Files.deleteIfExists(files);
				if(Files.probeContentType(files).startsWith("image")) {
					Path thumbNail = Paths.get("C:\\upload\\"+file.getUploadPath()+"\\s_"+file.getUuid()+"_"+file.getFileName());
					Files.delete(thumbNail);
				}
			} catch(Exception e) {
				log.error("delete file error" + e.getMessage());
			}
		});
	}
}
