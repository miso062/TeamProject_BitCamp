package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminDTO;
import admin.bean.AdminPaging;
import admin.bean.AdminQnADTO;
import admin.dao.AdminDAO;
import user.bean.UserDTO;

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
		adminDTO.setContent(content);
		return adminDTO;
	}

	@Override
	public void addnoticeUpdate(AdminDTO adminDTO) {
		adminDAO.addnoticeUpdate(adminDTO);
		
	}

	@Override
	public void getnoticeQnAWrite(AdminQnADTO adminQnADTO) {
		adminDAO.getnoticeQnAWrite(adminQnADTO);
	}

	@Override
	public List<AdminQnADTO> getnoticeQnAList(String pg) {
		int endNum = Integer.parseInt(pg) * 10;
		int startNum = endNum -9;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<AdminQnADTO> list = adminDAO.getnoticeQnAList(map);
		return list;
	}

	@Override
	public AdminPaging getBoardPaging1(String pg) {
		int totalA = adminDAO.getTotalA1();
		
		adminPaging.setCurrentPage(Integer.parseInt(pg));
		adminPaging.setPageBlock(5);
		adminPaging.setPageSize(10);
		adminPaging.setTotalA(totalA);
		adminPaging.makePagingHTML();
		
		return adminPaging;
	}

	@Override
	public List<AdminQnADTO> getnoticeQnAListsearch(String pg, String category) {
		
		int endNum = Integer.parseInt(pg) * 10;
		int startNum = endNum -9;
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("startNum", startNum + "");
		map.put("endNum", endNum + "");
		map.put("category", category);
		
		List<AdminQnADTO> list = adminDAO.getnoticeQnAListsearch(map);
		return list;
	}

	@Override
	public AdminPaging getBoardPaging2(String pg, String category) {
		int totalA = adminDAO.getTotalA2(category);
		
		adminPaging.setCurrentPage(Integer.parseInt(pg));
		adminPaging.setPageBlock(5);
		adminPaging.setPageSize(10);
		adminPaging.setTotalA(totalA);
		adminPaging.makePagingHTML();
		
		return adminPaging;
	}

	@Override
	public AdminQnADTO getnoticeQnAUpdate(String seq, String pg) {
		AdminQnADTO adminQnADTO = adminDAO.getnoticeQnAUpdate(seq,pg);
		String content = adminQnADTO.getContent();
		adminQnADTO.setContent(content);
		return adminQnADTO;
	}

	@Override
	public void addnoticeQnAUpdate(AdminQnADTO adminQnADTO) {
		adminDAO.addnoticeQnAUpdate(adminQnADTO);
		
	}

	@Override
	public void noticeqnaDelete(String seq, String pg) {
		adminDAO.noticeqnaDelete(seq,pg);
		
	}

	@Override
	public List<UserDTO> getAllUserList() {
		return adminDAO.getAllUserList();
	}

	@Override
	public Map<String, Object> getAllAdmin() {
		Map<String,Object>map = new HashMap<String,Object>();
		map.put("user_count",getUserCount());
		return map;
	}

	private Integer getUserCount() {
		return adminDAO.getUserCount();
	}

	
	

}
