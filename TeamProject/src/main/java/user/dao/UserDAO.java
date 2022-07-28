package user.dao;

import java.util.List;
import java.util.Map;

import product.bean.Buy_historyDTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import user.bean.AddressDTO;
import user.bean.LikeProDTO;
import user.bean.UserDTO;

public interface UserDAO {
	
	public UserDTO checkLogin(String log_email_input);
	public void addAddressBook(AddressDTO addressDTO);
	public void updateflag(AddressDTO addressDTO);
	public String findEmailAddress(String phone);
	public UserDTO getUserInfo(String user_id);
	public int findPwCheck(Map<String, Object> map);
	public void bookMarkInsert(Map<String, String> map);
	public void bookMarkDelete(Map<String, Object> map);
	public List<LikeProDTO> bookMarkGet(String id);
	public int checkNick(String nickname);
	public int signUpCheck(String hp);
	public void signUpWrite(UserDTO userDTO);
	public void update(UserDTO userDTO);
	public int checkId(String user_id);
	public int checkNaver(String hp);
	public void updateImg(Map<String, String> map);
	public void deleteImg(String user_id);
	public List<Buy_historyDTO> getBuyHistoryList(String user_id);
	public List<Sell_historyDTO> getSellHistoryList(String user_id);
	public Map<String, Object> getProductInfo(int product_id);
	public Buy_historyDTO getBuyItem(String buy_id);
	public Sell_historyDTO getSellItem(String sell_id);
	public AddressDTO getAddress(Integer address_id);
	public void delSellHistory(int sell_id);
	public void delBuyHistory(int buy_id);
	public ProductImgDTO getProductImg(int product_id);
	public void SignUpNaver(UserDTO userDTO);
	public UserDTO loginNaver(String user_id);
	public int checkIdKakao(String user_id);
	public void writeKakao(String user_id);
	public int bookMarkGetDetail(Map<String, String> map);
	public UserDTO checkrecheckpwd(String user_id);
	public void userdelete(String user_id);
	public List<AddressDTO> getAddress(String user_id);
	public List<LikeProDTO> getLikeProductList(String id);
	public ProductDTO getLikeProducts(int product_id);
	public ProductImgDTO getProductAll(int product_id);
	public List<AddressDTO> comeAddress(String user_id);
	public AddressDTO comeAddress1(String user_id);
	public void myAddressDelete(String address_id);
	public void addAddressModify(AddressDTO addressDTO);
	public void changeFlag(String address_id);
	public void changeFlag1(String user_id);
	public void likeProDelete(Map<String, String> map);
	public Integer getAuthor(String user_id);
}
