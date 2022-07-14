package product.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductDTO {
	
	private int product_id;
	private String brand;
	private String collection;
	private String category;
	private String eng_name;
	private String kor_name;
	private int gender;
	private Date release_date; 
	private String release_price;
	private String model_number;
	private String color;
	private String post_status;
	private Date regdate;
	

}
