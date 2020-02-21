<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String path = request.getParameter("code");
 	String urlPath = null;
 	if(path == null){
 		path = "1";
 	}
 	if(path.equals("1")){
 		urlPath= "Test/1.jsp";		
 	}else if(path.equals("2")){
 		urlPath= "Test/2.jsp";	
 	}else if(path.equals("3")){
 		urlPath= "Test/3.jsp";	
 	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include3</title>
</head>
<body>
include3.jsp 페이지!!
<!--  	 <%@ include file =urlPath %>  -->
<br/>

액션태그 출력..
</body>
</html>