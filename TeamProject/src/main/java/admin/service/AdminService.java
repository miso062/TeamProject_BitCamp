package admin.service;

import java.util.List;

import admin.bean.AdminDTO;
import admin.bean.AdminPaging;

public interface AdminService {

	public List<AdminDTO> getnoticeList(String pg);

	public AdminDTO getnoticeView(String seq, String pg);

	public void getnoticeWrite(AdminDTO adminDTO);

	public AdminPaging getBoardPaging(String pg);

	public void noticeDelete(String seq, String pg);

	public AdminDTO getnoticeUpdate(String seq, String pg);
}
