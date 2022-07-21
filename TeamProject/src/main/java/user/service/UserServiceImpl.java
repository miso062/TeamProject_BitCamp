package user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import product.bean.Buy_historyDTO;
import product.bean.Sell_historyDTO;
import shop.dao.ShopDAO;
import user.bean.AddressDTO;
import user.bean.LikeProDTO;
import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private ShopDAO shopDAO;
	@Autowired
	private HttpSession session;
	@Autowired
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@Value("${profileImgFolder")
	private String uploadFolder;

	@Override
	public String checkLogin(String log_email_input, String log_pwd_input) {
		String check ;
		UserDTO userDTO = userDAO.checkLogin(log_email_input);
		if(userDTO != null) {
			if(log_pwd_input.equals(userDTO.getUser_pwd())) {
				session.setAttribute("memId", log_email_input);
				session.setAttribute("memAuthority", userDTO.getAuthority());
				check = "true";
			}
			else {
				if(passwordEncoder.matches(log_pwd_input, userDTO.getUser_pwd())) {
					session.setAttribute("memId", log_email_input);
					session.setAttribute("memAuthority", userDTO.getAuthority());
					check = "true";
				}
				else {
					check = "false";
				}
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
	public void addAddressBook(AddressDTO addressDTO) {
		String user_id = (String) session.getAttribute("memId");
		addressDTO.setUser_id(user_id);
		AddressDTO defalutAddress = shopDAO.getDefalutAddress(user_id);
		
		if(addressDTO.getFlag() == 1) {
			userDAO.updateflag(addressDTO);
		}
		else if(defalutAddress == null) {
			userDAO.updateflag(addressDTO);
			addressDTO.setFlag(1);
		}
		userDAO.addAddressBook(addressDTO);
	}
  
	@Override
	public void bookMarkInsert(Map<String, String> map) {
		String id = (String) session.getAttribute("memId");
	
		map.put("id", id);
		
		userDAO.bookMarkInsert(map);
	}
  
	@Override
	public void bookMarkDelete(int product_id) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("product_id", product_id);
		map.put("user_id", (String) session.getAttribute("memId"));

		userDAO.bookMarkDelete(map);
	}
  
	@Override
	public Map<String, Object> bookMarkGet() {
		String id = (String) session.getAttribute("memId");
	 	List<LikeProDTO> list= userDAO.bookMarkGet(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
	 	
		return map; 
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
	
	/* 회원정보수정 MyPageEdit */
	@Override
	public UserDTO getUserInfo(String user_id) {
		return userDAO.getUserInfo(user_id);
	}
	
	@Override
	public void update(UserDTO userDTO, HttpSession session) {
		userDAO.update(userDTO);
		session.invalidate();
	}
	
	@Override
	public void updateImg(String fileName) {
		
		Map<String, String> map = new HashMap<String, String>();
		
		String user_id = (String) session.getAttribute("memId");
		map.put("user_id", user_id);
		map.put("profile_img", fileName);
		userDAO.updateImg(map);
	}

	@Override
	public void deleteImg() {
		String user_id = (String) session.getAttribute("memId");
		userDAO.deleteImg(user_id);
	}

	/* 마이페이지 메인 */
	@Override
	public List<Buy_historyDTO> getBuyHistory(String user_id) {
	  	return userDAO.getBuyHistory(user_id);
	}
  
	@Override
	public List<Sell_historyDTO> getSellHistory(String user_id) {
		return userDAO.getSellHistory(user_id);
	}

	@Override
	public String signUpCheckNaver(UserDTO userDTO) {
		String check;
		//휴대전화로 동일가입여부 조회
		String hp = userDTO.getHp();
		int a = userDAO.signUpCheck(hp);
		if(a==0) {
			//아이디로 다시 한 번 조회 해준다.
			String user_id = userDTO.getUser_id(); 
			int b = userDAO.checkId(user_id);
			if(b==0) {
				//회원가입 한 적이 없으므로 db에 넣어주자
				userDAO.SignUpNaver(userDTO);
				//로그인 해준다.
				UserDTO userDTO1 = userDAO.loginNaver(user_id);
				session.setAttribute("memId", userDTO.getUser_id());
				System.out.println(session.getAttribute("memId"));
				session.setAttribute("memAuthority", userDTO.getAuthority());
				check="success";
			}
			else {
				check ="fail";
			}
		}else {
			//다시 hp, 네이버 여부로 해 조회
			int c = userDAO.checkNaver(hp);
			if(c==0) {
				check = "fail";
			}else {
				String user_id = userDTO.getUser_id(); 
				UserDTO userDTO1 = userDAO.loginNaver(user_id);
				session.setAttribute("memId", userDTO.getUser_id());
				session.setAttribute("memAuthority", userDTO.getAuthority());
				check="success";
			}
		}
		return check;
  }	
	//카카오 회원 조회
	@Override
	public String checkKakao(String user_id) {
		String check ;
		int a = userDAO.checkId(user_id);
		if(a==0) {
			userDAO.writeKakao(user_id);
			UserDTO userDTO = userDAO.loginNaver(user_id);
			session.setAttribute("memId", userDTO.getUser_id());
			session.setAttribute("memAuthority", userDTO.getAuthority());
			
			check = "success";
			
			
		}else {
			//카카오도 들고 조회
			int b = userDAO.checkIdKakao(user_id);
			if(b==0) {
				check ="fail";
			}else {
				UserDTO userDTO = userDAO.loginNaver(user_id);
				session.setAttribute("memId", userDTO.getUser_id());
				session.setAttribute("memAuthority", userDTO.getAuthority());
				
				check = "success";
			}
		}
		return check;
	}

}
