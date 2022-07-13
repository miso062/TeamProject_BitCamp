package user.service;

import javax.servlet.http.HttpSession;

import user.bean.AddressDTO;
import user.bean.UserDTO;

public interface UserService {
	
	public String loginCheck(UserDTO userDTO, HttpSession session);
	public void logout(HttpSession session);
	public void addaddressbook(AddressDTO addressDTO);
}
