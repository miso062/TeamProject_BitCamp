package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.AdminDTO;
import admin.bean.AdminQnADTO;

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
}
