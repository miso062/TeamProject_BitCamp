package user.service;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.bean.AddressDTO;
import user.bean.UserDTO;

public interface UserService {
	
	public void addaddressbook(AddressDTO addressDTO);
	public Map<String, Object> checkLogin(String log_email_input, String log_pwd_input);
	public Map<String, String> findEmailAddress(String phone);
}
