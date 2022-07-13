package user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import user.bean.UserDTO;


@Repository 
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public UserDTO checkLogin(String log_email_input, String log_pwd_input) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", log_email_input);
		map.put("pwd", log_pwd_input);
		//System.out.println(map.get("email"));
		//System.out.println(map.get("pwd"));
		UserDTO userDTO = sqlSession.selectOne("userMapper.checkLogin", map);
		
		return userDTO;
	}

	@Override
	public String findEmailAddress(String phone) {
		String user_id = sqlSession.selectOne("userMapper.findEmailAddress", phone);
		System.out.println(user_id);
		return user_id;
	}
}
