package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.AdminDTO;

@Repository
@Transactional
public class AdminMyBaticImpl implements AdminDAO {
	
	@Autowired
	private SqlSession sqlSession;


	@Override
	public List<AdminDTO> getBoardList(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getnoticeList",map);
	}

}
