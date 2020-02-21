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
			
			if ($("#pw").val() == "") {
				$("#pwmsg").html("비밀번호를 입력하세요.");
				$("#pw").focus();
				return false;
			}
			$("#frm").submit();
		});
	});
</script>


<style>
h {
   font-family: 고딕;
   font-size: 1em;
   border-radius: 5px;
   padding : 5px;
   margin : 5px;
   align : center;
}

form,table {
   border: 0px solid rgba(36, 228, 172, 0.29);
   border-spacing: 15px;
}
td{
   border : 0px;
}
</style>

</head>
<body>
	<!-- Form-->
	<div class="form">
		<div class="form-toggle"></div>
		<div class="form-panel one">
			<div class="form-header">
				<h2>
					회원탈퇴
				</h2>
			</div>
			<div class="form-content">
					<form id="frm" name="frm" action="MemberDeletePro.nhn" method="post">
						<div class="form-group">
							<label for="username">비밀번호</label> <input type="password" id="pw" name="pw" required="required" />
						</div>
						
						
						<div class="form-group">
							<button type="submit">탈퇴</button>
						</div>
					</form>
			
			</div>
		</div>
	</div>
	
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</body>
</html>