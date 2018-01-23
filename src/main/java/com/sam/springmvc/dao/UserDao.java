package com.sam.springmvc.dao;

import java.util.List;


import com.sam.springmvc.model.User;


public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
	void save(User user);
	
	void deleteBySSO(String sso);
	
	List<User> findAllUsers();	

    User getUser(String ssoId);
    
    public List<User> list(String ssoId);	
}

