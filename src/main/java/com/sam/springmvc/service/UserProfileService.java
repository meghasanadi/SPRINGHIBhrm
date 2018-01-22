package com.sam.springmvc.service;

import java.util.List;

import com.sam.springmvc.model.UserProfile;


public interface UserProfileService {

	UserProfile findById(int id);

	UserProfile findByType(String type);
	
	List<UserProfile> findAll();
	
	List<UserProfile> userProfile();	
	
}
