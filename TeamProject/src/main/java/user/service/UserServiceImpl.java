package user.service;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.SessionAttribute;

import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private HttpSession session;

	@Override
	public Map<String, Object> checkLogin(String log_email_input, String log_pwd_input) {
		
		UserDTO userDTO = userDAO.checkLogin(log_email_input, log_pwd_input);
		//id,pwd 맞는지 (user정보 포함) ->성공 ?
		//pwd가 맞지 않을떄?
		Map<String, Object> map = new HashMap<String, Object>();
		//System.out.println(userDTO);
		if(userDTO == null) {
			map.put("success", "false");
			map.put("message", "회원정보가 없습니다.");
			
		} else {
			map.put("success", "true");
			map.put("message", "로그인 되었습니다.");
			map.put("userDTO", userDTO);
			session.setAttribute("memId", userDTO.getUser_id());
			session.setAttribute("memAuthority", userDTO.getAuthority());
			System.out.println(session.getAttribute("memId"));
			
		}
		
		return map;
	}

	


}