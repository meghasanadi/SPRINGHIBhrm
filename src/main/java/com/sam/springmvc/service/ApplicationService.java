package com.sam.springmvc.service;

import java.util.List;

import com.sam.springmvc.model.Application;

public interface ApplicationService {
	
	public void addApplication(Application app);
	
	public List<Application> getResponses(String  jobid);

	public Application getApplication(Integer id);
	
	public boolean getcount(Application app);
	
	public int getcountQueryObject(Application app);
	
	public int getcountQueryObjectOnlybyPosition(String jobid);
	
	public void update(Integer user_id,String firstname,String lastname,String email,Integer lastid);
	
	public int lastid();

}
