<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>PHP Contact Form Script With Validation - reusable form</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="form.css" >
        <script src="form.js"></script>
    </head>
    <body >
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <h2 align="center">Post the Job</h2> 
                    <hr>
                    
                    <form:form action="saveJob" method="post" modelAttribute="job">
                        <div class="row">
                        <form:hidden path="id"/>
				           <div class="col-sm-6 form-group">
                                <label for="name"> JobId:</label>
				                <form:input type="text" path="jobid" class="form-control" maxlength="50" />
				           </div>
                            <div class="col-sm-6 form-group">
                                <label for="name"> Job Name:</label>
                                <form:input type="text" path="job_name" class="form-control" maxlength="50" />
                            </div>
                          </div> 
                           <div class="row">   
                            <div class="col-sm-6 form-group">
                                <label for="name"> Keyskills:</label>
                                 <form:input type="text" path="keyskills" class="form-control" maxlength="50" />
                            </div>
                             <div class="col-sm-6 form-group">
                                <label for="email"> Experience:</label>
                                 <form:input type="text" path="experience" class="form-control" maxlength="50" />
                            </div>
                         </div>
                        <div class="row">
                         <div class="col-sm-6 form-group">
                                <label for="email"> Location:</label>
                                 <form:select path="location" class="form-control" maxlength="50" >
                                 	<form:option value="" label="...." />
				                    <form:options items="${location}" />
                                 </form:select>
                            </div>
                           <div class="col-sm-6 form-group">
                                <label for="email"> Salary:</label>
                                 <form:input type="text" path="salary" class="form-control" maxlength="50" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="name"> Description:</label>
                                <form:textarea class="form-control" type="textarea" path="job_description" id="description" name="description" placeholder="Your Message Here" maxlength="6000" rows="7"></form:textarea>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="name"> Roles and Responsibilities:</label>
                                <form:textarea class="form-control" type="textarea" path="roles" id="roles" name="description" placeholder="Your Message Here" maxlength="6000" rows="5"></form:textarea>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <label for="name"> Short Description:</label>
                                <form:textarea class="form-control" type="textarea" path="shortdescription" id="shortdescription" name="shortdescription" placeholder="Your Message Here" maxlength="6000" rows="2"></form:textarea>
                            </div>
                        </div>
                        
                        <div class="row">
                         <div class="col-sm-6 form-group">
                                <label for="email"> Job type:</label>
                                 <form:select path="job_type" class="form-control" maxlength="50" >
                                 	<form:option value="" label="...." />
				                    <form:options items="${jobtype}" />
                                 </form:select>
                            </div>
                          <div class="col-sm-6 form-group">
                                <label for="email"> Status:</label>
                                 <form:select path="status" class="form-control" maxlength="50" >
                                 	<form:option value="" label="...." />
				                    <form:options items="${status}" />
                                 </form:select>
                            </div>
                        </div>
                        
                        <p id="date"></p>
				        <form:hidden value="${loggedinuser}" path="postedBy" />
                        
                        <div class="row">
                            <div class="col-sm-12 form-group">
                                <button type="submit" class="btn btn-lg btn-success btn-block" id="btnContactUs">Post It! </button>
                            </div>
                        </div>
                    </form:form>
                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h3>Sent your message successfully!</h3> </div>
                    <div id="error_message" style="width:100%; height:100%; display:none; "> <h3>Error</h3> Sorry there was an error sending your form. </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
        n=new Date();
		y=n.getFullYear();
		m=n.getMonth()+1;
		d=n.getDate();
		documnet.getElementById("date").innerHTML= m + "/" + d + "/" + y;
        
        </script>
    </body>
</html>