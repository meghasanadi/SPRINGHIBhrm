package com.sam.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.sam.springmvc.model.User;

public class UserRowMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet resultSet, int row) throws SQLException {
		int id;
		String ssoId;
		
		String firstName; 
		String lastName;
		String email;
		String phone;
		
		User user;
		
		id=resultSet.getInt("id");
		ssoId=resultSet.getString("sso_id");
		firstName=resultSet.getString("first_name");
		
		lastName=resultSet.getString("last_name");
		email=resultSet.getString("email");
		
		user=new User();
		user.setId(id);
		user.setSsoId(ssoId);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		return null;
	}

}
