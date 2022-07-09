package user.dao;

import user.bean.UserDTO;

public interface UserDAO {
	public String loginCheck(UserDTO userDTO);
}
