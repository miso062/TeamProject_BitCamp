package user.service;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.bean.UserDTO;

public interface UserService {
	
	public Map<String, Object> checkLogin(String log_email_input, String log_pwd_input);

	public Map<String, String> findEmailAddress(String phone);

	public Map<String, Object> findPwCheck(String hp, String user_id);


	
	
}
