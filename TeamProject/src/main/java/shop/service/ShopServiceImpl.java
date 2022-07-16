package shop.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ShopDAO;

@Service
public class ShopServiceImpl implements ShopService {

	
	@Autowired
	public ShopDAO shopDAO;
	
	
	@Override
	public Map<String, Object> scrollProduct(String num) {
		int startNum = Integer.parseInt(num);
		int endNum = startNum+3;
		
		Map<String, Integer>map = new HashMap<String, Integer>();
		
		return null;
	}

}
