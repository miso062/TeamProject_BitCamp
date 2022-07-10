package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.AdminDTO;
import admin.bean.AdminQnADTO;

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


	@Override
	public void addnoticeUpdate(AdminDTO adminDTO) {
		sqlSession.update("adminSQL.addnoticeUpdate",adminDTO);
		
	}


	@Override
	public void getnoticeQnAWrite(AdminQnADTO adminQnADTO) {
		sqlSession.insert("adminSQL.getnoticeQnAWrite",adminQnADTO);
		
	}


	@Override
	public List<AdminQnADTO> getnoticeQnAList(Map<String, Integer> map) {
		return sqlSession.selectList("adminSQL.getnoticeQnAList",map);
	}


	@Override
	public int getTotalA1() {
		return sqlSession.selectOne("adminSQL.getTotalA1");
	}


	@Override
	public List<AdminQnADTO> getnoticeQnAListsearch(Map<String, String> map) {
		if(map.get("category").equals("전체")){
			return sqlSession.selectList("adminSQL.getnoticeQnAListsearch1",map);
		}else {
			return sqlSession.selectList("adminSQL.getnoticeQnAListsearch",map);			
		}
	}


	@Override
	public int getTotalA2(String category) {
		return sqlSession.selectOne("adminSQL.getTotalA2", category);
	}


	@Override
	public AdminQnADTO getnoticeQnAUpdate(String seq, String pg) {
		AdminQnADTO adminQnADTO = sqlSession.selectOne("adminSQL.getnoticeQnAUpdate",seq);
		return adminQnADTO;
	}


	@Override
	public void addnoticeQnAUpdate(AdminQnADTO adminQnADTO) {
		sqlSession.update("adminSQL.addnoticeQnAUpdate",adminQnADTO);
		
	}


	@Override
	public void noticeqnaDelete(String seq, String pg) {
		sqlSession.delete("adminSQL.noticeqnaDelete",seq);
		
	}

}
