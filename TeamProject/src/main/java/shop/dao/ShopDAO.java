package shop.dao;

public interface ShopDAO {

import product.bean.ProductDTO;
import product.bean.ProductImgDTO;

public interface ShopDAO {
	public ProductImgDTO getimage(int product_id);
	public ProductDTO getproduct(int product_id);
}
