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
import product.bean.ShopDTO;
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
	
	public Sell_historyDTO getSellDTO(int sell) {
		return sqlSession.selectOne("shopSQL.getSellDTOById", sell);
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
	public List<ShopDTO> scrollProductList(Map<String, Integer> map, String sort) {
		List<ShopDTO> list = null;
		if(sort.equals("popular")) {
			list = sqlSession.selectList("shopSQL.scrollProductList", map);
		} else if (sort.equals("buy")) {
			list = sqlSession.selectList("shopSQL.scrollBuyProductList", map);
		} else if (sort.equals("sell")) {
			 sqlSession.selectList("shopSQL.scrollSellProductList", map);
		}
		return list;
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
	
	public Buy_historyDTO insertBuyPay(Buy_historyDTO buy_historyDTO) {
		sqlSession.insert("shopSQL.insertBuyPay", buy_historyDTO); 
		return sqlSession.selectOne("shopSQL.getNewBuyDTO");
	}

	@Override
	public Buy_historyDTO insertBuyPayBySellId(Map<String, Object> map) {
		sqlSession.update("shopSQL.insertBuyPayBySellId", map);
		return sqlSession.selectOne("shopSQL.getNewBuyDTO");
	}

	@Override
	public Buy_historyDTO getBuyDTOById(int bid) {
		return sqlSession.selectOne("shopSQL.getBuyDTOById", bid);
	}
}
