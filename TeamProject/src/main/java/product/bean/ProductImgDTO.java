package product.bean;

import lombok.Data;

@Data
public class ProductImgDTO {
	private int imgId;
	private int productId;
	private String orgFileName;
	private String filePath;
	
}
