package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.AdminDTO;

public interface AdminDAO {
	public List<AdminDTO> getBoardList(Map<String, Integer> map);

	public AdminDTO getnoticeView(String seq, String pg);

	public void getnoticeWrite(AdminDTO adminDTO);

	public int getTotalA();

	public void noticeDelete(String seq, String pg);

	public AdminDTO getnoticeUpdate(String seq, String pg);
}
