package admin.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;


@Component
@Data
public class AdminQnADTO {

	private String qna_id;
	private String category;
	private String title;
	private String content;
	private String registrant;
	
	
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern = "yyyy.MM.dd")
	private Date regdate; 
}
