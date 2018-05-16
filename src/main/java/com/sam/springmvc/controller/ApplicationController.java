package com.sam.springmvc.controller;



import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sam.springmvc.model.Application;
import com.sam.springmvc.model.FileBucket;
import com.sam.springmvc.model.Job;
import com.sam.springmvc.model.User;
import com.sam.springmvc.model.UserDocument;
import com.sam.springmvc.service.ApplicationService;
import com.sam.springmvc.service.JobService;
import com.sam.springmvc.service.UserDocumentService;
import com.sam.springmvc.service.UserService;

@Controller
@RequestMapping("/")
@SessionAttributes("roles")

public class ApplicationController {
	
	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	@Autowired
	private ApplicationService appService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private JobService jobService;
	
	@Autowired
	private UserDocumentService userDocumentService;
	
	@RequestMapping(value =  "/welcome**", method = RequestMethod.GET)
	public ModelAndView welcome(ModelMap model1, @RequestParam("id") String id) {
		 
		
		 ModelAndView model = new ModelAndView();
		 Application app=new Application();
		 model.addObject("app", app);
		 model.addObject("jobid", id);
		 
		 String sso_Id=getPrincipal();
	     List<User> listUser = userService.list(sso_Id);
		 model.addObject("listUser", listUser);
   
 		 model1.addAttribute("loggedinuser", getPrincipal());
 		 model.setViewName("userloginSuccessfull");
 		 return model;

	}
	

	@RequestMapping(value = "/apply", method = RequestMethod.POST)
	public ModelAndView saveEmployee(ModelAndView model,ModelMap map,@ModelAttribute Application app){
       
		int count=appService.getcountQueryObject(app);
		System.out.println("count :"+count);
		
		if (count==0 && app.getId() == 0) { 
			appService.addApplication(app);
		}
		
		else {
			List<Job> listJob = jobService.listActiveJobs();
			model.addObject("listJob", listJob);
			map.addAttribute("edit1", true);
			map.addAttribute("loggedinuser", getPrincipal());
			model.setViewName("home");
			return model;
		}
		List<Job> listJob = jobService.listActiveJobs();
		model.addObject("listJob", listJob);
		map.addAttribute("edit", true);
		map.addAttribute("loggedinuser", getPrincipal());
		model.setViewName("home");
		return model;
	}
	
	private String getPrincipal(){
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails)principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	 
	 @RequestMapping(value = "/viewResponses", method = RequestMethod.GET)
		public ModelAndView viewResponses(ModelAndView modelview, ModelMap model,@RequestParam("jobid") String jobid) {
			
		    List<Application> listapp=appService.getResponses(jobid);
			modelview.addObject("listapp", listapp);
			model.addAttribute("loggedinuser", getPrincipal());
			modelview.setViewName("viewResponse");
			return modelview;
		}
	 
	
	   @RequestMapping(value = "/viewApplicantDetails", method = RequestMethod.GET)
		public ModelAndView viewDetails(@Valid FileBucket fileBucket,@RequestParam("user_id") int id,ModelMap map, HttpServletRequest request,Application app) {
		    List<UserDocument> documents = userDocumentService.findAllByUserId(id);
		    map.addAttribute("documents", documents);
		    app=appService.getApplication(app.getId());
			ModelAndView model = new ModelAndView("viewApplicantDetails");
			model.addObject("app", app);
			return model;
		}
	 
	   
	   @RequestMapping(value = { "/download-document-{docId}" }, method = RequestMethod.GET)
	    public String downloadDocument(@PathVariable int docId, HttpServletResponse response, HttpServletRequest request) throws IOException {
	        UserDocument document = userDocumentService.findById(docId);
	        response.setContentType(document.getType());
	        response.setContentLength(document.getContent().length);
	       	response.setHeader("Content-Disposition","attachment; filename=\"" + document.getName() +"\"");
	      
	        FileCopyUtils.copy(document.getContent(), response.getOutputStream());
	  
	        return "redirect:/viewApplicantDetails";
	    }
	   
	   @RequestMapping(value =  "/addnewjob", method = RequestMethod.GET)
		public ModelAndView addnewjob(ModelMap model1,ModelAndView model) {

		     Job job = new Job();
			 model.addObject("job", job);
		   
			 List<String> status = new ArrayList<>();
			 status.add("Active");
			 status.add("Inactive");
	         model1.addAttribute("status", status);
	         
	         List<String> jobtype = new ArrayList<>();
	         jobtype.add("Contract");
	         jobtype.add("Contract to hire");
	         jobtype.add("Permanant/Fulltime");
	         model1.addAttribute("jobtype", jobtype);
	         
	         List<String> location=new ArrayList<>();
	         location.add("Anywhere in India");
	         location.add("Bangalore");
	         location.add("Chennai");
	         location.add("Gurgaon");
	         location.add("Hyderabad");
	         location.add("Mumbai");
	         location.add("Pune");
	         model1.addAttribute("location", location);
	        

	 		 model1.addAttribute("loggedinuser", getPrincipal());
	 		 model.setViewName("addEditnewjob");
	 		 return model;

		}
	   
	   @RequestMapping(value="/format",method = RequestMethod.GET)
	   public String format(ModelAndView modelview, Job job, @RequestParam("id") int id) {
	   System.out.println("jobid and id :" +job.getJobid()+id);

		jobService.updateJob1(id);   
		return "redirect:/list";
		   
	   }
	  
}
