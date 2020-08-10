package alz.order.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import lombok.experimental.Accessors;

@Setter
@Getter
@Builder
@Accessors(chain = true)
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CartListDTO {
	
	private Long id;
	private Long userId;
	private Long merchandiseId;
	private Long amount;
	private Date addDate;
	
	private Long num;
	private String name;
	private Long originPrice;
	private Long salePrice;
	private String Thumb;
	
	
	
}
