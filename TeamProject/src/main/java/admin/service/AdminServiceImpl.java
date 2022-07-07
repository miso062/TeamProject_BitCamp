package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminDTO;
import admin.bean.AdminPaging;
import admin.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminPaging adminPaging;
	@Autowired
	AdminDAO adminDAO;
	
	@Override
	public List<AdminDTO> getnoticeList(String pg) {
		int endNum = Integer.parseInt(pg) * 10;
		int startNum = endNum -9;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<AdminDTO> list = adminDAO.getBoardList(map);
		return list;
	}

	@Override
	public AdminDTO getnoticeView(String seq, String pg) {
		AdminDTO adminDTO = adminDAO.getnoticeView(seq,pg);
		String content = adminDTO.getContent();
		adminDTO.setContent(content);
		return adminDTO;
	}

	@Override
	public void getnoticeWrite(AdminDTO adminDTO) {
		adminDAO.getnoticeWrite(adminDTO);
	}

	@Override
	public AdminPaging getBoardPaging(String pg) {
		int totalA = adminDAO.getTotalA();
		
		adminPaging.setCurrentPage(Integer.parseInt(pg));
		adminPaging.setPageBlock(5);
		adminPaging.setPageSize(10);
		adminPaging.setTotalA(totalA);
		adminPaging.makePagingHTML();
		
		return adminPaging;
	}

	@Override
	public void noticeDelete(String seq, String pg) {
		adminDAO.noticeDelete(seq,pg);
	}

	@Override
	public AdminDTO getnoticeUpdate(String seq, String pg) {
		AdminDTO adminDTO = adminDAO.getnoticeUpdate(seq,pg);
		String content = adminDTO.getContent();
		content = content.replace("<p>", "\n");
		adminDTO.setContent(content);
		return adminDTO;
	}

}
