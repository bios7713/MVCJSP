<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		$("#frm").submit();
	});
	$("#memDel").click(function(){
		
		location.href="memPw.nhn";
	})
});
</script>
</head>
<body>

<form name ="frm" id ="frm" method = "post" action ="memberInfoModifyPro.nhn">
<input type="hidden" name="id" value="${member.userId }"/>
<table border = 1  width = 600 align = "center" cellpadding = 3 >
	<tr><td colspan=2> 회원정보 수정 </td></tr>
	<tr><td >아이디와 비번</td>
		<td >&nbsp;</td></tr>
	<tr><td>사용자 ID</td><td>${member.userId }</td></tr>
	<tr><td >기본정보 입력</td>
		<td >&nbsp;</td></tr>
	<tr><td>사용자 이름</td>
		<td>${member.userName }</td>
	</tr>
	<tr><td> 생년월일 및 성별</td>
		<td>${member.userBirth }</td>
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
		<input type="submit" name="modify" id ="modify" 
				value="수   정" >
		<input type="button" value="취  소" 
			onclick = "javascript:history.back();" />
		<!-- onclick = "javascript:location.href='index.nhn';" -->
		</td>
	</tr>
</table>

</form>
</body>
</html>