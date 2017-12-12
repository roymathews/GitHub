package com.sony.dao;


import java.util.List;


import com.sony.model.User;

public interface UserDao {

	
	void saveUser(User p);
	 List<User> list(String name);
	
}
