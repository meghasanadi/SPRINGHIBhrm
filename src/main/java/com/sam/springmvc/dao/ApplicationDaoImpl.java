package com.sam.springmvc.dao;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import com.sam.springmvc.model.Application;


@Repository
public class ApplicationDaoImpl implements ApplicationDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private DataSource dataSource;
	private NamedParameterJdbcTemplate dbTemplate;
	private JdbcTemplate jdbcTemplate;
	private SimpleJdbcInsert jdbcInsert;
	private ApplicationRowMapper applicationRowMapper;
	
	@PostConstruct
	public void setup() {
		jdbcTemplate = new JdbcTemplate(dataSource);
		dbTemplate = new NamedParameterJdbcTemplate(dataSource);
		jdbcInsert = new SimpleJdbcInsert(dataSource);
		jdbcInsert.withTableName("job_seeker_application");
		jdbcInsert.usingGeneratedKeyColumns("id");
		
		applicationRowMapper = new ApplicationRowMapper();
	}

	@Override
	public void addApplication(Application app) {
		sessionFactory.getCurrentSession().saveOrUpdate(app);

	}
	
	@Override
	public List<Application> getResponses(String jobid) {
		
		return sessionFactory.getCurrentSession().createQuery("from Application as app where app.position='"+jobid+"'").list();
	}
	
	

	@Override
	public Application getApplication(Integer id) {
		
		return (Application) sessionFactory.getCurrentSession().get(Application.class, id);
	}

	@Override
	public boolean getcount(Application app) {
			String sql="select count(*) from job_seeker_application where user_id='"+app.getUser_id()+"' and position='"+app.getPosition()+"'"; 	
			jdbcTemplate.execute(sql);
			return true; 
		
	}

	@Override
	public int getcountQueryObject(Application app) {
		return jdbcTemplate.queryForObject("select count(*) from job_seeker_application where user_id='"+app.getUser_id()+"' and position='"+app.getPosition()+"'", Integer.class); 
	}

	@Override
	public int getcountQueryObjectOnlybyPosition(String jobid) {
		return jdbcTemplate.queryForObject("select count(*) from job_seeker_application where position='"+jobid+"'", Integer.class); 
	}


	@Override
	public int lastid() {
		return jdbcTemplate.queryForObject("SELECT id FROM job_seeker_application ORDER BY ID DESC LIMIT 1", Integer.class); 

	}

	@Override
	public void update(Integer user_id, String firstname, String lastname, String email, Integer lastid) {
		String sql="UPDATE job_seeker_application SET user_id = '"+user_id+"',firstname='"+firstname+"',lastname='"+lastname+"',email='"+lastid+"' where id='"+lastid+"'";
		System.out.println(sql);
		jdbcTemplate.update(sql);
	}


}
