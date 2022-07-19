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

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import product.bean.Buy_historyDTO;
import product.bean.Market_priceDTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import user.bean.AddressDTO;

@Repository
@Transactional
public class ShopMyBatisImpl implements ShopDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ProductImgDTO getImage(int product_id) {
		ProductImgDTO productImgDTO = sqlSession.selectOne("shopSQL.getimage",product_id);
		return productImgDTO;
	}

	@Override
	public ProductDTO getProduct(int product_id) {
		ProductDTO productDTO = sqlSession.selectOne("shopSQL.getproduct",product_id);
		return productDTO;
	}

	@Override
	public List<Sell_historyDTO> getSellList(int product_id) {
		return sqlSession.selectList("shopSQL.getSellList", product_id);
	}

	@Override
	public Sell_historyDTO getSellDTO(Map<String, Integer> map) {
		return sqlSession.selectOne("shopSQL.getSellDTO", map);
	}

	@Override
	public Buy_historyDTO getBuyDTO(Map<String, Integer> map) {
		return sqlSession.selectOne("shopSQL.getBuyDTO", map);
	}

	@Override
	public AddressDTO getDefalutAddress(String user_id) {
		return sqlSession.selectOne("shopSQL.getDefalutAddress", user_id);
	}
  
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

	@Override
	public List<Market_priceDTO> getchart(int product_id) {
		return sqlSession.selectList("shopSQL.getchart",product_id);
	}

}
