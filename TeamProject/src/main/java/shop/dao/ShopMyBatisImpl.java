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
import user.bean.LikeProDTO;

@Repository
@Transactional
public class ShopMyBatisImpl implements ShopDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ProductImgDTO getImage(int product_id) {
		ProductImgDTO productImgDTO = sqlSession.selectOne("shopSQL.getImage",product_id);
		return productImgDTO;
	}

	@Override
	public ProductDTO getProduct(int product_id) {
		ProductDTO productDTO = sqlSession.selectOne("shopSQL.getProduct",product_id);
		return productDTO;
	}

	@Override
	public List<Sell_historyDTO> getSellList(int product_id) {
		return sqlSession.selectList("shopSQL.getSellList", product_id);
	}
	
	@Override
	public List<Buy_historyDTO> getBuyList(int product_id) {
		return sqlSession.selectList("shopSQL.getBuyList", product_id);
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
	public AddressDTO getAddress(int addr_id) {
		return sqlSession.selectOne("shopSQL.getAddress", addr_id);
	}
	
	@Override
	public List<AddressDTO> getAddrList(String user_id) {
		return sqlSession.selectList("shopSQL.getAddrList",user_id);
	}
  
	@Override
	public Map<String, Object> scrollProduct(Map<String, Integer> map) {
		List<ProductDTO> productList = sqlSession.selectList("shopSQL.scrollProductList", map);
		List<ProductImgDTO> productImgList = sqlSession.selectList("shopSQL.scrollProductImg", map);
		
		Map<String, Object> sendMap = new HashMap<String, Object>();
		sendMap.put("productList", productList);
		sendMap.put("productImgList", productImgList);
		
		return sendMap;
	}

	@Override
	public List<Market_priceDTO> getchart(int product_id) {
		return sqlSession.selectList("shopSQL.getChart",product_id);
	}

	@Override
	public Integer getbuyhistory(int product_id) {
		return sqlSession.selectOne("shopSQL.getBuyHistory",product_id);
	}

	@Override
	public Integer getsellhistory(int product_id) {
		return sqlSession.selectOne("shopSQL.getSellHistory",product_id);
	}

	@Override
	public Market_priceDTO getsigningdateprice(int product_id) {
		return sqlSession.selectOne("shopSQL.getSigningDatePrice",product_id);
	}

	@Override
	public Integer getlikeproduct(int product_id) {
		return sqlSession.selectOne("shopSQL.getLikeProduct",product_id);
	}

	@Override
	public List<Market_priceDTO> getshopDetaillist(int product_id) {
		return sqlSession.selectList("shopSQL.getshopDetaillist",product_id);
	}
	
}
