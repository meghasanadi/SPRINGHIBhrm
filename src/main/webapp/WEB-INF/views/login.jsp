<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  
  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:600'>
  
           
					<style type="text/css">
							body{
								margin:0;
								color:#6a6f8c;
								background:c8c8c803;
								font:600 16px/18px 'Open Sans',sans-serif;
							}
							*,:after,:before{-webkit-box-sizing:border-box;box-sizing:border-box}
							.clearfix:after,.clearfix:before{content:'';display:table}
							.clearfix:after{clear:both;display:block}
							a{color:inherit;text-decoration:none}
							
							.login-wrap{
								width:100%;
								margin:auto;
								max-width:525px;
								min-height:670px;
								position:relative;
								background:url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg) no-repeat center;
								-webkit-box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
								        box-shadow:0 12px 15px 0 rgba(0,0,0,.24),0 17px 50px 0 rgba(0,0,0,.19);
							}
							.login-html{
								width:100%;
								height:100%;
								position:absolute;
								padding:90px 70px 50px 70px;
								background:rgba(40,57,101,.9);
							}
							.login-html .sign-in-htm,
							.login-html .sign-up-htm{
								top:0;
								left:0;
								right:0;
								bottom:0;
								position:absolute;
								-webkit-transform:rotateY(180deg);
								        transform:rotateY(180deg);
								-webkit-backface-visibility:hidden;
								        backface-visibility:hidden;
								-webkit-transition:all .4s linear;
								transition:all .4s linear;
							}
							.login-html .sign-in,
							.login-html .sign-up,
							.login-form .group .check{
								display:none;
							}
							.login-html .tab,
							.login-form .group .label,
							.login-form .group .button{
								text-transform:uppercase;
							}
							.login-html .tab{
								font-size:22px;
								margin-right:15px;
								padding-bottom:5px;
								margin:0 15px 10px 0;
								display:inline-block;
								border-bottom:2px solid transparent;
							}
							.login-html .sign-in:checked + .tab,
							.login-html .sign-up:checked + .tab{
								color:#fff;
								border-color:#1161ee;
							}
							.login-form{
								min-height:345px;
								position:relative;
								-webkit-perspective:1000px;
								        perspective:1000px;
								-webkit-transform-style:preserve-3d;
								        transform-style:preserve-3d;
							}
							.login-form .group{
								margin-bottom:15px;
							}
							.login-form .group .label,
							.login-form .group .input,
							.login-form .group .button{
								width:100%;
								color:#fff;
								display:block;
							}
							.login-form .group .input,
							.login-form .group .button{
								border:none;
								padding:15px 20px;
								border-radius:25px;
								background:rgba(255,255,255,.1);
							}
							.login-form .group input[data-type="password"]{
								text-security:circle;
								-webkit-text-security:circle;
							}
							.login-form .group .label{
								color:#aaa;
								font-size:12px;
							}
							.login-form .group .button{
								background:#1161ee;
							}
							.login-form .group label .icon{
								width:15px;
								height:15px;
								border-radius:2px;
								position:relative;
								display:inline-block;
								background:rgba(255,255,255,.1);
							}
							.login-form .group label .icon:before,
							.login-form .group label .icon:after{
								content:'';
								width:10px;
								height:2px;
								background:#fff;
								position:absolute;
								-webkit-transition:all .2s ease-in-out 0s;
								transition:all .2s ease-in-out 0s;
							}
							.login-form .group label .icon:before{
								left:3px;
								width:5px;
								bottom:6px;
								-webkit-transform:scale(0) rotate(0);
								        transform:scale(0) rotate(0);
							}
							.login-form .group label .icon:after{
								top:6px;
								right:0;
								-webkit-transform:scale(0) rotate(0);
								        transform:scale(0) rotate(0);
							}
							.login-form .group .check:checked + label{
								color:#fff;
							}
							.login-form .group .check:checked + label .icon{
								background:#1161ee;
							}
							.login-form .group .check:checked + label .icon:before{
								-webkit-transform:scale(1) rotate(45deg);
								        transform:scale(1) rotate(45deg);
							}
							.login-form .group .check:checked + label .icon:after{
								-webkit-transform:scale(1) rotate(-45deg);
								        transform:scale(1) rotate(-45deg);
							}
							.login-html .sign-in:checked + .tab + .sign-up + .tab + .login-form .sign-in-htm{
								-webkit-transform:rotate(0);
								        transform:rotate(0);
							}
							.login-html .sign-up:checked + .tab + .login-form .sign-up-htm{
								-webkit-transform:rotate(0);
								        transform:rotate(0);
							}
							
							.hr{
								height:2px;
								margin:60px 0 50px 0;
								background:rgba(255,255,255,.2);
							}
							.foot-lnk{
								text-align:center;
							}
					</style>
                </head>

<body>
  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
		<c:url var="loginUrl" value="/login" />
		        <form action="${loginUrl}" method="post" class="form-horizontal">
		                    <c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							
							<div class="sign-in-htm">
								<div class="group">
									<label for="username" class="label">Username</label>
									<input id="username" type="text" name="ssoId" class="input">
								</div>
								<div class="group">
									<label for="password" class="label">Password</label>
									<input id="passord" type="password" class="input" name="password">
								</div>
								

								<div class="input-group input-sm">
	                              <div class="checkbox">
	                                <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>  
	                              </div>
	                            </div>
								
								<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
								
								<div class="group">
									<input type="submit" class="button" value="Sign In">
								</div>
								<div class="hr"></div>
								
								<div class="foot-lnk">
									<a href="newuser">Sign up</a>
								</div>
								
								<div class="foot-lnk">
									<a href="#forgot">Forgot Password?</a>
								</div>
								
							</div>
				       </form>	
					
		</div>
	</div>
</div>
  
  
</body>
</html>
