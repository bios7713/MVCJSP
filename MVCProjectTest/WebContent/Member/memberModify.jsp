<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" 
	src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#modify").click(function(){
		if($("#pw").val()==""){
			alert("비밀번호 입력하세요");
			$("#pw").focus();
			return false;
		}
		$("#frm").submit();
	});
	$("#memPw").click(function(){
		location.href="memPw.nhn";
	})
});
</script>
</head>
<body>

<form name ="frm" id ="frm" method = "post" action ="memberModifyPro.nhn">
<table border = 1  width = 600 align = "center" cellpadding = 3 >
	<tr><td colspan=2> 회원정보 수정 </td></tr>
	<tr><td >아이디와 비번</td>
		<td >&nbsp;</td></tr>
	<tr><td>사용자 ID</td><td>${member.userId }</td></tr>
	<tr><td>비밀번호</td>
		<td><input type="password" id="pw" name ="userPw" />
		  <div></div>
		  </td>
	</tr>
	<tr><td >기본정보 입력</td>
		<td >&nbsp;</td></tr>
	<tr><td>사용자 이름</td>
		<td>${member.userName }</td>
	</tr>
	<tr><td> 생년월일 및 성별</td>
		<td><fmt:formatDate value="${member.userBirth}" type="date" pattern="yy-MM-dd"/>
		&#38;
		<c:if test="${member.userGender == 'M' }">
			남자
		</c:if>
		<c:if test="${member.userGender == 'F' }">
			여자
		</c:if>	
		</td>
		
	</tr>
	<tr><td>사용자 이메일</td>
	    <td><input type ="text" id ="email" name ="userEmail" 
	        value = "${member.userEmail }"/></td></tr>
	<tr><td>사용자 주소</td>
	    <td>
	    <input type ="text" id ="addr" name ="userAddr" 
	        value = "${member.userAddr }"/>
	    </td>
	</tr>
	<tr><td>연락처 1</td>
	    <td>
	    <input type ="text" id ="memberPh1" name ="userPh1" 
	        value = "${member.userPh1 }"/>
	    </td>
	</tr>
	<tr><td>연락처 2</td>
	    <td>
	    <input type ="text" id ="memberPh2" name ="userPh2" 
	        value = "${member.userPh2 }"/>
	    </td>
	</tr>
	<tr>
		<td colspan=2>
		<input type="button" name="modify" id ="modify" 
				value="수   정" >
		<input type="button" value="취  소" 
			onclick = "javascript:history.back();" />
		<!-- onclick = "javascript:location.href='main.jsp';" -->
		<input type="button" value="비밀번호 변경" id ="memPw"/>
		</td>
	</tr>
</table>

</form>
</body>
</html>