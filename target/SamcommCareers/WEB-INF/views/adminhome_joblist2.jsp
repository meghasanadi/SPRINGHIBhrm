<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
  
<html lang="en">   
<head>   
<meta charset="utf-8">   
<title>Admin_joblist</title>   
<meta name="description" content="Bootstrap.">  
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">   
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://cdn.datatables.net/1.10.2/css/jquery.dataTables.min.css"></style>
<script type="text/javascript" src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
	
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
		<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.1.1/css/responsive.bootstrap.min.css">
		<!-- Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&subset=latin-ext" rel="stylesheet">

        <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		<style type="text/css">
					body{font-family: 'Roboto', sans-serif  !important; font-size:13px  !important;font-weight:500 !important;}

					select.form-control.input-sm {
					    background: #00a1ff !important;
					    border: 0px  !important;
					    border-radius: 0px  !important;
					    color: #FFF  !important;
					        font-weight: 500 !important;
					    font-size: 13px !important;
					    font-family: 'Roboto', sans-serif;
					    -webkit-box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					-moz-box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					}
					
					
					.pagination>li>a, .pagination>li>span{
					     background: #00a1ff !important;
					    border: 0px  !important;
					    border-radius: 0px  !important;
					    color: #FFF  !important;
					        font-weight: 500 !important;
					    font-size: 13px !important;
					    font-family: 'Roboto', sans-serif;
					    -webkit-box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					-moz-box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					}
					
					.table-striped>tbody>tr:nth-of-type(odd) {
					    background-color: #00a1ff!important;
					    color:#00a1ff!important;
					    color:#00a1ff!important;
					    font-size: 13px!important;
					    font-family: 'Roboto', sans-serif;
					    font-weight: 500!important;
					}
					tr.even {
					    background: #bfbfbf!important;
					    color: #000!important;
					    font-size: 13px!important;
					    font-weight: 500!important;
					    font-family: 'Roboto', sans-serif;
					}
					
					th.sorting,.sorting_asc {
					      font-family: 'Roboto', sans-serif;
					      font-weight:500 !important;
					    border:1px solid #FFF !important;
					    color: #FFF;
					    border: 1px solid #93CE37;
					    border-bottom: 3px solid #9ED929;
					    /* Permalink - use to edit and share this gradient: http://colorzilla.com/gradient-editor/#30b3ff+0,00a1ff+100 */
					background: rgb(48,179,255); /* Old browsers */
					background: -moz-linear-gradient(top,  rgba(48,179,255,1) 0%, rgba(0,161,255,1) 100%); /* FF3.6-15 */
					background: -webkit-linear-gradient(top,  rgba(48,179,255,1) 0%,rgba(0,161,255,1) 100%); /* Chrome10-25,Safari5.1-6 */
					background: linear-gradient(to bottom,  rgba(48,179,255,1) 0%,rgba(0,161,255,1) 100%); /* W3C, IE10+, FF16+, Chrome26+, Opera12+, Safari7+ */
					filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#30b3ff', endColorstr='#00a1ff',GradientType=0 ); /* IE6-9 */
					
					    -webkit-border-top-left-radius: 5px;
					    -webkit-border-top-right-radius: 5px;
					    -moz-border-radius: 5px 5px 0px 0px;
					    border-top-left-radius: 5px;
					    border-top-right-radius: 5px;
					}
					
					table#example{border:0px !important;}
					
					input.form-control.input-sm{ background: #00a1ff !important;
					    border: 0px  !important;
					    border-radius: 0px  !important;
					    color: #FFF  !important;
					        font-weight: 500 !important;
					    font-size: 13px !important;
					    font-family: 'Roboto', sans-serif;
					    -webkit-box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					-moz-box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);
					box-shadow: 0px 0px 18px 0px rgba(0,0,0,0.18);}
					
					.custom-checkbox {
					  min-height: 1rem;
					  padding-left: 0;
					  margin-right: 0;
					  cursor: pointer; 
					}
					  .custom-checkbox .custom-control-indicator {
					    content: "";
					    display: inline-block;
					    position: relative;
					    width: 30px;
					    height: 10px;
					    background-color: #818181;
					    border-radius: 15px;
					    margin-right: 10px;
					    -webkit-transition: background .3s ease;
					    transition: background .3s ease;
					    vertical-align: middle;
					    margin: 0 16px;
					    box-shadow: none; 
					  }
					    .custom-checkbox .custom-control-indicator:after {
					      content: "";
					      position: absolute;
					      display: inline-block;
					      width: 18px;
					      height: 18px;
					      background-color: #f1f1f1;
					      border-radius: 21px;
					      box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.4);
					      left: -2px;
					      top: -4px;
					      -webkit-transition: left .3s ease, background .3s ease, box-shadow .1s ease;
					      transition: left .3s ease, background .3s ease, box-shadow .1s ease; 
					    }
					  .custom-checkbox .custom-control-input:checked ~ .custom-control-indicator {
					    background-color: #84c7c1;
					    background-image: none;
					    box-shadow: none !important; 
					  }
					    .custom-checkbox .custom-control-input:checked ~ .custom-control-indicator:after {
					      background-color: #84c7c1;
					      left: 15px; 
					    }
					  .custom-checkbox .custom-control-input:focus ~ .custom-control-indicator {
					    box-shadow: none !important; 
					  }
					  
			</style>
