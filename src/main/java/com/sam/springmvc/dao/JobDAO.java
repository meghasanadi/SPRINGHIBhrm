package com.sam.springmvc.dao;

import java.util.List;

import com.sam.springmvc.model.Job;


public interface JobDAO {
    
	public void addJobs(Job job);
	
	public List<Job> getAllJobs();
	
	public void deleteJob(int id);
	
	public Job getJob(Integer id);
	
	public Job updateJob(Job job);
	
	public int updateJob1(Job job);
	
	public List<Job> listActiveJobs();	
	
	public int updateJobResponses(Job job);
	
	public int updateResponses(int count,String jobid);
}
