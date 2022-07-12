package product.bean;

import java.util.Date;

import lombok.Data;

@Data
public class ProductDTO {
	
	private int productId;
	private String brand;
	private String collection;
	private String category;
	private String engName;
	private String korName;
	private int gender;
	private Date relDate; 
	private int relPrice;
	private String modelNum;
	private String color;
	private String status;
	private Date regDate;
	

}
