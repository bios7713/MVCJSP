<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String path = request.getParameter("code");
    	if(path==null) path = "1";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include2</title>
</head>
<body>
 <h1>Include2.jsp 내용</h1>
	<%if(path.equals("1")){%>
			<jsp:include page="Test/1.jsp"></jsp:include>
		<% }else if(path.equals("2")){%>
			<jsp:include page="Test/2.jsp"></jsp:include>		
		<%}else if(path.equals("3")){%>
			<jsp:include page="Test/3.jsp"></jsp:include>
		<%} %>
		
		<br/>
	Include 지시문에 의해 출력된 내용 끝 ...<br/>
	
</body>
</html>