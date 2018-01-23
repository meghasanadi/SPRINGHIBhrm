package com.sam.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import com.sam.springmvc.model.Application;

public class ApplicationRowMapper implements RowMapper<Application> {
	
	@Override
	public Application mapRow(ResultSet resultSet, int row) throws SQLException {
		
     int id;
	 int user_id;
	 String firstname;
	 String lastname;
	 String email; 
	 String phoneno; 
	 String position;
	 String location;
	 String curcompany; 
	 String dob; 
	 String applied;
	 Date date;
	
 
	  Application app;
      id=resultSet.getInt("id");
	  user_id=resultSet.getInt("user_id");
	  firstname=resultSet.getString("firstname");
	  lastname=resultSet.getString("lastname");
	  email=resultSet.getString("email"); 
	  phoneno=resultSet.getString("phoneno"); 
	  position=resultSet.getString("position");
	  location=resultSet.getString("location");
	  curcompany=resultSet.getString("curcompany"); 
	  dob=resultSet.getString("dob"); 
	  applied=resultSet.getString("applied");
	  date=resultSet.getDate("date");
	  
	  
	  app=new Application(id,user_id, firstname, lastname, email,  phoneno,
				 dob, position, location,  curcompany, applied,  date);
	  app.setId(id);
	  app.setUser_id(user_id);
	  app.setFirstname(firstname);
	  app.setLastname(lastname);
	  app.setEmail(email);
	  app.setPhoneno(phoneno);
	  app.setPosition(position);
	  app.setLocation(location);
	  app.setCurcompany(curcompany);
	  app.setDob(dob);
	  app.setApplied(applied);
	  app.setDate(date);
	  return app;
	}

}
