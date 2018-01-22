package com.sam.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sam.springmvc.dao.ApplicationDao;
import com.sam.springmvc.model.Application;
import com.sam.springmvc.model.Job;

@Service
@Transactional
public class ApplicationServiceImpl implements ApplicationService {

	@Autowired
	private ApplicationDao appDao;
	
	@Override
	public void addApplication(Application app) {

		appDao.addApplication(app);
	}

	@Override
	public List<Application> getResponses(String  jobid) {
		
		return appDao.getResponses(jobid);
	}

	@Override
	public Application getApplication(Integer id) {
		
		return appDao.getApplication(id);
	}

	@Override
	public boolean getcount(Application app) {
		return appDao.getcount(app);
	}

	@Override
	public int getcountQueryObject(Application app) {
		return appDao.getcountQueryObject(app);
	}

	@Override
	public int getcountQueryObjectOnlybyPosition(String jobid) {
		return appDao.getcountQueryObjectOnlybyPosition(jobid);
	}
	


	@Override
	public int lastid() {
		
		return appDao.lastid();
	}

	@Override
	public void update(Integer user_id, String firstname, String lastname, String email, Integer lastid) {
		appDao.update(user_id, firstname, lastname, email, lastid);
		
	}

}
