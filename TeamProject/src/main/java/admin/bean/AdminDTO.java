package admin.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Component
@Data
public class AdminDTO {
	private String notice_id;
	private String title;
	private String content;
	private String registrant;
	
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date regdate; 
}
