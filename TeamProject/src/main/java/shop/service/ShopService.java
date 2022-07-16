package shop.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import shop.dao.ShopDAO;

public interface ShopService {

	
	Map<String, Object> scrollProduct(String num);
	
}
