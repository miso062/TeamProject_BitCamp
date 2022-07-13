package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

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
	private int sms_allow;
	private int email_allow;
	private String profile_img;
	private int authority;
	private String sign_up_type;
	private Date sign_up_date;
}
