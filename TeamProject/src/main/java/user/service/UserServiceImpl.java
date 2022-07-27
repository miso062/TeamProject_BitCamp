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
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
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
	@Autowired
	private ProductDTO productDTO;
	@Autowired
	private ProductImgDTO productImgDTO;	
	@Value("${profileImgFolder")
	private String uploadFolder;
	
	//로그인페이지
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
	
	
	//비밀번호 찾기시 랜덤 비밀번호
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

	//DB에서 기본주소 아닌 것들 호출
	@Override
	public List<AddressDTO> comeAddress() {
		String user_id = (String) session.getAttribute("memId");
		List<AddressDTO> list = userDAO.comeAddress(user_id);
		if(list != null) {
			for(AddressDTO addressDTO : list) {
				StringBuffer hp = new StringBuffer();
				hp.append(addressDTO.getHp());
				if(hp.length()==11) {
					hp.replace(4,5 ,"#");
					hp.replace(5,6 ,"#");
					hp.replace(6,7 ,"#");
					hp.replace(7,8 ,"#");
					hp.insert(3, "-");
					hp.insert(8, "-");
					addressDTO.setHp(hp.toString());
				}else {
					hp.replace(4,5 ,"#");
					hp.replace(5,6 ,"#");
					hp.replace(6,7 ,"#");
					hp.insert(3, "-");
					hp.insert(7, "-");
					
					addressDTO.setHp(hp.toString());
				}
				StringBuffer name = new StringBuffer();
				 name.append(addressDTO.getName());
				for(int i=1 ; i<addressDTO.getName().length() ; i++) {
					name.replace(i, i+1, "*");
				}
				addressDTO.setName(name.toString());
			}
		}
		return list;
	}
	//기본주소 호출
	@Override
	public AddressDTO comeAddress1() {
		String user_id = (String) session.getAttribute("memId");
		StringBuffer hp = new StringBuffer();
		AddressDTO addressDTO = userDAO.comeAddress1(user_id);
		if(addressDTO !=null) {
			hp.append(addressDTO.getHp());
			if(hp.length()==11) {
				hp.replace(4,5 ,"#");
				hp.replace(5,6 ,"#");
				hp.replace(6,7 ,"#");
				hp.replace(7,8 ,"#");
				hp.insert(3, "-");
				hp.insert(8, "-");
				addressDTO.setHp(hp.toString());
			}else {
				hp.replace(4,5 ,"#");
				hp.replace(5,6 ,"#");
				hp.replace(6,7 ,"#");
				hp.insert(3, "-");
				hp.insert(7, "-");
				
				addressDTO.setHp(hp.toString());
			}
			StringBuffer name = new StringBuffer();
			 name.append(addressDTO.getName());
			for(int i=1 ; i<addressDTO.getName().length() ; i++) {
				name.replace(i, i+1, "*");
			}
			addressDTO.setName(name.toString());
		}
		
		return addressDTO;
	}
	//주소 삭제
	@Override
	public void myAddressDelete(String address_id) {
		userDAO.myAddressDelete(address_id);		
	}
	
	//주소록
	@Override
	public void addAddressBook(AddressDTO addressDTO) {
		String user_id = (String) session.getAttribute("memId");
		addressDTO.setUser_id(user_id);
		AddressDTO defalutAddress = shopDAO.getDefalutAddress(user_id);
		//주소등록을 할 때 기본 주소로 헀을 때
		if(addressDTO.getFlag() == 1) {
			userDAO.updateflag(addressDTO);
		}
		//  기본 배송지가 없다면 
		else if(defalutAddress == null) {
			userDAO.updateflag(addressDTO);
			addressDTO.setFlag(1);
		}
		userDAO.addAddressBook(addressDTO);
	}
	
	//내 관심상품
	@Override
	public void bookMarkInsert(Map<String, String> map) {
		String id = (String) session.getAttribute("memId");
	
		map.put("id", id);
		
		userDAO.bookMarkInsert(map);
	}
	
	//관심상품 삭제
	@Override
	public void bookMarkDelete(int product_id) {
		Map<String, Object> map = new HashMap<String, Object>();

		map.put("product_id", product_id);
		map.put("user_id", (String) session.getAttribute("memId"));

		userDAO.bookMarkDelete(map);
	}
	
	//관심상품 가져오기
	@Override
	public Map<String, Object> bookMarkGet() {
		String id = (String) session.getAttribute("memId");
	 	List<LikeProDTO> list= userDAO.bookMarkGet(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
	 	
		return map; 
	}
	
	//닉네임 중복체크
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
	public void deleteImg(String user_id) {
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

	public List<Buy_historyDTO> getBuyHistoryList(String user_id) {
	  	return userDAO.getBuyHistoryList(user_id);
	}
  
	@Override
	public List<Sell_historyDTO> getSellHistoryList(String user_id) {
		return userDAO.getSellHistoryList(user_id);
	}
	
	@Override
	public ProductImgDTO getProductImg(int product_id) {
		return userDAO.getProductImg(product_id);
	}

	@Override
	public Buy_historyDTO getBuyItem(String buy_id) {
		return userDAO.getBuyItem(buy_id);
	}
	@Override
	public Sell_historyDTO getSellItem(String sell_id) {
		return userDAO.getSellItem(sell_id);
	}
	
	@Override
	public void delBuyHistory(int buy_id) {
		userDAO.delBuyHistory(buy_id);
	}

	@Override
	public void delSellHistory(int sell_id) {
		userDAO.delSellHistory(sell_id);
	}
	//마이페이지
	//-----------------------------------------------------------
	
	
	//네이버 회원 조회
	@Override
	public AddressDTO getAddress(Integer address_id) {
		return userDAO.getAddress(address_id);
	}
	
	@Override
	public Map<String, Object> getProductInfo(int product_id) {
		return userDAO.getProductInfo(product_id);
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
	
	//주소록 Detail
	@Override
	public String bookMarkGetDetail(String product_id) {
		String user_id = (String) session.getAttribute("memId");
		Map<String, String> map = new HashMap<String, String>();
		map.put("user_id",user_id);
		map.put("product_id", product_id);
		int a = userDAO.bookMarkGetDetail(map);
		String check ;
		if(a==0) {
			check = "no";
		}else {
			check= "yes";
		}
		
		return check;
  }
	
	
	public String checkPwd(String pwd) {
		String check ;
		String user_id = (String) session.getAttribute("memId");
		UserDTO userDTO = userDAO.checkrecheckpwd(user_id);
		if(userDTO.getUser_pwd().equals(pwd)) {
				check = "non_exist";
		}else if(passwordEncoder.matches(pwd, userDTO.getUser_pwd())) {
				check = "non_exist";
		}else {
				check = "exist";
		}return check;
	}

	@Override
	public void userdelete(HttpSession httpsession) {
		String user_id = (String) session.getAttribute("memId");
		userDAO.userdelete(user_id);
  }

  @Override
  public List<AddressDTO> getAddress(String user_id) {
		return userDAO.getAddress(user_id);
	}
  
  //메인 마이페이지 관심상품 보여주기
	@Override
	public Map<String, Object> getLikeProductList() {
		String id = (String) session.getAttribute("memId"); //({1104},{1204},{1504})
		//여기서 내가 좋아효한 product_id 를 가져온다
	 	List<LikeProDTO> list= userDAO.getLikeProductList(id);
	 	List<ProductDTO> list2 = null;
	 	List<ProductImgDTO> list3 = null;
	 	for(LikeProDTO likeProDTO : list) {
	 		likeProDTO.getProduct_id();//product_id값을 가지고온거
	 		list2 = userDAO.getLikeProducts(likeProDTO.getProduct_id());
	 		list3 = userDAO.getProductAll(likeProDTO.getProduct_id());
	 		System.out.println(list2);
	 		System.out.println(list3);
	 	}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list2",list2);
		map.put("list3",list3);
		return map;
		}

	@Override
	public void addAddressModify(AddressDTO addressDTO) {
		if(addressDTO.getFlag() == 1) {
			userDAO.updateflag(addressDTO);
		}
		userDAO.addAddressModify(addressDTO);		
	}
	//기본배송지로 설정
	@Override
	public void changeFlag(String address_id) {
		System.out.println("22");
		userDAO.changeFlag(address_id);		
	}
	//기존 기본배송지 내리기
	@Override
	public void changeFlag1(String address_id) {
		String user_id = String.valueOf(session.getAttribute("memId"));
		System.out.println(user_id);
		userDAO.changeFlag1(user_id);	
	}


	
	
	}
