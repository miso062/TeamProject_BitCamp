package user.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import user.bean.UserDTO;


@Repository 
public class UserDAOImpl implements UserDAO {

	@Inject  // 의존관계 주입
	SqlSession sqlSession;
	
	@Override
	public String loginCheck(UserDTO userDTO) {
		
		return sqlSession.selectOne("user.loginCheck", userDTO);
	}

}
