package user.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class AddressDTO {
	
		private String address_id;
		private String user_id;
		private String name;
		private String hp;
		private String zipcode;
		private String addr;
		private String addr_detail;
		private int flag;
	

}
