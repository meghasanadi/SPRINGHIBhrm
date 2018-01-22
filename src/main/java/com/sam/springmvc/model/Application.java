package com.sam.springmvc.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "job_seeker_application")
public class Application {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	private int user_id;
	
	
	@Column
	private String firstname;
	private String lastname;
	private String email; 
	private String phoneno; 
	private String dob; 
	private String gender;
	private String position;
	private String salary_exp;
	private String location;
	private String willingTorellocate; 
	private String relocatelocation; 
	private String pancard; 
	private String curcompany; 
	private String comments;
	private String applied;
	private String experience;
	

	@Column(name="date",columnDefinition="TIMESTAMP")      
	@Temporal(TemporalType.TIMESTAMP)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date=new Date();
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneno() {
		return phoneno;
	}
	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getSalary_exp() {
		return salary_exp;
	}
	public void setSalary_exp(String salary_exp) {
		this.salary_exp = salary_exp;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getWillingTorellocate() {
		return willingTorellocate;
	}
	public void setWillingTorellocate(String willingTorellocate) {
		this.willingTorellocate = willingTorellocate;
	}
	public String getRelocatelocation() {
		return relocatelocation;
	}
	public void setRelocatelocation(String relocatelocation) {
		this.relocatelocation = relocatelocation;
	}
	public String getPancard() {
		return pancard;
	}
	public void setPancard(String pancard) {
		this.pancard = pancard;
	}
	public String getCurcompany() {
		return curcompany;
	}
	public void setCurcompany(String curcompany) {
		this.curcompany = curcompany;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getApplied() {
		return applied;
	}
	public void setApplied(String applied) {
		this.applied = applied;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	

	
	public Application() {
		super();
		
	}
	public Application(int id, int user_id, String firstname, String lastname, String email, String phoneno,
			String dob, String position, String location, String curcompany, String applied, Date date) {
		super();
		this.id = id;
		this.user_id=user_id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.phoneno = phoneno;
		this.dob = dob;
		this.position = position;
		this.location = location;
		this.curcompany = curcompany;
		this.applied = applied;
		this.date = date;
	}
	@Override
	public String toString() {
		return "Application [id=" + id + ", user_id=" + user_id + ", firstname=" + firstname + ", lastname=" + lastname
				+ ", email=" + email + ", phoneno=" + phoneno + ", dob=" + dob + ", gender=" + gender + ", position="
				+ position + ", salary_exp=" + salary_exp + ", location=" + location + ", willingTorellocate="
				+ willingTorellocate + ", relocatelocation=" + relocatelocation + ", pancard=" + pancard
				+ ", curcompany=" + curcompany + ", comments=" + comments + ", applied=" + applied + ", experience="
				+ experience + ", date=" + date + "]";
	}
		
	
}


