<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탔다 정보수정</title>
<!-- header -->


<!-- footer -->
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link href="css/jquery.easy_slides.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/slick.css">

<script type="text/javascript"
   src="http://code.jquery.com/jquery-latest.js"></script>

<script type="text/javascript">
$(function(){
   $("#frm").submit(function(){
      
      if($("#userPw").val() == ""){
         $("#userPw").focus();
         alert("비밀번호를 입력하세요.");
         return false;
      }
      
      if($("#userPwCon").val() == ""){
          $("#userPwCon").focus();
          alert("비밀번호확인을  입력하세요.");
          return false;
       }
      
      if($("#userPw").val() !=  $("#userPwCon").val()){
         $("#userPw").val("");
         $("#userPwCon").val("");
         $("#userPw").focus();
         alert("비밀번호가 다릅니다.");
         return false;
      }
      
   
      if($("#ph1").val()==""){
         $("#ph1").focus();
         alert("사용자 연락처을 입력하세요.");
         return false;
      }if($("#ph2").val()==""){
         $("#ph2").focus();
         alert("사용자 연락처을 입력하세요.");
         return false;
      }
      
      if($("#userAddr").val()==""){
          $("#userAddr").focus();
          alert("사용자 연락처을 입력하세요.");
          return false;
       }
     
   });
   
});


</script>
<style>
h, td, tr, input, textarea, select, form {
	font-family: 고딕;
	font-size: 1em;
	border-radius: 5px;
	padding : 5px;
	margin : 5px;
}

form,table {
	border: 0px solid rgba(36, 228, 172, 0.29);
	border-spacing: 15px;
}
td{
	border : 1px;
}
</style>




</head>
<body style="background-color: #f0f5f3">
<!-- code -->
	<!-- header -->
	<div id="wrap">	
		<%@include file = "../includeFile/Header.jsp" %>
	<!-- //header -->
<br /><br />
	<center />
		<h1>나의 정보 수정</h1><br />
		<form action ="MemberModifyPro.nhn" id="frm" method="post">		
		
			<table border="1" bgcolor="#cdfdee" cellspacing="1">	
				<tr>
					<td align="center">아이디</td>
					<td>
						<input type="hidden" id="userId" value="${member.userId}">
						${member.userId }
					</td>
				</tr>
				
				<tr>
					<td align="center">비밀번호</td>
					<td><input type="password" id="userPw" name="userPw" size="10" maxlength="12"></td>
				</tr>
			
				<tr>
					<td align="center">비밀번호 확인</td>
					<td><input type="password" id="userPwCon" name="userPwCon" size="10" maxlength="12" /></td>
				</tr>

				<tr>
					<td align="center">이름</td>
					<td>${member.userName }</td>
				</tr>

				<tr>
					<td align="center">성별</td>
					<td><input type="radio" id="userGender" name="userGender" value="M" checked="checked" /> 남자
					<input type="radio" id="userGender" name="userGender" value="F" /> 여자</td>
				</tr>
				<tr>
					<td align="center">생년 월 일</td>
					<td>
						<select name="year">
							<option value ="1970">1970</option><option value ="1971">1971</option><option value ="1972">1972</option><option value ="1973">1973</option><option value ="1974">1974</option>
							<option value ="1975">1975</option><option value ="1976">1976</option><option value ="1977">1977</option><option value ="1978">1978</option><option value ="1979">1979</option>
							
							<option value ="1980">1980</option><option value ="1981">1981</option><option value ="1982">1982</option><option value ="1983">1983</option><option value ="1984">1984</option>
							<option value ="1985">1985</option><option value ="1986">1986</option><option value ="1987">1987</option><option value ="1988">1988</option><option value ="1989">1989</option>
							
							<option value ="1990">1990</option><option value ="1991">1991</option><option value ="1992">1992</option><option value ="1993">1993</option><option value ="1994">1994</option>
							<option value ="1995">1995</option><option value ="1996">1996</option><option value ="1997">1997</option><option value ="1998">1998</option><option value ="1999">1999</option>
							
							<option value ="2000">2000</option><option value ="2001">2001</option><option value ="2002">2002</option><option value ="2003">2003</option><option value ="2004">2004</option>
							<option value ="2005">2005</option><option value ="2006">2006</option>
						</select>년
					
						<select name="month">
							<option value ="01">1</option><option value ="02">2</option><option value ="3">3</option><option value ="4">4</option><option value ="5">5</option><option value ="6">6</option>
							<option value ="07">7</option><option value ="08">8</option><option value ="9">9</option><option value ="10">10</option><option value ="11">11</option><option value ="12">12</option>
						</select>월
						
						<select name="day">
							<option value ="1">1</option><option value ="2">2</option><option value ="3">3</option><option value ="4">4</option><option value ="5">5</option><option value ="6">6</option>
							<option value ="7">7</option><option value ="8">8</option><option value ="9">9</option><option value ="10">10</option><option value ="11">11</option><option value ="12">12</option>
							<option value ="13">13</option><option value ="14">14</option><option value ="15">15</option><option value ="16">16</option><option value ="17">17</option><option value ="18">18</option>
							<option value ="19">19</option><option value ="20">20</option><option value ="21">21</option><option value ="22">22</option><option value ="23">23</option><option value ="19">19</option>
							<option value ="25">25</option><option value ="26">26</option><option value ="27">27</option><option value ="28">28</option><option value ="29">29</option><option value ="30">30</option>
							<option value ="31">31</option>
						</select>일
					</td>
					
					
					
				<tr>
					<td align="center">이메일</td>
					<td><input type="text" id="userEmail1" name="userEmail1" /> @ <input type="text" id= "userEmail2" name="userEmail2" /> &nbsp;&nbsp;
						<select name ="mail3" onchange="this.form.userEmail2.value=this[this.selectedIndex].value;">
							<option>직접입력</option>
							<option>naver.com</option>
							<option>daum.net</option>
							<option>nate.com</option>
							<option>gmail.com</option>
						</select>
					</td>
				</tr>

				<tr>
					<td align="center">주소</td>
					<td><input type="text" id="userAddr" name="userAddr" size="70"/></td>
				</tr>

				<tr>
					<td align="center">연락처</td>
					<td>
						<select name="ph">
							<option value="010">010</option>
							<option value="010">011</option>
							<option value="010">018</option>
							<option value="010">019</option>
						</select>-
						<input type="text" id="ph1" name="ph1"  size="3" maxlength="4" />-
						<input type="text" id="ph2" name="ph2"  size="3" maxlength="4" />
					</td>
				</tr>
			</table>
			<input type="submit" value="수정하기" id="frm" /> <input type="reset" value="다시 입력" />
		</form>
		<br /><br /><br />
		 
		<br /><br /><br /><br /><br /><br /><br />
	</div>
	<!-- footer -->
	<%@include file="../includeFile/Footer.jsp" %>
	<!-- footer -->
	<style type="text/css">
		*{padding:0px; margin:0px;}
	</style>
	

<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
	

</body>
</html>