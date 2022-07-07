package admin.bean;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class AdminPaging {
	private int currentPage; //현재페이지 
	private int pageBlock; //[이전][1][2][3][다음]
	private int pageSize; //1페이지당 5개씩 
	private int totalA; //총글수 
	private StringBuffer pagingHTML;
	
	public void makePagingHTML() {
		pagingHTML = new StringBuffer();
		
		int totalP = (totalA-1)/ pageSize + 1;//총 페이지 수 
		//int totalP = (totalA+ pageSize-1)/ pageSize;//총 페이지 수
		
		//시작페이지 번호
		int startPage = (currentPage-1) / pageBlock * pageBlock +1;
		//끝페이지 번호 
		int endPage = startPage + pageBlock -1;
		if(endPage > totalP) endPage = totalP;
		
		
		//if(startPage > pageBlock)
		if(startPage != 1)
			pagingHTML.append(" <span class='pg1 paging1' id='paging' onclick='adminPaging(" + (startPage - 1) + ")'><</span> ");
		
		for(int i=startPage; i<=endPage; i++) {
			if(i == currentPage)
				pagingHTML.append(" <span class='paging1' id='currentPaging' onclick='adminPaging(" + i + ")'>" + i + "</span> ");
			else
				pagingHTML.append(" <span class='paging1' id='paging' onclick='adminPaging(" + i + ")'>" + i + "</span> ");
		}
		if(endPage < totalP)
			pagingHTML.append(" <span class='pg1 paging1' id='paging' onclick='adminPaging(" + (endPage + 1) + ")'>></span> ");
	}
}
