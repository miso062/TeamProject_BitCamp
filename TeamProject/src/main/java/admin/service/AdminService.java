package admin.service;

import java.util.List;

import admin.bean.AdminDTO;

public interface AdminService {

	public void test();

	public List<AdminDTO> getnoticeList(String pg);
}
