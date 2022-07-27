package product.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class Sell_historyDTO {
	private int sell_id;
	private int product_id;
	private int address_id;
	private String user_id;
	private int sell_price;
	private String account;
	private Date period;
	private String size_type;
	private String status1;
	private String status2;
	private Date sell_date;
}
