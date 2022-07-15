package user.dao;

import java.util.Map;

import user.bean.AddressDTO;
import user.bean.UserDTO;

public interface UserDAO {
	
	public UserDTO checkLogin(String log_email_input, String log_pwd_input);
	public void addaddressbook(AddressDTO addressDTO);
	public void updateflag(AddressDTO addressDTO);
	public String findEmailAddress(String phone);
	public UserDTO getUserInfo(String user_id);
	public int findPwCheck(Map<String, Object> map);
	public int checkNick(String nickname);
	public int signUpCheck(String hp);
	public void signUpWrite(UserDTO userDTO);
}
