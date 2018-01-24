package com.sam.springmvc.model;

import java.io.Serializable;
import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "job_tbl")
public class Job implements Serializable {
	
	private static final long serialVersionUID = -3465813074586302847L;

	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	@Column
	private String jobid;
	
	@Column
	private String job_name;
	
    @Column(name="date",columnDefinition="TIMESTAMP")      
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern="yyyy-MM-dd'T'HH:mm:ss")
	private Date date=new Date();
	private Time time;
	private String keyskills;
	private String location;
	private String job_description;
	private String description;
	private String experience;
	private String job_type;
	private String companyname;
	private String Salary;
	private String Functionalarea;
	private String shortdescription;
	private String roles;
	
	private String status;
	private String responses;
	private String postedBy;
	
	public Job() {
		super();
		
	}

	public Job(int id, String jobid, String job_name, Date date,String keyskills, String location,
			String job_description,String description, String experience, String job_type, String companyname, String Salary,
			String Functionalarea, String shortdescription, String status, String responses, String postedBy) {
		super();
		this.id = id;
		this.jobid = jobid;
		this.job_name = job_name;
		this.date=date;
		this.keyskills = keyskills;
		this.location = location;
		this.job_description = job_description;
		this.description = description;
		this.experience = experience;
		this.job_type = job_type;
		this.companyname = companyname;
		this.Salary = Salary;
		this.Functionalarea = Functionalarea;
		this.shortdescription = shortdescription;
		this.status = status;
		this.responses=responses;
		this.postedBy=postedBy;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
	public String getJobid() {
		return jobid;
	}
	public void setJobid(String jobid) {
		this.jobid = jobid;
	}
	public String getJob_name() {
		return job_name;
	}
	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public String getKeyskills() {
		return keyskills;
	}
	public void setKeyskills(String keyskills) {
		this.keyskills = keyskills;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getJob_description() {
		return job_description;
	}
	public void setJob_description(String job_description) {
		this.job_description = job_description;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getJob_type() {
		return job_type;
	}
	public void setJob_type(String job_type) {
		this.job_type = job_type;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSalary() {
		return Salary;
	}
	public void setSalary(String Salary) {
		this.Salary = Salary;
	}
	public String getFunctionalarea() {
		return Functionalarea;
	}
	public void setFunctionalarea(String Functionalarea) {
		this.Functionalarea = Functionalarea;
	}
	public String getShortdescription() {
		return shortdescription;
	}
	public void setShortdescription(String shortdescription) {
		this.shortdescription = shortdescription;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public String getResponses() {
		return responses;
	}

	public void setResponses(String responses) {
		this.responses = responses;
	}

	public String getPostedBy() {
		return postedBy;
	}

	public void setPostedBy(String postedBy) {
		this.postedBy = postedBy;
	}
	

}
