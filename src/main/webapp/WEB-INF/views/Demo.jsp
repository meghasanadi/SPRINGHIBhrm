<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row">
         
          <c:forEach var="doc" items="${documents}">
			 <div class="col-md-4 mb-4">
	          <div class="card h-100">
	            <div class="card-body">
	            
	              <h5 class="card-title">${doc.id}</h5>
	              <h4 class="card-title">${doc.name}</h4>
	              <h4 class="card-title">${doc.content}</h4>
	            </div>
	          </div>
        </div>
          </c:forEach>
        </div>
</body>
</html>