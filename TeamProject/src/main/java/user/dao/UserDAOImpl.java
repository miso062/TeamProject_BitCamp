package user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import product.bean.Buy_historyDTO;
import product.bean.ProductDTO;
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
	public List<Buy_historyDTO> getBuyHistoryList(String user_id) {
		return sqlSession.selectList("userSQL.getBuyHistoryList", user_id);
	}

	@Override
	public List<Sell_historyDTO> getSellHistoryList(String user_id) {
		return sqlSession.selectList("userSQL.getSellHistoryList", user_id);
	}
	
	@Override
	public Buy_historyDTO getBuyItem(String buy_id) {
		return sqlSession.selectOne("userSQL.getBuyItem", buy_id);
	}
	
	@Override
	public Sell_historyDTO getSellItem(String sell_id) {
		return sqlSession.selectOne("userSQL.getSellItem", sell_id);
	}
	
	@Override
	public ProductImgDTO getProductImg(int product_id) {
		return sqlSession.selectOne("userSQL.getProductImg", product_id);
	}
	
	@Override
	public AddressDTO getAddress(Integer address_id) {
		return sqlSession.selectOne("userSQL.getAddress", address_id);
	}
	
	@Override
	public Map<String, Object> getProductInfo(int product_id) {
		Integer Max_buyPrice = sqlSession.selectOne("userSQL.getMaxBuyPrice", product_id);
		Integer Min_sellPrice = sqlSession.selectOne("userSQL.getMinSellPrice", product_id);
		String model_number = sqlSession.selectOne("userSQL.getModelNum", product_id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("model_number", model_number);
		map.put("min_sellPrice", Min_sellPrice);
		map.put("max_buyPrice", Max_buyPrice);
		return map;
	}
	
	@Override
	public void delSellHistory(int sell_id) {
		sqlSession.delete("userSQL.delSellHistory", sell_id);		
	}
	
	@Override
	public void delBuyHistory(int buy_id) {
		sqlSession.delete("userSQL.delBuyHistory", buy_id);
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

  @Override
	public UserDTO checkrecheckpwd(String user_id) {
		return sqlSession.selectOne("userSQL.checkrecheckpwd",user_id);
	}

  @Override
	public void userdelete(String user_id) {
		sqlSession.delete("userSQL.userdelete",user_id);
	}


	public List<AddressDTO> getAddress(String user_id) {
		return sqlSession.selectList("userSQL.getAddress", user_id);
	}

	@Override
	public List<LikeProDTO> getLikeProductList(String id) {
		return sqlSession.selectList("userSQL.getLikeProductList", id);
	}

	@Override
	public ProductDTO getLikeProducts(int product_id) {
		return sqlSession.selectOne("userSQL.getLikeProducts", product_id);
	}

	@Override
	public ProductImgDTO getProductAll(int product_id) {
		System.out.println("ㅎㅇㅎㅇ");
		return sqlSession.selectOne("userSQL.getProductAll", product_id);
	}

	@Override
	public List<AddressDTO> comeAddress(String user_id) {
		return sqlSession.selectList("userSQL.comeAddress" , user_id);
	}

	@Override
	public AddressDTO comeAddress1(String user_id) {
		return sqlSession.selectOne("userSQL.comeAddress1" , user_id);
	}

	@Override
	public void myAddressDelete(String address_id) {
		sqlSession.delete("userSQL.myAddressDelete", address_id);		
	}

	@Override
	public void addAddressModify(AddressDTO addressDTO) {
		sqlSession.update("userSQL.addAddressModify" , addressDTO);
	}

	@Override
	public void changeFlag(String address_id) {
		int addr_id = Integer.parseInt(address_id);
		sqlSession.update("userSQL.changeFlag" ,addr_id);		
	}
	//기본배송지 내리기
	@Override
	public void changeFlag1(String user_id) {
		sqlSession.update("userSQL.changeFlag1" ,user_id);		
		
	}


}
	
