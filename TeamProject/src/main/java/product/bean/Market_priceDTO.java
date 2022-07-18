package product.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Market_priceDTO {
	
	private int market_price_id;
	private int product_id;
	private int price;
	private Date signing_date;
	
}