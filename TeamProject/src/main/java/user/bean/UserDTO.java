package user.bean;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Component
@Data
public class UserDTO {
	private String user_id;
	private String user_name;
	private String nickname;
	private String user_pwd;
	private String hp;
	private String shoesize;
	private String sms_allow;
	private String email_allow;
	private String profile_img;
	private String authority;
	private String sign_up_type;
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private String sign_up_date;
}
