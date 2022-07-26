package user.bean;

import java.util.Date;

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
	private int sms_allow;
	private int email_allow;
	private String profile_img;
	private int authority;
	private String sign_up_type;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date sign_up_date;
}
