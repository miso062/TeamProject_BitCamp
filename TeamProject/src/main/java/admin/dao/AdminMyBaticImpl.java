package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.bean.AdminDTO;
import admin.bean.AdminQnADTO;
import product.bean.ProductDTO;
import product.bean.ProductImgDTO;
import user.bean.UserDTO;

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


	@Override
	public List<UserDTO> getAllUserList() {
		return sqlSession.selectList("adminSQL.getAllUserList");
	}


	@Override
	public Integer getUserCount() {
		return sqlSession.selectOne("adminSQL.getUserCount");
	}


	@Override
	public List<UserDTO> getAllUserList2() {
		return sqlSession.selectList("adminSQL.getAllUserList2");
	}


	@Override
	public List<UserDTO> getAllUserList3() {
		return sqlSession.selectList("adminSQL.getAllUserList3");
	}


	@Override
	public void deleteThisUser(String user_id) {
		sqlSession.delete("adminSQL.deleteThisUser",user_id);
	}


	@Override
	public List<UserDTO> getsearchUserList(String keyword) {
		return sqlSession.selectList("adminSQL.getsearchUserList",keyword);
	}


	@Override
	public Integer getSearchAdminCount(String keyword) {
		return sqlSession.selectOne("adminSQL.getSearchAdminCount",keyword);
	}


	@Override
	public List<UserDTO> getMemberList() {
		return sqlSession.selectList("adminSQL.getMemberList");
	}


	@Override
	public List<UserDTO> getGoodMemberList() {
		return sqlSession.selectList("adminSQL.getGoodMemberList");
	}


	@Override
	public Integer getMemberCount() {
		return sqlSession.selectOne("adminSQL.getMemberCount");
	}


	@Override
	public Integer getGoodMemberCount() {
		return sqlSession.selectOne("adminSQL.getGoodMemberCount");
	}


	@Override
	public List<ProductDTO> getAllProList() {
		return sqlSession.selectList("adminSQL.getAllProList");
	}


	@Override
	public ProductImgDTO getImge(int product_id) {
		return sqlSession.selectOne("adminSQL.getImg",product_id);
	}

}
