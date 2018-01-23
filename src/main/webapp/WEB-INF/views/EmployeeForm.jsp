<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>


<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
		
		 <link href="${contextPath}/static/css/style.css" rel="stylesheet">
		 

		<title>Admin</title>
		
		<style>
							#playground-container {
						height: 500px;
						overflow: hidden !important;
						-webkit-overflow-scrolling: touch;
					}
					body, html{
						 height: 100%;
						background-repeat: no-repeat;
						 /* background:url(http://www.issart.com/blog/wp-content/uploads/2016/10/shutterstock_480408787.jpg); */
						font-family: 'Oxygen', sans-serif;
							background-size: cover;
					}

					.main{
						margin:50px 15px;
					}

					h1.title { 
						font-size: 50px;
						font-family: 'Passion One', cursive; 
						font-weight: 400; 
					}

					hr{
						width: 10%;
						color: #fff;
					}

					.form-group{
						margin-bottom: 15px;
					}

					label{
						margin-bottom: 15px;
					}

					input,
					input::-webkit-input-placeholder {
						font-size: 11px;
						padding-top: 3px;
					}

					.main-login{
						background-color: #fff;
						/* shadows and rounded borders */
						-moz-border-radius: 2px;
						-webkit-border-radius: 2px;
						border-radius: 2px;
						-moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
						-webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
						box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);

					}
					.form-control {
						height: auto!important;
					padding: 8px 12px !important;
					}
					.input-group {
						-webkit-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
						-moz-box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
						box-shadow: 0px 2px 5px 0px rgba(0,0,0,0.21)!important;
					}
					#button {
						border: 1px solid #ccc;
						margin-top: 28px;
						padding: 6px 12px;
						color: #666;
						text-shadow: 0 1px #fff;
						cursor: pointer;
						-moz-border-radius: 3px 3px;
						-webkit-border-radius: 3px 3px;
						border-radius: 3px 3px;
						-moz-box-shadow: 0 1px #fff inset, 0 1px #ddd;
						-webkit-box-shadow: 0 1px #fff inset, 0 1px #ddd;
						box-shadow: 0 1px #fff inset, 0 1px #ddd;
						background: #f5f5f5;
						background: -moz-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #f5f5f5), color-stop(100%, #eeeeee));
						background: -webkit-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: -o-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: -ms-linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						background: linear-gradient(top, #f5f5f5 0%, #eeeeee 100%);
						filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#f5f5f5', endColorstr='#eeeeee', GradientType=0);
					}
					.main-center{
						margin-top: 30px;
						margin: 0 auto;
						max-width: 600px;
						padding: 10px 40px;
						background:#1e73a7;
							color: #FFF;
						text-shadow: none;
						-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
					-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
					box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);

					}
					span.input-group-addon i {
						color: #009edf;
						font-size: 17px;
					}

					.login-button{
						margin-top: 5px;
					}

					.login-register{
						font-size: 11px;
						text-align: center;
					}

		</style>
	</head>
	<body onload="myFunction()">
		<div class="container">
		

			<div class="row main">


				<div class="main-login main-center">
				<h2 align="center">Post the job</h2>
					<form:form action="saveJob" method="post" modelAttribute="job">
					
					 <form:hidden path="id"/>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Jobid</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span> -->
									<%--  <form:hidden path="jobid"/> --%>
									<form:input path="jobid" size="95"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Job Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span> -->
									<form:input path="job_name" size="95" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Key Skills</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span> -->
									<form:input path="keyskills" size="95" />
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="username" class="cols-sm-2 control-label">Location</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-users fa" aria-hidden="true"></i></span> -->
									<form:input path="job_designation" size="95"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Description(2000 words only)</label>
							<div class="cols-sm-10">
								<div class="input-group">
<!-- 									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
 -->									<form:textarea path="description" rows="5" cols="70" accept-charset="ISO-8859-1" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Roles and responsibilities</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span> -->
<%-- 									<td><form:textarea path="job_description" rows="10" cols="54" accept-charset="ISO-8859-1"/></td>
	 --%>								<form:textarea path="roles" rows="10" cols="70" accept-charset="ISO-8859-1" />
							</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Short Description(50 words only)</label>
							<div class="cols-sm-10">
								<div class="input-group">
