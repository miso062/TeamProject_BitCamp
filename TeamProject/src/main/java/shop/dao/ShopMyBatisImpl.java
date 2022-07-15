package shop.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import product.bean.ProductImgDTO;

@Repository
@Transactional
public class ShopMyBatisImpl implements ShopDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ProductImgDTO getimage(int product_id) {
		ProductImgDTO productImgDTO = sqlSession.selectOne("shopSQL.getimage",product_id);
		return productImgDTO;
	}
	
	

}