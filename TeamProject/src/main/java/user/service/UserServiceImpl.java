package user.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import user.bean.AddressDTO;
import user.bean.UserDTO;
import user.dao.UserDAO;
import user.send.SmsResponse;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@Override
	public String checkLogin(String log_email_input, String log_pwd_input) {
		String check ;
		UserDTO userDTO = userDAO.checkLogin(log_email_input);
		if(userDTO != null) {
			
			if(passwordEncoder.matches(log_pwd_input, userDTO.getUser_pwd())) {
				session.setAttribute("memId", log_email_input);
				session.setAttribute("memAuthority", userDTO.getAuthority());
				check = "true";
			} else {
				check = "false";
			}
		}else {

			check = "false";
		}
			return check;
	}
	//아이디 찾기
	@Override
	public Map<String, String> findEmailAddress(String phone) {
		Map<String, String> map = new HashMap<String, String>();
		String user_id = userDAO.findEmailAddress(phone);
		if(user_id == null) {
			map.put("success", "false");
			map.put("message", "회원정보가 없습니다.");
		} else {
			map.put("success", "true");
			map.put("message", "이메일 찾기 성공.");
			map.put("user_id", user_id);
		}
		return map;
	}
	//비밀번호 찾기
	@Override
	public Map<String, Object> findPwCheck(String hp, String user_id) {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("hp", hp);
		map.put("user_id", user_id);
		map.put("pwd", this.randomPassword(8));
		int check = userDAO.findPwCheck(map);
		map.put("check", check);

		return map;
	}
	
	public String randomPassword (int length) {
		int index = 0;
		char[] charSet = new char[] {
				'0','1','2','3','4','5','6','7','8','9'
				,'A','B','C','D','E','F','G','H','I','J','K','L','M'
				,'N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
		
		StringBuffer sb = new StringBuffer();
		for(int i=0; i<length; i++) {
			index = (int) (charSet.length * Math.random());
			sb.append(charSet[index]);
		}
		
		return sb.toString()+"a"+"!^";
	}
	
	@Override
	public void addaddressbook(AddressDTO addressDTO) {
		if(addressDTO.getFlag() == 1) {
			userDAO.updateflag(addressDTO);
		}
		userDAO.addaddressbook(addressDTO);
	}

	@Override
	public UserDTO getUserInfo(String user_id) {
		return userDAO.getUserInfo(user_id);
	}
	@Override
	public String checkNick(String nickname) {
		int a= userDAO.checkNick(nickname);
		String b;
		if(a==0) {
			b= "ok";
		}else {
			b="fail";
		}
		 
		return b;
	}
	@Override
	public String signUpWrite(UserDTO userDTO) {
		//휴대전화로 먼저 가입 여부 조회
		
		int check = userDAO.signUpCheck(userDTO.getHp());
		String check1 = null ;
		if(check==0) {
			userDAO.signUpWrite(userDTO);
		return	check1="0";
		}else {
		return check1="1";	
		}
	}
	//아이디 중복체크
	@Override
	public String checkId(String user_id) {
		String check = null ; 
		int a = userDAO.checkId(user_id);
		if(a==0) {
			check="0";
		}else {
			check="1";
		}
		return check;
	}
	
	
}
