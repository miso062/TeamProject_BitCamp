package admin.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminDTO;
import admin.bean.AdminPaging;
import admin.bean.AdminQnADTO;
import admin.dao.AdminDAO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
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
		map.put("pro_count",getProCount());
		map.put("buy_count",getBuy_count());
		map.put("buystop_count",getBuystop_count());
		return map;
	}

	private Integer getBuystop_count() {
		return adminDAO.getBuystop_count();
	}

	private Integer getBuy_count() {
		return adminDAO.getBuy_count();
	}

	private Integer getProCount() {
		return adminDAO.getProCount();
	}

	private Integer getUserCount() {
		return adminDAO.getUserCount();
	}

	@Override
	public List<UserDTO> getAllUserList2() {
		return adminDAO.getAllUserList2();
	}

	@Override
	public List<UserDTO> getAllUserList3() {
		return adminDAO.getAllUserList3();
	}

	@Override
	public void deleteThisUser(String user_id) {
		adminDAO.deleteThisUser(user_id);
	}

	@Override
	public List<UserDTO> getsearchUserList(String keyword) {
		if(keyword.equals("일반회원")) {
			return adminDAO.getMemberList();
		}else if(keyword.equals("우수회원")) {
			return adminDAO.getGoodMemberList();			
		}else {
		return adminDAO.getsearchUserList(keyword);
		}
	}

	@Override
	public Map<String, Object> getSearchAdmin(String keyword) {
		Map<String,Object>map = new HashMap<String,Object>();
		map.put("searchuser_count",getSearchAdminCount(keyword));
		return map;
	}

	private Integer getSearchAdminCount(String keyword) {
		
		if(keyword.equals("일반회원")) {
			return adminDAO.getMemberCount();
		}else if(keyword.equals("우수회원")) {
			return adminDAO.getGoodMemberCount();			
		}else {
			return adminDAO.getSearchAdminCount(keyword);
		}
	}

	@Override
	public List<ProductDTO> getAllProList() {
		return adminDAO.getAllProList();
//		return null;
	}
	
	@Override
	public List<ProductDTO> getAllProList2() {
		return adminDAO.getAllProList2();
	}

	@Override
	public Map<String, Object> getAllProImg(int product_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productImgDTO", getImage(product_id));
		return map;
	}

	private ProductImgDTO getImage(int product_id) {
		return adminDAO.getImge(product_id);
	}

	@Override
	public void deleteThisPro(String product_id) {
		adminDAO.deleteTisPro(product_id);
	}

	@Override
	public List<ProductDTO> getAllproList3(String keyword) {
		return adminDAO.getAllProList3(keyword);
	}

	@Override
	public Map<String, Object> getSearchAdmin3(String keyword) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("searchpro1", getSearchpro1(keyword));
		map.put("searchpro2", getsearchpro2(keyword));
		map.put("searchpro3", getsearchpro3(keyword));
		return map;
	}

	private Integer getsearchpro3(String keyword) {
		return adminDAO.getsearchpro3(keyword);
	}

	private Integer getsearchpro2(String keyword) {
		return adminDAO.getsearchpro2(keyword);
	}

	private Integer getSearchpro1(String keyword) {
		return adminDAO.getSearchpro1(keyword);
	}
	
	public Map<String, Object> getVisitInfo() {
		Map<String, Object> map = new HashMap<String, Object>();
		List<String> visitDate = adminDAO.getVisitDate();
		List<Integer> visitCnt = adminDAO.getVisitCnt();
		map.put("visitDate", visitDate);
		map.put("visitCnt", visitCnt);
		return map;
	}

	@Override
	public void addVisitCtn() {
		LocalDate now = LocalDate.now();         
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String today = now.format(formatter);         

		String isExsit = adminDAO.getToday(today);
		if(isExsit == null || isExsit.isEmpty()) {
			adminDAO.addToday(today);
		}
		
		adminDAO.updateToday(today);
	}

	@Override
	public List<UserDTO> getSignUpInfo() {
		return adminDAO.getSignUpInfo();
	}
}
