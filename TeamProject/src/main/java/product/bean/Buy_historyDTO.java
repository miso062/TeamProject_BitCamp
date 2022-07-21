package product.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Component
@Data
public class Buy_historyDTO {
	
	private int buy_id;
	private int product_id;
	private int address_id;
	private String user_id;
	private int buy_price;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy/MM/dd")
	private Date period;
	private String size_type;
	private String cum_uid;
	private String status1;
	private String status2;
	private Date buy_date;
	
}
