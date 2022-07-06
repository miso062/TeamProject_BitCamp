package admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminDTO;
import admin.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDAO adminDAO;
	
	@Override
	public List<AdminDTO> getnoticeList(String pg) {
		int endNum = Integer.parseInt(pg) * 5;
		int startNum = endNum -4;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		List<AdminDTO> list = adminDAO.getBoardList(map);
		System.out.println(list.get(0));
		return list;
	}

}
