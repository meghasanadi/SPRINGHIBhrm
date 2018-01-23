package com.sam.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sam.springmvc.dao.JobDAO;
import com.sam.springmvc.model.Job;



@Service
@Transactional
public class JobServiceImpl implements JobService {

	@Autowired
	private JobDAO jobdao;
	
	@Override
	public void addJobs(Job job) {
		jobdao.addJobs(job);
		
	}

	@Override
	public List<Job> getAllJobs() {
		return jobdao.getAllJobs();
	}
	
	@Override
	public List<Job> listActiveJobs() {
		return jobdao.listActiveJobs();
	}

	@Override
	public Job updateJob(Job job) {
		return jobdao.updateJob(job);
	}

	@Override
	public void deleteJob(int jobid) {
		jobdao.deleteJob(jobid);
		
	}

	@Override
	public Job getJob(Integer jobid) {
		return jobdao.getJob(jobid);
	}

	@Override
	public int updateJob1(Job job) {
		return jobdao.updateJob1(job);
	}

	@Override
	public int updateJobResponses(Job job) {
		
		return jobdao.updateJobResponses(job);
	}

	@Override
	public int updateResponses(int count,String jobid) {
		return jobdao.updateResponses(count,jobid);
		
		
	}

}
