<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>


<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Career Home</title>
    <link rel="icon" href="http://cdn.mysitemyway.com/etc-mysitemyway/icons/legacy-previews/icons-256/3d-glossy-orange-orbs-icons-alphanumeric/104887-3d-glossy-orange-orb-icon-alphanumeric-letter-s.png" type="image/x-icon">

    <!-- Bootstrap core CSS -->
    <link href="${contextPath}/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${contextPath}/static/css/business-frontpage.css" rel="stylesheet">
    
    <!-- Small buisness -->
    <link href="${contextPath}/static/css/small-frontpage.css" rel="stylesheet">
    
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    
    <style type="text/css">
			 .social:hover {
			     -webkit-transform: scale(1.1);
			     -moz-transform: scale(1.1);
			     -o-transform: scale(1.1);
			 }
			 .social {
			     -webkit-transform: scale(0.8);
			     /* Browser Variations: */
			     
			     -moz-transform: scale(0.8);
			     -o-transform: scale(0.8);
			     -webkit-transition-duration: 0.5s;
			     -moz-transition-duration: 0.5s;
			     -o-transition-duration: 0.5s;
			 }
			
			/*
			    Multicoloured Hover Variations
			*/
			 
			 #social-fb:hover {
			     color: #3B5998;
			 }
			 #social-tw:hover {
			     color: #4099FF;
			 }
			 #social-gp:hover {
			     color: #d34836;
			 }
			 #social-em:hover {
			     color: #f39c12;
			 }
/* 			 .text-center { */
/* 				    text-align: center!important; */
/* 				} */
/* 				.rounded { */
/* 				    border-radius: .25rem!important; */
/* 				} */
			 .cta {
			    position: relative;
			    margin-top: 70px;
			    margin: .5rem;
			    background-color: #b4b7b9;
			    border-radius: .25rem!important;
			    text-align: center!important;
			    }
			  .cta-inner {
			    position: relative;
			    padding: 3rem;
			    margin: 0.5rem;
			    background-color: fade-out($white, 0.15);
			    }
			    &:before {
			      border-radius: 0.5rem;
			      content: '';
			      position: absolute;
			      top: -0.5rem;
			      bottom: -0.5rem;
			      left: -0.5rem;
			      right: -0.5rem;
			      border: 0.25rem solid fade-out($white, 0.15);
    }
  }
}
	.form-style-8{
    font-family: 'Open Sans Condensed', arial, sans;
    width: 300px;
    height:310px;
    padding: 30px;
    background: #FFFFFF;
    margin: 50px auto;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 0.22);

}
.form-style-8 h2{
    background: #4D4D4D;
    text-transform: uppercase;
    font-family: 'Open Sans Condensed', sans-serif;
    color: #797979;
    font-size: 18px;
    font-weight: 100;
    padding: 20px;
    margin: -30px -30px 30px -30px;
}
.form-style-8 input[type="text"],
.form-style-8 input[type="date"],
.form-style-8 input[type="datetime"],
.form-style-8 input[type="email"],
.form-style-8 input[type="number"],
.form-style-8 input[type="search"],
.form-style-8 input[type="time"],
.form-style-8 input[type="url"],
.form-style-8 input[type="password"],
.form-style-8 textarea,
.form-style-8 select 
{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    outline: none;
    display: block;
    width: 100%;
    padding: 7px;
    border: none;
    border-bottom: 1px solid #ddd;
    background: transparent;
    margin-bottom: 10px;
    font: 16px Arial, Helvetica, sans-serif;
    height: 45px;
}
.form-style-8 textarea{
    resize:none;
    overflow: hidden;
}
.form-style-8 input[type="button"], 
.form-style-8 input[type="submit"]{
    -moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    box-shadow: inset 0px 1px 0px 0px #45D6D6;
    background-color: #2CBBBB;
    border: 2px solid #27A0A0;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 14px;
    padding: 8px 18px;
    text-decoration: none;
    text-transform: uppercase;
}
.form-style-8 input[type="button"]:hover, 
.form-style-8 input[type="submit"]:hover {
    background:linear-gradient(to bottom, #34CACA 5%, #30C9C9 100%);
    background-color:#34CACA;
}
	 
    </style>

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
      
        <a class="navbar-brand" href="http://careers.samcomm.com"/><img src="http://companies.naukri.com/samcomm-careers/wp-content/uploads/sites/1322/2014/11/logo.png" alt="Samcomm Technologies" title="Samcomm Technologies">
        </a>
        
       
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="http://www.samcomm.com">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <%--  <li class="nav-item">
              <a class="nav-link" href="http://careers.samcomm.com/">Overview</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://careers.samcomm.com/jobs/">Current Openings</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://careers.samcomm.com/contact/">Contact Us</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${contextPath}/list">Recruiter</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${contextPath}/login">Sign In</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${contextPath}/newuser">Sign In/Sign Up</a>
            </li> --%>
             <%--  <h6><%@include file="authheader.jsp" %></h6>
             --%>
          </ul>
        </div>
      </div>
    </nav>
       

    <!-- Header with Background Image -->
    <header class="business-header">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
           <!--  <h6 class="display-3 text-center text-white mt-4">Growing Innovation Glowing Values</h6> -->
          </div>
        </div>
      </div>
    </header>
    
    
    
    <div class="col-xl-9 mx-auto" style="margin-top: 30px; ">
    <div class="cta">
      <div class="container">
        <div class="row">
          <div class="col-xl-9 mx-auto">
            <div class="cta-inner text-center rounded">
              <h2 class="section-heading mb-4">
                <span class="section-heading-upper"></span>
              </h2>
              		
              		 <div class="generic-container">
        <div class="panel panel-default">
              <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">List of Documents </span></div>
            <div class="tablecontainer">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>File Name</th>
                           <!--  <th>bytes</th> -->
                            <th>Download</th>
                          
                            <th width="10"></th>
                            <th width="10"></th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${documents}" var="doc" varStatus="counter">
                        <tr>
                            <td>${doc.name}</td>
                           <%--  <td><a href="addd-document-${app.user_id}"><h6>${doc.content}</h6></a></td> --%>
                            <td><a href="<c:url value='/download-document-${doc.id}' />" class="btn btn-success custom-width">download</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                               
            </div>
         </div>
         
               
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="row">
			 <div class="col-md-8 mb-8">
	          <div class="card h-200">
	            <div class="card-body" align="left">
	              <span class="section-heading-upper">About Candidate</span><br>
	            
	              First Name : ${app.firstname}<br>
	              Last Name  : ${app.lastname}<br>
	              Email : ${app.email}<br>
	              Phone number  : ${app.phoneno}<br>
	              Current Company : ${app.curcompany}<br>
	              Location  : ${app.location}<br>
	              DOB : ${app.dob}<br>
	              
	            </div>
	            <div class="card-footer">
	            </div>
	          </div>
        </div>
        </div>
      </div>
    </div>
    
    </div> 
    
   
	
      <!-- /.row -->

    
    <!-- /.container -->

    <!-- Footer -->
    
      <div class="container">
       <h2 class="mt-4" align="center">Follow Us</h2>
          <div class="text-center center-block">
           
            <br />
                <a href="https://www.facebook.com/samcomm.technologies"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
	            <a href="https://twitter.com/samcommtech"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
	            <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
	            <a href="mailto:hr@Samcomm.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>
			</div>
        </div>
        <p class="m-4 text-center text-white">Copyright 2017 © Samcomm. All rights reserved.</p>
     
   

    <!-- Bootstrap core JavaScript -->
    <script src="${contextPath}/static/vendor/jquery/jquery.min.js"></script>
    <script src="${contextPath}/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
