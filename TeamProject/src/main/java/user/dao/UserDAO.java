package user.dao;

import user.bean.AddressDTO;
import user.bean.UserDTO;

public interface UserDAO {
	public String loginCheck(UserDTO userDTO);

	public void addaddressbook(AddressDTO addressDTO);

	public void updateflag(AddressDTO addressDTO);
}
