/*package com.sam.springmvc.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.test.context.web.WebAppConfiguration;

import com.sam.springmvc.configuration.AppConfig;
import com.sam.springmvc.dao.JobDAO;
import com.sam.springmvc.model.Job;
import com.sam.springmvc.service.ApplicationService;
import com.sam.springmvc.service.JobService;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes =AppConfig.class, loader = AnnotationConfigContextLoader.class)
public class JobTest {

	private static AnnotationConfigApplicationContext context;

	private static JobService jobservice;
	
	
	private static JobDAO jobdao;
	

	private static ApplicationService appservice;
	
	private Job job;
	
	private JobTest jobTest;
	
	 
	@BeforeClass
	public static void init() {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.sam.springmvc");	
		context.refresh();
		jobdao=(JobDAO) context.getBean("jobdao");
	}
	
	@Test 
	public void testAddJob() {
		job=new Job();
		job.setJobid("SAMJID90");
		job.setJob_type("permanant");
		job.setKeyskills("Java");
		job.setLocation("Pune");
		
		assertEquals("Successfully added a category in database", true, jobdao.addJobs(job));

	}
	
}
*/