package admin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AdminMyBaticImpl implements AdminDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void test() {
		
		sqlSession.insert("adminSQL.test");
	}

}
