package shop.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
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

	@Override
	public Map<String, Object> getshopDetail(int product_id) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("productImgDTO", getImage(product_id));
		map.put("product", getproduct(product_id));
		
		System.out.println(map);
		return map;
	}
	
	private ProductDTO getproduct(int product_id) { 
		ProductDTO productDTO = shopDAO.getproduct(product_id);
		return productDTO;
	}

	public ProductImgDTO getImage(int product_id) {
		return shopDAO.getimage(product_id);
	}

}
