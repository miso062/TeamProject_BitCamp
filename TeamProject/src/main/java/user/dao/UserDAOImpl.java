package user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import product.bean.Buy_historyDTO;
import product.bean.ProductImgDTO;
import product.bean.Sell_historyDTO;
import user.bean.AddressDTO;
import user.bean.LikeProDTO;
import user.bean.UserDTO;


@Repository 
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserDTO checkLogin(String log_email_input) {
		return  sqlSession.selectOne("userSQL.checkLogin", log_email_input);
	}

	@Override
	public void addAddressBook(AddressDTO addressDTO) {
		sqlSession.insert("userSQL.addAddress",addressDTO);
	}

	@Override
	public void updateflag(AddressDTO addressDTO) {
		sqlSession.update("userSQL.updateflag",addressDTO);
	}

	@Override
	public String findEmailAddress(String phone) {
		String user_id = sqlSession.selectOne("userSQL.findEmailAddress", phone);
		System.out.println(user_id);
		return user_id;
	}

	@Override
	public UserDTO getUserInfo(String user_id) {
		return sqlSession.selectOne("userSQL.getUserInfo", user_id);
  }

	public int findPwCheck(Map<String, Object> map) {
		int check = sqlSession.selectOne("userSQL.isExistUser", map);
		if(check == 1) {
			sqlSession.update("userSQL.findPwCheck", map);			
		}
		return check;
	}

	@Override

	public void bookMarkInsert(Map<String, String> map) {
		sqlSession.insert("userSQL.bookMarkInsert", map);
	}

	@Override
	public void bookMarkDelete(Map<String, Object> map) {
		sqlSession.delete("userSQL.bookMarkDelete", map);
	}
	
	@Override
	public List<LikeProDTO> bookMarkGet(String id) {
		return sqlSession.selectList("userSQL.bookMarkGet", id);
	}
  
	public int checkNick(String nickname) {
		int nickcount = sqlSession.selectOne("userSQL.checkNick", nickname);
		return nickcount;
	}
  
	//휴대전화로 가입 여부 조회
	@Override
	public int signUpCheck(String hp) {

		return sqlSession.selectOne("userSQL.signUpCheck", hp);
		
	}

	@Override
	public void signUpWrite(UserDTO userDTO) {
		sqlSession.insert("userSQL.signUpWrite", userDTO);
	}

	public int checkId(String user_id) {
		return sqlSession.selectOne("userSQL.checkId", user_id);
	}
	
	@Override
	public void update(UserDTO userDTO) {
		sqlSession.update("userSQL.update", userDTO);
  }
  
	@Override
	public void updateImg(Map<String, String> map) {
		System.out.println(map);
		sqlSession.update("userSQL.updateImg", map);
	}

	@Override
	public void deleteImg(String user_id) {
		sqlSession.update("userSQL.deleteImg", user_id);
	}

	@Override
	public int checkNaver(String hp) {
		return sqlSession.selectOne("userSQL.checkNaver", hp);
	}


	@Override
	public void SignUpNaver(UserDTO userDTO) {
		sqlSession.selectOne("userSQL.signUpNaver", userDTO);
	}

	@Override
	public UserDTO loginNaver(String user_id) {
		return sqlSession.selectOne("userSQL.loginNaver", user_id);
	}

	@Override
	public List<Buy_historyDTO> getBuyHistory(String user_id) {
		return sqlSession.selectList("userSQL.getBuyHistory", user_id);
	}

	@Override
	public List<Sell_historyDTO> getSellHistory(String user_id) {
		return sqlSession.selectList("userSQL.getSellHistory", user_id);
	}

	@Override
	public ProductImgDTO getProductImg(int product_id) {
		return sqlSession.selectOne("userSQL.getProductImg", product_id);
	}
	
	@Override
	public int checkIdKakao(String user_id) {

		return sqlSession.selectOne("userSQL.checkIdKakao", user_id);
	}

	@Override
	public void writeKakao(String user_id) {
		sqlSession.insert("userSQL.writeKakao", user_id);
	}

	@Override
	public int bookMarkGetDetail(Map<String, String> map) {
		return sqlSession.selectOne("userSQL.bookMarkGetDetail" , map);
  }

	public UserDTO checkrecheckpwd(String user_id) {
		return sqlSession.selectOne("userSQL.checkrecheckpwd",user_id);
	}

	@Override
	public void userdelete(String user_id) {
		sqlSession.delete("userSQL.userdelete",user_id);
	}

}
	
