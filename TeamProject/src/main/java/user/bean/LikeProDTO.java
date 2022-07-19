package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class LikeProDTO {
	private int like_pro_id;
	private String user_id;
	private int product_id;
	private Date like_pro_data;
}
