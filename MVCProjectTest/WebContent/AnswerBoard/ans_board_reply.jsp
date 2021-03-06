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
	<script language="javascript">
	function replyboard(){
		boardform.submit();
	}
	</script>
</head>
<body>
	<%@include file="../includeFile/Header.jsp"%><br>
<form action="AnswerBoardReplyAction.ab" method="post" name="boardform">
<input type="hidden" name="BOARD_NUM" value="${reply.boardNum }">
<input type="hidden" name="BOARD_RE_REF" value="${reply.boardReRef }">
<input type="hidden" name="BOARD_RE_LEV" value="${reply.boardReLev }">
<input type="hidden" name="BOARD_RE_SEQ" value="${reply.boardReSeq }">

<center/>
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="2">QNA 게시판</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">글쓴이</div>
		</td>
		<td>
			<input name="BOARD_NAME" type="text" value = "관리자"/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">제 목</div>
		</td>
		<td>
			<input name="BOARD_SUBJECT" type="text" size="50" 
				maxlength="100" value="└ RE:${reply.boardSubject } "/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">내 용</div>
		</td>
		<td>
			<textarea name="BOARD_CONTENT" cols="67" rows="15"> &#10;================ &#10; ${reply.boardContent }</textarea>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">비밀번호</div>
		</td>
		<td>
			<input name="BOARD_PASS" type="password">
		</td>
	</tr>
	
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	
	<tr align="center" valign="middle">
		<td colspan="5">
		<a href="javascript:replyboard()">[등록]</a>&nbsp;&nbsp;
		<a href="javascript:history.go(-1)">[뒤로]</a>
		</td>
	</tr>
</table>
</form>
	<%@include file="../includeFile/Footer.jsp"%>
</body>
</html>