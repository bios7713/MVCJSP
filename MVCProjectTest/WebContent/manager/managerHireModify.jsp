<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	function modifyboard(){
		modifyform.submit();
	
	}
	</script>
</head>
<body>
<form action="managerHireModifyPro.mg" method="pose"  name="modifyform">
<input type="hidden" name="BOARD_NUM" value="${hire.boardNum }">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">공고 수정</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">글쓴이</div>
		</td>
		<td>
			<input id= "name" name="DRIVER_HIRE_NAME" type="text" size="10" maxlength="10" value="${hire.boardName }"/>
		</td>
	</tr>

	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제 목</div>
		</td>
		<td>
			<input name="DRIVER_HIRE_SUBJECT" type="text" size="50" maxlength="100" value="${hire.boardSubject }"/>
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">마감일</div>
		</td>
		<td>
			<input name="DRIVER_HIRE_DEADLINE" type="date" value="${hire.deadLine }" />
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td>
			<textarea name="DRIVER_HIRE_CONTENT" cols="67" rows="15">${hire.boardContent }</textarea>
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
			<a href="javascript:modifyboard()">[등록]</a>&nbsp;&nbsp;
			
			<a href="javascript:history.go(-1)">[뒤로]</a>
		</td>
	</tr>
	
</table>
</form>

</body>
</html>