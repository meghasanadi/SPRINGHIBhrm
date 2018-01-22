package com.sam.springmvc.dao;

import java.util.List;

import com.sam.springmvc.model.UserProfile;


public interface UserProfileDao {

	List<UserProfile> findAll();
	
	UserProfile findByType(String type);
	
	UserProfile findById(int id);
	
    List<UserProfile> userProfile();	
}
