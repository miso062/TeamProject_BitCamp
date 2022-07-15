package user.service;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import user.bean.AddressDTO;
import user.bean.UserDTO;
import user.send.SmsResponse;

public interface UserService {
	
	public void addaddressbook(AddressDTO addressDTO);
	public Map<String, Object> checkLogin(String log_email_input, String log_pwd_input);
	public Map<String, String> findEmailAddress(String phone);
	public UserDTO getUserInfo(String user_id);
	public Map<String, Object> findPwCheck(String hp, String user_id);
  public String checkNick(String nickname);
	public String signUpWrite(UserDTO userDTO);
	public void update(UserDTO userDTO, MultipartFile multipartFile, HttpSession session);
	public String checkId(String user_id);
}
