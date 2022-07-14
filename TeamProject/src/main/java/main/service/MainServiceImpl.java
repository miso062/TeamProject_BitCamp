package main.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import main.dao.MainDAO;

@Service
public class MainServiceImpl implements MainService {
 
	@Autowired
	private MainDAO mainDAO;
	
	@Override
	public Map<String, Object> getProductList(String num) {
		int startNum = Integer.parseInt(num);
		int endNum = startNum + 3;
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		
		Map<String, Object> sendMap = mainDAO.getProductList(map);
		sendMap.put("num", startNum + 4);
		return sendMap;
	}

}
