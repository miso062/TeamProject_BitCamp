package product.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class ShopDTO {
	int sell_cnt;
	int price;
	int like_cnt;
	String product_id;
	String brand;
	String collection;
	String category;
	String eng_name;
	String kor_name;
	int gender;
	String file_path;
	String page;
}
