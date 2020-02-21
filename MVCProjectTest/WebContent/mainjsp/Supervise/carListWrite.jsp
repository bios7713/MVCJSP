<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차량등록</title>
	<script language="javascript">
	function addcarlist(){
		boardform.submit();
	}
	</script>
</head>
<body>
<form action="boardWritePro.lb" method="post" name="boardform" enctype="multipart/form-data">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">차 량 등 록</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">차량명</div>
		</td>
		<td>
			<input name="NAME" type="text" size="12" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">차종</div>
		</td>
		<td>
				<select name="CATEGORY" id="CATEGORY">
				<option value="null">차종</option>
				<option value="경형">경형</option>
				<option value="소형">소형</option>
				<option value="중형">중형</option>
				<option value="대형">고급</option>
				<option value="승합">승합</option>
				
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">차량가격 </div>
		</td>
		<td>
			<input name="PRICE" type="text" size="10" maxlength="10" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제조사</div>
		</td>
		<td>
				<select name="COMPANY" id="COMPANY">
				<option value="null">제조사</option>
				<option value="현대">현대</option>
				<option value="기아">기아</option>
				<option value="르노">르노</option>
				<option value="제네시스">제네시스</option>
				
		</td>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td>
			<textarea name="INFO" cols="67" rows="3"></textarea>
		</td>
	</tr>
	<td style="font-fmaily:돋음; font-size:12">
		<div align="center">차량사진</div>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
			<input type="file" name="BORAD_FILE">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
			<a href="javascript:addcarlist()">[등록]</a>&nbsp;&nbsp;
			
			<a href="javascript:history.go(-1)">[뒤로]</a>
		</td>
	</tr>
</table>
</form>
</body>
</html>