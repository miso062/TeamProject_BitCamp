package user.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.firebase.FirebaseException;
import com.google.firebase.auth.FirebaseAuthException;

import product.bean.Buy_historyDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import test.firebase.FireStorage;
import user.bean.AddressDTO;
import user.bean.UserDTO;
import user.send.Request;
import user.send.SmsResponse;
import user.send.SmsService;
import user.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	SmsService smsService;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	@GetMapping(value="login")
	public String login(Model model) {
		return "/user/login";
	}

	@PostMapping(value="checkLogin")
	@ResponseBody
	public String checkLogin(@RequestParam String log_email_input, String log_pwd_input, HttpSession httpSession) {
		String check = userService.checkLogin(log_email_input, log_pwd_input);		
		return check;
	}
	
//	@PostMapping(value="checkLogin")
//	@ResponseBody
//	public Map<String, Object> checkLogin(@RequestParam String log_email_input, String log_pwd_input, HttpSession httpSession) {
//		Map<String, Object> map = userService.checkLogin(log_email_input, log_pwd_input);
//		return map;
//	}

	@PostMapping(value="checkLogout")
	@ResponseBody
	public void checkLogout(HttpSession session) {
		session.invalidate();
	}
	
	@GetMapping(value="signUp")
	public String signUp() {
		return "user/signUp";
	}
	
	@RequestMapping(value="/my")
	public String myPage(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("nav", "/WEB-INF/user/myPage/myPageNav.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		this.test();
		return "/user/myPage/myPage";
	}
	
	@GetMapping(value="myPage")
	public String myPageMain(Model model, HttpSession session) {
		String user_id = (String) session.getAttribute("memId");
		UserDTO userDTO = userService.getUserInfo(user_id);
		model.addAttribute("userDTO", userDTO);
		//System.out.println(model);
		model.addAttribute("container", "/WEB-INF/user/myPage/myPageMain.jsp");
		return "forward:/user/my";
	}
	
	@PostMapping(value="getBuyHistory")
	@ResponseBody
	public Map<String, Object> getBuyHistory(@RequestParam String user_id){
		//List<Buy_historyDTO> buy_historyList =  userService.getBuyHistory(user_id);
		List<Buy_historyDTO> buy_historyList =  userService.getBuyHistory("jijiya@hotmail.net");
		Map<String, Object> buy_map = new HashMap<String, Object>();
		buy_map.put("buy_historyList", buy_historyList);

		List<ProductImgDTO> productImgList = new ArrayList<ProductImgDTO>();

		for(int i=0; i< buy_historyList.size(); i++) {//1 2 3 4 5 7 8 9
		   ProductImgDTO productImgDTO = userService.getProductImg(buy_historyList.get(i).getProduct_id());
		   productImgList.add(productImgDTO);
		}
		buy_map.put("productImgList", productImgList);
		//System.out.println(buy_map);
		return buy_map;
	}
	
	@PostMapping(value="getSellHistory")
	@ResponseBody
	public Map<String, Object> getSellHistory(@RequestParam String user_id) { 
		//List<Buy_historyDTO> buy_historyList =  userService.getBuyHistory(user_id);
		List<Sell_historyDTO> sell_historyList =  userService.getSellHistory("jijiya@hotmail.net");
		Map<String, Object> sell_map = new HashMap<String, Object>();
		sell_map.put("sell_historyList", sell_historyList);

		List<ProductImgDTO> productImgList = new ArrayList<ProductImgDTO>();

		for(int i=0; i< sell_historyList.size(); i++) {//1 2 3 4 5 7 8 9
		   ProductImgDTO productImgDTO = userService.getProductImg(sell_historyList.get(i).getProduct_id());
		   productImgList.add(productImgDTO);
		}
		sell_map.put("productImgList", productImgList);
		//System.out.println(sell_map);
		return sell_map;
	}
	
	@PostMapping(value="getBuyHistoryList")
	@ResponseBody
	public Map<String, Object> getBuyHistoryList(HttpSession session){
		String user_id = (String) session.getAttribute("memId");
		List<Buy_historyDTO> buy_historyList =  userService.getBuyHistoryList(user_id);
		Map<String, Object> buy_map = new HashMap<String, Object>();
		buy_map.put("buy_historyList", buy_historyList);

		List<ProductImgDTO> productImgList = new ArrayList<ProductImgDTO>();

		for(int i=0; i< buy_historyList.size(); i++) {//1 2 3 4 5 7 8 9
		   ProductImgDTO productImgDTO = userService.getProductImg(buy_historyList.get(i).getProduct_id());
		   productImgList.add(productImgDTO);
		}
		buy_map.put("productImgList", productImgList);
		//System.out.println(buy_map);
		return buy_map;
	}
	
	@PostMapping(value="getSellHistoryList")
	@ResponseBody
	public Map<String, Object> getSellHistoryList(HttpSession session) { 
		String user_id = (String) session.getAttribute("memId");
		List<Sell_historyDTO> sell_historyList =  userService.getSellHistoryList(user_id);
		Map<String, Object> sell_map = new HashMap<String, Object>();
		sell_map.put("sell_historyList", sell_historyList);

		List<ProductImgDTO> productImgList = new ArrayList<ProductImgDTO>();

		for(int i=0; i< sell_historyList.size(); i++) {//1 2 3 4 5 7 8 9
		   ProductImgDTO productImgDTO = userService.getProductImg(sell_historyList.get(i).getProduct_id());
		   productImgList.add(productImgDTO);
		}
		sell_map.put("productImgList", productImgList);
		//System.out.println(sell_map);
		return sell_map;
	}
	
	@GetMapping(value="myPageEdit")
	public String myPageEdit(Model model, HttpSession session) {
		String user_id = (String) session.getAttribute("memId");
		UserDTO userDTO = userService.getUserInfo(user_id);
		
		model.addAttribute("userDTO", userDTO);
		model.addAttribute("container", "/WEB-INF/user/myPage/myPageEdit.jsp");
		return "forward:/user/my";
	}
	
	@PostMapping(value="update")
	@ResponseBody
	public void updateUser(@ModelAttribute UserDTO userDTO, HttpSession session) {
		System.out.println(userDTO);
		userDTO.setUser_pwd(passwordEncoder.encode(userDTO.getUser_pwd()));
		userService.update(userDTO, session);
	}
	
	@PostMapping(value="updateImg")
	@ResponseBody
	public void updateImg(@RequestParam MultipartFile file, HttpSession session) throws FirebaseException, IOException {
		System.out.println(file);
		String user_id = (String) session.getAttribute("memId");
		FireStorage.initialize();
		FireStorage.uploadFiles(file, user_id);
		userService.updateImg(user_id);
	}
	
	@PostMapping(value="deleteImg")
	@ResponseBody
	public void deleteImg(@RequestParam MultipartFile img, HttpSession session) {
		String user_id = (String) session.getAttribute("memId");
		userService.deleteImg(user_id);
	}
	
	@GetMapping(value="buyHistory")
	public String buyHistory(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/buyHistory.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="buyHistoryDetail")
	public String buyHistoryDetail(Model model, @RequestParam String buy_id) {
		Buy_historyDTO buy_historyDTO = userService.getBuyItem(buy_id);
		Integer product_id = buy_historyDTO.getProduct_id();
		Integer address_id = buy_historyDTO.getAddress_id();
		ProductImgDTO productImgDTO = userService.getProductImg(product_id);
		AddressDTO addressDTO = userService.getAddress(address_id);
		model.addAttribute("buy_historyDTO",buy_historyDTO);
		model.addAttribute("productImgDTO",productImgDTO);
		model.addAttribute("addressDTO", addressDTO);
		model.addAttribute("container", "/WEB-INF/user/myPage/buyHistory_detail.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="sellHistoryDetail")
	public String sellHistoryDetail(Model model, @RequestParam String sell_id) {
		Sell_historyDTO sell_historyDTO = userService.getSellItem(sell_id);
		Integer address_id = sell_historyDTO.getAddress_id();
		Integer product_id = sell_historyDTO.getProduct_id();
		
		ProductImgDTO productImgDTO = userService.getProductImg(product_id);
		AddressDTO addressDTO = userService.getAddress(address_id);
		model.addAttribute("productImgDTO",productImgDTO);
		model.addAttribute("addressDTO", addressDTO);
		model.addAttribute("sell_historyDTO", sell_historyDTO);
		model.addAttribute("container", "/WEB-INF/user/myPage/sellHistory_detail.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="sellHistory")
	public String sellHistory(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/sellHistory.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="likePro")
	public String likePro(Model model) {
		model.addAttribute("container", "/WEB-INF/user/myPage/likePro.jsp");
		return "forward:/user/my";
	}
	
	@GetMapping(value="addressbook")
	public String addressbook(Model model)  {
		model.addAttribute("container","/WEB-INF/user/myPage/addressbook.jsp");
		return "forward:/user/my";
	}
  
	@PostMapping(value="addAddressBook")
	@ResponseBody
	public void addAddressBook(@ModelAttribute AddressDTO addressDTO) {
		userService.addAddressBook(addressDTO);
  }

	@GetMapping(value="findEmailMain")
	public String findEmailMain(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/user/findEmailMain";
	}
	
	@GetMapping(value="findEmail")
	public String findEmail(Model model) {
		model.addAttribute("container", "/WEB-INF/user/findEmail.jsp");
		return "forward:/user/findEmailMain";
	}
	
	@PostMapping(value="findEmaiAddress")
	@ResponseBody
	public Map<String, String> findEmailAddress(@RequestParam String phone) {
		Map<String, String> map = userService.findEmailAddress(phone);
		return map;                            
	}
	
	@GetMapping(value="findEmailResult")
	public String findEmailResult(Model model, @RequestParam String email) {
		int atPoint = email.indexOf("@");
		email = email.substring(0, 1) +
				email.substring(1, atPoint-1).replaceAll(".", "*") + 
				email.substring(atPoint-1);
		
		model.addAttribute("container", "/WEB-INF/user/findEmailResult.jsp");
		model.addAttribute("email", email);
		return "forward:/user/findEmailMain";
	}
	
	@GetMapping(value="findPWDMain")
	public String findPWDMain(Model model) {
		model.addAttribute("head", "/WEB-INF/main/header.jsp");
		model.addAttribute("footer", "/WEB-INF/main/footer.jsp");
		return "/user/findPWDMain";
	}
	
	@GetMapping(value="findPWD")
	public String findPWD(Model model) {
		model.addAttribute("container", "/WEB-INF/user/findPWD.jsp");
		return "forward:/user/findPWDMain";
	}
	
	
	@PostMapping(value="findPwCheck")
	@ResponseBody
	public Map<String, Object> findPwCheck(@RequestParam String phone, String user_id, HttpSession HttpSession){
		Map<String, Object> map = userService.findPwCheck(phone, user_id);
		return map;
	}
	
	public void test() {
		String test = "hihih";
		String securityTest = passwordEncoder.encode(test);
		boolean encodeTest = passwordEncoder.matches(test, "hihi");
		
		System.out.println(securityTest + " | " + encodeTest);
	}
	
	//아이디 중복체크
	@PostMapping(value="checkId")
	@ResponseBody
	public String checkId(@RequestParam String user_id) {
		return userService.checkId(user_id);
	}
	
	//회원가입 별명 유효성 검사
	@PostMapping(value="checkNick")
	@ResponseBody
	public String checkNick(@RequestParam String nickname) {
		
		return userService.checkNick(nickname);
	}

	//sms 인증번호 보내기
	@PostMapping(value="sms-sends") 
	@ResponseBody
	public ResponseEntity<SmsResponse> sms_sends(@ModelAttribute Request request) throws Exception {
		System.out.println(request.getRecipientPhoneNumber());
		SmsResponse data = smsService.sendSms(request.getRecipientPhoneNumber(), request.getContent());
        return ResponseEntity.ok().body(data);
		
	}

	//회원가입 창에서 받은 정보 DB로 전달
	@PostMapping(value="signUpWrite")
	@ResponseBody
	public String signUpWrite(@ModelAttribute UserDTO userDTO) {
		//System.out.println(userDTO);
		userDTO.setUser_pwd(passwordEncoder.encode(userDTO.getUser_pwd()));
		String check = userService.signUpWrite(userDTO);
		return check;
	}
	
	//네이버 회원가입 및 로그인
	@PostMapping(value="signUpCheckNaver")
	@ResponseBody
	public String signUpCheckNaver(@ModelAttribute UserDTO userDTO) {
		return userService.signUpCheckNaver(userDTO);
	}
	
	//카카오 아이디 들고 회원조회
	@PostMapping(value="checkKakao")
	@ResponseBody
	public String checkKakao(@RequestParam String user_id) {
		String check= userService.checkKakao(user_id);
		
		return check;
	}
	@GetMapping(value="signUpKakao")
	public String signUpKakao() {
		return "/user/signUpKakao";
	}

	//찜하기
	@PostMapping(value="bookMarkInsert")
	@ResponseBody
	public void bookMarkInsert(@RequestParam Map<String, String> map) {
		System.out.println(map);
		userService.bookMarkInsert(map);
	}
	
	@PostMapping(value="bookMarkDelete")
	@ResponseBody
	public void bookMarkDelete(@RequestParam int product_id) {
		System.out.println("delete ="+product_id);
		userService.bookMarkDelete(product_id);
	}
	//메인 화면 찜하기 불러오기
	@PostMapping(value="bookMarkGet")
	@ResponseBody
	public Map<String, Object> bookMarkGet(){
		Map<String, Object> map = userService.bookMarkGet();
		return map; 
	}

	//상품디테일페이지 찜하기 불러오기
	@PostMapping(value="bookMarkGetDetail")
	@ResponseBody
	public String bookMarkGetDetail(@RequestParam String product_id) {
		String check=userService.bookMarkGetDetail(product_id);
    return check;
  }

	@PostMapping(value="pwdcheck")
	@ResponseBody
	public String checkpwd(@RequestParam String pwd, HttpSession httpSession) {
		String check = userService.checkPwd(pwd);		
		return check;
	}
}