</head>  
<body style="margin:20px auto">  
<div class="container">
 <h5><%@include file="authheader.jsp" %></h5> 
<div class="row header" style="color:#00a1ff!important">
<h3 align="center">Requirements</h3>
</div>
    <table id="myTable" class="table table-striped table-bordered dt-responsive nowrap">  
        <thead>  
          <tr>  
                        <th style="text-align:left;color: black">JobId</th>
                        <th style="text-align:left;color: black">Job Name</th>
                    	<th style="text-align:left;color: black">Posted Date</th>
                    	<th style="text-align:left;color: black">PostedBy</th>
                    	<th style="text-align:left;color: black">Responses</th>
                    	<th style="text-align:center;color: black">Edit/Delete</th>
                    	
<!--                     	<th><em class="fa fa-cog" style="text-align: center"></em></th>
 -->                    	
          </tr>  
        </thead>  
        <tbody>
                  <c:forEach var="job" items="${listJob}">
                          <tr>
                            <td><a href="viewDetails2?id=${job.id}"><h6>${job.jobid}</h6></a></td>
                            <td>${job.job_name} </td>
                            <td><fmt:formatDate value="${job.date}" pattern="dd-MM-yyyy" /></td>
                            <td>${job.postedBy}</td>
<%--                             <td><a href="viewResponses?jobid=${job.jobid}">${job.responses}</a><a href="refreshresponse?jobid=${job.jobid}">Refresh</a></td><a href="refreshresponse?jobid=${job.jobid}"><img border="0" alt="W3Schools" src="logo_w3s.gif" width="100" height="100"></a>
 --%>                            <td><a href="viewResponses?jobid=${job.jobid}" style="margin-right:20px">${job.responses}</a><a href="refreshresponse?jobid=${job.jobid}"><img border="0" alt="W3Schools" src="http://icons.iconarchive.com/icons/hopstarter/soft-scraps/256/Button-Refresh-icon.png" width="25" height="25" ></a>
 
 
                              <td align="center">
	                              <%-- <a href="editJob2?id=${job.id}">Format | </a> --%>
	                               <a href="format?id=${job.id}">Format | </a>
	                              <a href="editJob?id=${job.id}"> Edit | </a>
	                              <a href="deleteJob?id=${job.id}"> Remove</a>
                            </td>
                          </tr>
                     </c:forEach>     
                        </tbody>
      </table>
       <a href="addnewjob?user=${loggedinuser}"> Click to add new jobs here</a>
	  </div>
</body>  
<script>

$(document).ready(function(){
    $('#myTable').dataTable();
});
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>
      <script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
      <script src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>
      <script src="https://cdn.datatables.net/responsive/2.1.1/js/dataTables.responsive.min.js"></script>
      <script src="https://cdn.datatables.net/responsive/2.1.1/js/responsive.bootstrap.min.js"></script>
</html>  