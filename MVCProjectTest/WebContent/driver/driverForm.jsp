<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신입사원 채용</title>



<link href="./css/form/progression.css" rel="stylesheet" type="text/css">
<link href="./css/form/css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="./js/form/progression.js"></script>

<script type="text/javascript" >
function alert11(){
	
	
	alert("지원 신청이 완료되었습니다.");
	
}



</script>
</head>
<body>
<div id="warp">
 <jsp:include page="../includeFile/Header.jsp" ></jsp:include>
<form id="myform" action="driverFormPro.dv" method="post" enctype="multipart/form-data">
		<p>
			<label for="이름">이름</label>
			<input  data-progression type="text" name="driverName" value="" placeholder="">
		</p>
		<p>
			<label for="주민번호">주민등록번호</label>
			<input  data-progression type="text" name="driverJumin" value="" placeholder="">
		</p>
		<p>
			<label for="연락처">연락처</label>
			<input  data-progression type="text" name="driverPh" value="" placeholder="">
		</p>
		<p>
			<label for="주소">주소</label>
			<input  data-progression type="text" name="driverAddr" value="" placeholder="">
		</p>
		<p>
			<label for="이메일">e-mail</label>
			<input  data-progression type="text" name="driverEmail" value="" placeholder="">
		</p>
		<p>
			<label for="면허번호">운전면허 번호</label>
			<input  data-progression type="text" name="driverLicense" value="" placeholder="">
		</p>
		<p>
			<label for="운행 가능시간">운행 가능시간</label>
			<input  data-progression type="date"  name="StrDriverDate" value="" placeholder="">
			/
			<input  data-progression type="time"  name="StrDriverTime" value="" placeholder="">
			~
				<input  data-progression type="date"  name="EndDriverDate" value="" placeholder="">
			/
			<input  data-progression type="time"  name="EndDriverTime" value="" placeholder="">
			
		
		</p>
		<p>
			<label for="사진">사진첨부</label>
			<input  data-progression type="file"  name="photo" value="" placeholder="">
		</p>
		<p>
			<label for="경력증명서">경력 증명서첨부</label>
			<input  data-progression type="file"  name="career" value="" placeholder="">
		</p>
		<p>
			<label for="자기소개">간단한 자기소개</label>
			<textarea data-progression name="aboutMe" ></textarea>
		</p>

		<p>
			<input type="submit" value="지원 신청" onclick="alert11()" >
		</p>
	</form>
	</div>
	
<%@include file="../includeFile/Footer.jsp" %>
</body>
</html>