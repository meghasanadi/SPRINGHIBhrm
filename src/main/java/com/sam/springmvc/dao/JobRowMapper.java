package com.sam.springmvc.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import com.sam.springmvc.model.Job;

public class JobRowMapper implements RowMapper<Job> {

	@Override
	public Job mapRow(ResultSet resultSet, int row) throws SQLException {
		int id;
		String jobid;
		String job_name;
		Date date;
		String keyskills;
		String job_designation;
		String job_description;
		String experience;
		String job_type;
		String companyname;
		String Salary;
		String Functionalarea;
		String shortdescription;
		String status;
		String description;
		String responses;
		String postedBy;
		
		Job job;
		id=resultSet.getInt("id");
		jobid=resultSet.getString("jobid");
		job_name=resultSet.getString("job_name");
		description=resultSet.getString("description");
		keyskills=resultSet.getString("keyskills");
		date=resultSet.getDate("date");
		job_designation=resultSet.getString("job_designation");
		job_description=resultSet.getString("job_description");
		experience=resultSet.getString("experience");
		job_type=resultSet.getString("job_type");
		companyname=resultSet.getString("companyname");
		Salary=resultSet.getString("Salary");
		Functionalarea=resultSet.getString("Functionalarea");
		shortdescription=resultSet.getString("shortdescription");
		status=resultSet.getString("status");
		responses=resultSet.getString("responses");
		postedBy=resultSet.getString("postedBy");
		
		job=new Job(id, jobid, job_name, date,keyskills, job_designation, job_description, description,experience, job_type, companyname, Salary, Functionalarea, shortdescription, status, responses,postedBy);
		job.setId(id);
		job.setJobid(jobid);
		job.setJob_name(job_name);
		job.setKeyskills(keyskills);
		job.setJob_designation(job_designation);
		job.setJob_description(job_description);
		job.setCompanyname(companyname);
		job.setSalary(Salary);
		job.setFunctionalarea(Functionalarea);
		job.setShortdescription(shortdescription);
		job.setStatus(status);
		job.setResponses(responses);
		job.setPostedBy(postedBy);
		return job;
	}

}
