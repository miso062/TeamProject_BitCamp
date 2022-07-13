package main.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import product.bean.ProductDTO;
import product.bean.ProductImgDTO;

@Repository
@Transactional
public class MainMyBatisImpl implements MainDAO {
	
	private SqlSession sqlSession;
	
	@Override
	public Map<String, Object> getProductList(Map<String, Integer> map) {
		ProductDTO productDTO = sqlSession.selectOne("mainSQL.getProductList", map);
		ProductImgDTO productImgDTO = sqlSession.selectOne("mainSQL.getProductImg", map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("productDTO", productDTO);
		System.out.println("productDTO = "+ productDTO);
		sendMap.put("productImgDTO", productImgDTO);
		System.out.println("productImgDTO =" + productImgDTO);
		return sendMap;
	}

}
