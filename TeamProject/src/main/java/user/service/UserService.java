package user.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

import user.bean.UserDTO;

public interface UserService {
	
	Map<String, Object> checkLogin(String log_email_input, String log_pwd_input);
	
}
