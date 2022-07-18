package shop.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import product.bean.ProductDTO;
import product.bean.ProductImgDTO;

@Repository
@Transactional
public class ShopMyBatisImpl implements ShopDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public Map<String, Object> scrollProduct(Map<String, Integer> map) {
		System.out.println(map);
		List<ProductDTO> productList = sqlSession.selectList("shopSQL.scrollProductList", map);
		List<ProductImgDTO> productImgList = sqlSession.selectList("shopSQL.scrollProductImg", map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("productList", productList);
		sendMap.put("productImgList", productImgList);
		System.out.println(sendMap);
		
		return sendMap;
	}

}
