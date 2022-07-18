package user.service;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

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

	@Value("${profileImgFolder")
	private String uploadFolder;

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
	@Override
	public void update(UserDTO userDTO, @RequestParam MultipartFile multipartFile, HttpSession session) {
		
		//실제폴더
		String imageFilePath = session.getServletContext().getRealPath("/WEB-INF/storage");
		String imageFileName = userDTO.getUser_id() + "_" + multipartFile.getOriginalFilename();
		
		if(multipartFile.getSize() !=0 ) { //파일이 업로드 되었는지 확인
			try {
				if(userDTO.getProfile_img() != null) { //이미프로필 사진이 있는 경우
					File file = new File(uploadFolder + userDTO.getProfile_img());
					file.delete();
					multipartFile.transferTo(file);
				}
				File file = new File(imageFilePath, imageFileName);
			}catch(Exception e) {
				e.printStackTrace();
			}
			userDTO.setProfile_img(imageFileName);
		}
		userDAO.update(userDTO);
		session.invalidate();
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
	@Override
	public String signUpCheckNaver(UserDTO userDTO) {
		String check;
		//휴대전화로 동일가입여부 조회
		String hp = userDTO.getHp();
		int a = userDAO.signUpCheck(hp);
		if(a==0) {
			//다시 휴대전화와 가입타입을 네이버로 해 다시 한다.
			int b = userDAO.checkNaver(hp);
			if
			String user_id = userDTO.getUser_id();
				
		}else {
			check="fail";
		}
		return check;
	}
}
