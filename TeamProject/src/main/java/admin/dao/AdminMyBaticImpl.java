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


	@Override
	public AdminDTO getnoticeView(String seq, String pg) {
		AdminDTO adminDTO = sqlSession.selectOne("adminSQL.getnoticeView",seq);
		return adminDTO;
	}


	@Override
	public void getnoticeWrite(AdminDTO adminDTO) {
		sqlSession.insert("adminSQL.getnoticeWrite",adminDTO);
	}


	@Override
	public int getTotalA() {
		
		return sqlSession.selectOne("adminSQL.getTotalA");
	}


	@Override
	public void noticeDelete(String seq, String pg) {
		sqlSession.delete("adminSQL.noticeDelete",seq);
		
	}


	@Override
	public AdminDTO getnoticeUpdate(String seq, String pg) {
		AdminDTO adminDTO = sqlSession.selectOne("adminSQL.getnoticeUpdate",seq);
		return adminDTO;
	}

}
