package user.dao;


import java.util.Map;

import user.bean.UserDTO;

public interface UserDAO {
	
	public UserDTO checkLogin(String log_email_input, String log_pwd_input);

	public String findEmailAddress(String phone);

	
}
