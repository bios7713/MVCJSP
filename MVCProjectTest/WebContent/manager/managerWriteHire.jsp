<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link href="css/jquery.easy_slides.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/slick.css">
<style>
html {
    position: relative;

    min-height: 100%;

    margin: 0;
}
body {

    min-height: 100%;

}
#footer {
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
}
</style>
	<script type="text/javascript">
	function addboard(){
		driverhireform.submit();
		window.location.href="managerMain.mg";
		window.close();
	
	}
	

	</script>
</head>
<body>
<center/>
<form action="managerWriteHirePro.mg" method="post"  name="driverhireform">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">공고 작성</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">글쓴이</div>
		</td>
		<td>
			<input id= "name" name="DRIVER_HIRE_NAME" type="text" size="10" maxlength="10" value="관리자"/>
		</td>
	</tr>

	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제 목</div>
		</td>
		<td>
			<input name="DRIVER_HIRE_SUBJECT" type="text" size="50" maxlength="100" value=""/>
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">마감일</div>
		</td>
		<td>
			<input name="DRIVER_HIRE_DEADLINE" type="date" />
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td>
			<textarea name="DRIVER_HIRE_CONTENT" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
			<a href="javascript:addboard()">[등록]</a>&nbsp;&nbsp;
			
			<a href="javascript:history.go(-1)">[뒤로]</a>
		</td>
	</tr>
	
</table>

</form>
</body>
</html>