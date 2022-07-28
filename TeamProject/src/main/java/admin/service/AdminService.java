package admin.service;

import java.util.List;
import java.util.Map;

import admin.bean.AdminDTO;
import admin.bean.AdminPaging;
import admin.bean.AdminQnADTO;
import product.bean.ProductDTO;
import user.bean.UserDTO;

public interface AdminService {

	public List<AdminDTO> getnoticeList(String pg);

	public AdminDTO getnoticeView(String seq, String pg);

	public void getnoticeWrite(AdminDTO adminDTO);

	public AdminPaging getBoardPaging(String pg);

	public void noticeDelete(String seq, String pg);

	public AdminDTO getnoticeUpdate(String seq, String pg);

	public void addnoticeUpdate(AdminDTO adminDTO);

	public void getnoticeQnAWrite(AdminQnADTO adminQnADTO);

	public List<AdminQnADTO> getnoticeQnAList(String pg);

	public AdminPaging getBoardPaging1(String pg);

	public List<AdminQnADTO> getnoticeQnAListsearch(String pg, String category);

	public AdminPaging getBoardPaging2(String pg, String category);

	public AdminQnADTO getnoticeQnAUpdate(String seq, String pg);

	public void addnoticeQnAUpdate(AdminQnADTO adminQnADTO);

	public void noticeqnaDelete(String seq, String pg);

	public List<UserDTO> getAllUserList();

	public Map<String, Object> getAllAdmin();

	public List<UserDTO> getAllUserList2();

	public List<UserDTO> getAllUserList3();

	public void deleteThisUser(String user_id);

	public List<UserDTO> getsearchUserList(String keyword);

	public Map<String, Object> getSearchAdmin(String keyword);

	public List<ProductDTO> getAllProList();

	public Map<String, Object> getAllProImg(int product_id);

	public List<ProductDTO> getAllProList2();

	public void deleteThisPro(String product_id);

	public List<ProductDTO> getAllproList3(String keyword);

	public Map<String, Object> getSearchAdmin3(String keyword);


}
