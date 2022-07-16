package user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.AddressDTO;
import user.bean.UserDTO;


@Repository 
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserDTO checkLogin(String log_email_input, String log_pwd_input) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", log_email_input);
		map.put("pwd", log_pwd_input);
		UserDTO userDTO = sqlSession.selectOne("userSQL.checkLogin", map);
		return userDTO;
	}

	@Override
	public void addaddressbook(AddressDTO addressDTO) {
		sqlSession.insert("userSQL.addaddress",addressDTO);
		
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

	@Override
	public void update(UserDTO userDTO) {
		sqlSession.update("userSQL.update", userDTO);
  }
  
	public int checkId(String user_id) {
		return sqlSession.selectOne("userSQL.checkId", user_id);
	}
}