<!-- 									<span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
 -->									<form:textarea path="shortdescription" rows="5" cols="70" accept-charset="ISO-8859-1" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Experience</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span> -->
									<form:input path="experience" size="95" />
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Salary</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-envelope fa" aria-hidden="true"></i></span> -->
									<form:input path="Salary" size="95"/>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Job Type</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<!-- <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span> -->
									<form:input path="job_type" size="95" />
								</div>
							</div>
						</div>
						

						<div class="form-group">
							<label for="email" class="cols-sm-2 control-label">Status</label>
							<div class="cols-sm-10">
								<!-- <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span> -->
								<form:input path="status" size="95" />						
							</div>
						</div>
						
						<p id="date"></p>
						<form:hidden value="${loggedinuser}" path="postedBy" />						
						<%-- <form:hidden path="responses" size="95"/> --%>
						  
						<div class="form-group ">
<!-- 							<a href="http://deepak646.blogspot.in" target="_blank" type="button" id="button" class="btn btn-primary btn-lg btn-block login-button">SAVE</a>
 -->							<input type="submit" value="Save"><button type="reset" value="Reset">Cancel</button>
						</div>
						
					</form:form>
				</div>
			</div>
		</div>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
		

    <script  src="${contextPath}/static/js/index.js"></script>
		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!-- TinyMCE -->
<script type="text/javascript" src="jscripts/tiny_mce/tiny_mce.js"></script>
<script language="javascript" type="text/javascript" src="js/editor_plugin.js"></script>
<script>
n =  new Date();
y = n.getFullYear();
m = n.getMonth() + 1;
d = n.getDate();
document.getElementById("date").innerHTML = m + "/" + d + "/" + y;

tinyMCE.init({
    mode : "textareas",
    theme : "advanced",
     
     
     /* the URL to the button image to display */
        atd_button_url              : "images/atdbuttontr.gif",
 
        /* the URL of your proxy file */
        atd_rpc_url                 : "server/proxy.php?url=",
 
        /* set your API key */
        atd_rpc_id                  : "dashnine",
 
        /* edit this file to customize how AtD shows errors */
        atd_css_url                 : "css/content.css",
 
        /* this list contains the categories of errors we want to show */
        atd_show_types              : "Bias Language,Cliches,Complex Expression,Diacritical Marks,Double Negatives,Hidden Verbs,Jargon Language,Passive voice,Phrases to Avoid,Redundant Expression",
 
        /* strings this plugin should ignore */
        atd_ignore_strings          : "AtD,rsmudge",
 
        /* enable "Ignore Always" menu item, uses cookies by default. Set atd_ignore_rpc_url to a URL AtD should send ignore requests to. */
        atd_ignore_enable           : "false",
         gecko_spellcheck : true,
     
    theme_advanced_buttons1 : "fontsizeselect,bold,italic,underline,strikethrough,separator,sub,sup,separator,cut,copy,paste,undo,redo,AtD",
    theme_advanced_buttons2 : "justifyleft,justifycenter,justifyright,justifyfull,separator,numlist,bullist,outdent,indent,separator,forecolor,backcolor,separator,hr,link,unlink,table,code",
    theme_advanced_buttons3 : "",
    theme_advanced_fonts : "Arial=arial,helvetica,sans-serif,Courier New=courier new,courier,monospace,Georgia=georgia,times new roman,times,serif,Tahoma=tahoma,arial,helvetica,sans-serif,Times=times new roman,times,serif,Verdana=verdana,arial,helvetica,sans-serif",
    theme_advanced_toolbar_location : "top",
    theme_advanced_toolbar_align : "left",
    theme_advanced_statusbar_location : "bottom",
    plugins : 'asciimath,asciisvg,table,inlinepopups,media,AtD',
   // theme_advanced_toolbar_location: "external",
        
    editor_selector :"mceEditor", 
    width:'100%',
    content_css : "css/content.css",
    forced_root_block : false,
    force_br_newlines : true,
    force_p_newlines : false,
    theme_advanced_resizing : true
     
});
</script>
	
	</body>
</html>