/*package com.sam.springmvc.test;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.test.context.web.WebAppConfiguration;

import com.sam.springmvc.configuration.AppConfig;
import com.sam.springmvc.model.Job;
import com.sam.springmvc.service.JobService;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes =AppConfig.class, loader = AnnotationConfigContextLoader.class)
public class JobController {
	
	@Autowired
	private JobService jobservice;
	
	private Job job;
	
	@Test
	public void userDetails_Test() {

		List<Job> list=  jobservice.getAllJobs();
		assertNotNull(list);
		assertTrue(list.size()>0);
	}

}
*/