package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.AdminDTO;

public interface AdminDAO {
	public List<AdminDTO> getBoardList(Map<String, Integer> map);
}
