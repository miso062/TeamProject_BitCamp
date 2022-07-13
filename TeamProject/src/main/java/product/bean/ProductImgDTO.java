package product.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductImgDTO {
	private int imgId;
	private int productId;
	private String orgFileName;
	private String filePath;
	
}
