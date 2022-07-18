package user.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;


import product.bean.Buy_historyDTO;
import product.bean.Sell_historyDTO;
import user.bean.AddressDTO;
import user.bean.UserDTO;

public interface UserService {
	
	public void addaddressbook(AddressDTO addressDTO);
	public String checkLogin(String log_email_input, String log_pwd_input);
	public Map<String, String> findEmailAddress(String phone);
	public UserDTO getUserInfo(String user_id);
	public Map<String, Object> findPwCheck(String hp, String user_id);
	public void bookMarkInsert(Map<String, String> map);
	public void bookMarkDelete(int product_id);
	public String checkNick(String nickname);
	public String signUpWrite(UserDTO userDTO);
	public void update(UserDTO userDTO, HttpSession session);
	public String checkId(String user_id);
	//public Map<String, String> bookMarkGet(int product_id);
	public String signUpCheckNaver(UserDTO userDTO);
	public void deleteImg();
	public void updateImg(String fileName);
	public List<Buy_historyDTO> getBuyHistory(String user_id);
	public List<Sell_historyDTO> getSellHistory(String user_id);
}
