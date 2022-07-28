package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.AdminDTO;
import admin.bean.AdminQnADTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import user.bean.UserDTO;

public interface AdminDAO {
	public List<AdminDTO> getBoardList(Map<String, Integer> map);

	public AdminDTO getnoticeView(String seq, String pg);

	public void getnoticeWrite(AdminDTO adminDTO);

	public int getTotalA();

	public void noticeDelete(String seq, String pg);

	public AdminDTO getnoticeUpdate(String seq, String pg);

	public void addnoticeUpdate(AdminDTO adminDTO);

	public void getnoticeQnAWrite(AdminQnADTO adminQnADTO);

	public List<AdminQnADTO> getnoticeQnAList(Map<String, Integer> map);

	public int getTotalA1();

	public List<AdminQnADTO> getnoticeQnAListsearch(Map<String, String> map);

	public int getTotalA2(String category);

	public AdminQnADTO getnoticeQnAUpdate(String seq, String pg);

	public void addnoticeQnAUpdate(AdminQnADTO adminQnADTO);

	public void noticeqnaDelete(String seq, String pg);

	public List<UserDTO> getAllUserList();

	public Integer getUserCount();

	public List<UserDTO> getAllUserList2();

	public List<UserDTO> getAllUserList3();

	public void deleteThisUser(String user_id);

	public List<UserDTO> getsearchUserList(String keyword);

	public Integer getSearchAdminCount(String keyword);

	public List<UserDTO> getMemberList();

	public List<UserDTO> getGoodMemberList();

	public Integer getMemberCount();

	public Integer getGoodMemberCount();

	public List<ProductDTO> getAllProList();

	public ProductImgDTO getImge(int product_id);

	public Integer getProCount();

	public List<ProductDTO> getAllProList2();

	public void deleteTisPro(String product_id);

	public Integer getBuy_count();

	public Integer getBuystop_count();

	public List<ProductDTO> getAllProList3(String keyword);

	public Integer getSearchpro1(String keyword);

	public Integer getsearchpro2(String keyword);

	public Integer getsearchpro3(String keyword);
}
