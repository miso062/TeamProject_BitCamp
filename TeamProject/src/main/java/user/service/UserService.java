package user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;


import product.bean.Buy_historyDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import user.bean.AddressDTO;
import user.bean.LikeProDTO;
import user.bean.UserDTO;

public interface UserService {
	
	public void addAddressBook(AddressDTO addressDTO);
	public String checkLogin(String log_email_input, String log_pwd_input);
	public Map<String, String> findEmailAddress(String phone);
	public UserDTO getUserInfo(String user_id);
	public Map<String, Object> findPwCheck(String hp, String user_id);
	public void bookMarkInsert(Map<String, String> map);
	public void bookMarkDelete(int product_id);
	public Map<String, Object>bookMarkGet();
	public String checkNick(String nickname);
	public String signUpWrite(UserDTO userDTO);
	public void update(UserDTO userDTO, HttpSession session);
	public String checkId(String user_id);
	public String signUpCheckNaver(UserDTO userDTO);
	public void deleteImg(String user_id);
	public void updateImg(String fileName);
	public List<Buy_historyDTO> getBuyHistoryList(String string);
	public List<Sell_historyDTO> getSellHistoryList(String string);
	public AddressDTO getAddress(Integer address_id);
	public Buy_historyDTO getBuyItem(String buy_id);
	public Sell_historyDTO getSellItem(String sell_id);
	public ProductImgDTO getProductImg(int product_id);
	public Map<String, Object> getProductInfo(int product_id);
	public void delBuyHistory(int buy_id);
	public void delSellHistory(int sell_id);
	public String checkKakao(String user_id);
	public String bookMarkGetDetail(String product_id);
	public String checkPwd(String pwd);
	public void userdelete(HttpSession httpsession);
	public List<AddressDTO> getAddress(String user_id);
	public Map<String, Object> getLikeProductList();
	public List<AddressDTO> comeAddress();
	public AddressDTO comeAddress1();
    public void myAddressDelete(String address_id);
    public void addAddressModify(AddressDTO addressDTO);
    public void changeFlag(String address_id);
	public void changeFlag1(String address_id);
}
