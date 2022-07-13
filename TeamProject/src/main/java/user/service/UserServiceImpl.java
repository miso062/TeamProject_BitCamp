package user.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import user.bean.AddressDTO;
import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Inject
	UserDAO	userDAO;
	
	@Override
	public String loginCheck(UserDTO userDTO, HttpSession session) {
		
		return null;
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addaddressbook(AddressDTO addressDTO) {
		if(addressDTO.getFlag() == 1) {
			userDAO.updateflag(addressDTO);
		}
		userDAO.addaddressbook(addressDTO);
		
	}

}
