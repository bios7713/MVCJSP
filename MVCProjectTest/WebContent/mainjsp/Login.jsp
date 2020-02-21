<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="stylesheet" href="css/login.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#id1").focus();
		$("#btn").click(function() {
			if ($("#id1").val() == "") {
				$("#idmsg").html("아이디를 입력하세요.");
				$("#id1").focus();
				return false;
			}
			if ($("#pw").val() == "") {
				$("#pwmsg").html("비밀번호를 입력하세요.");
				$("#pw").focus();
				return false;
			}
			$("#frm").submit();
		});
	});
</script>
</head>
<body>
	<!-- Form-->
	<div class="form">
		<div class="form-toggle"></div>
		<div class="form-panel one">
			<div class="form-header">
				<h2>
					<img src="images/LOGO.png">
				</h2>
			</div>
			<div class="form-content">
					<form id="frm" name="frm" action="loginPro.nhn" method="post">
						<div class="form-group">
							<label for="username">UserId</label> <input type="text" id="id1" name="id1" required="required" /><div>${failId }</div>
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password" id="pw" name="pw" required="required" /><div>${failPw }</div>
						</div>
						<div class="form-group">
							<label class="form-remember"> 
							<input type="checkbox" name="manager" value="manager" />관리자 로그인	</label>
							<a href="MemberForm.nhn" class="form-recovery">회원이 아니신가요?</a>
							<a href="MemberFindPw.nhn"	class="form-recovery">비밀번호를 잊어버리셨나요?</a>
						</div>
						<div class="form-group">
							<button type="submit">로그인!</button>
						</div>
					</form>
			
			</div>
		</div>
	</div>
	
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</body>
</html>