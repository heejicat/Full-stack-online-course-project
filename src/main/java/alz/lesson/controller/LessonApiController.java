package alz.lesson.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import alz.lesson.domain.LessonDTO;
import alz.lesson.domain.LessonRequestDTO;
import alz.lesson.service.LessonServiceImpl;

@RestController
@RequestMapping("/api/lessons")
public class LessonApiController {

	private LessonServiceImpl lessonService;
	
	@Autowired
	public LessonApiController(LessonServiceImpl lessonService) {
		this.lessonService = lessonService;
	}
	
	@PostMapping
	public ResponseEntity<?> create(@RequestBody LessonRequestDTO classes){
		LessonDTO openedClass = lessonService.create(classes);
		return ResponseEntity.status(HttpStatus.CREATED).body(openedClass);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<?> readOne(@PathVariable Long id){
		LessonDTO searchedClass = lessonService.readById(id);
		return ResponseEntity.status(HttpStatus.OK).body(searchedClass);
	}
	
	@GetMapping
	public ResponseEntity<?> readAll() {
		List<LessonDTO> classes = lessonService.readAll();
		return ResponseEntity.status(HttpStatus.OK).body(classes);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<?> updateOne(@PathVariable Long id, @RequestBody LessonDTO classes) {
		LessonDTO updatedClass = lessonService.updateById(id, classes);
		return ResponseEntity.status(HttpStatus.OK).body(updatedClass);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<?> deleteOne(@PathVariable Long id) {
		int affectedRowCount = lessonService.deleteById(id);
		return ResponseEntity.status(HttpStatus.OK).body("ok");
	}
}