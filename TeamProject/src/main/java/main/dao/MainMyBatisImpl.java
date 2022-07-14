package main.dao;

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
public class MainMyBatisImpl implements MainDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public Map<String, Object> getProductList(Map<String, Integer> map) {
		System.out.println(map);
		List<ProductDTO> productList = sqlSession.selectList("mainSQL.getProductList", map);
		List<ProductImgDTO> productImgList = sqlSession.selectList("mainSQL.getProductImg", map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("productList", productList);
		sendMap.put("productImgList", productImgList);
		System.out.println(sendMap);
		return sendMap;
	}

}
