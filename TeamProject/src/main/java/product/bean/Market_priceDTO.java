package product.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Component
@Data
public class Market_priceDTO {
	
	private int market_price_id;
	private int product_id;
	private int price;
	private String size_type;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yy/MM/dd")
	private Date signing_date;
	
}
