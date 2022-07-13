package product.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ProductImgDTO {
	private int pro_image_id;
	private int product_id;
	private String org_file_name;
	private String file_path;
	
}
