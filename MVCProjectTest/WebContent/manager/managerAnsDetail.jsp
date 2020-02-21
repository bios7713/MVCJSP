<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/board.css">
<link rel="stylesheet" href="./css/content.css">
<link rel="stylesheet" href="./css/layout.css">
<script type="text/javascript">
function linkToOpener(URL){
if (window.opener && !window.opener.closed)
window.opener.location = "managerAnsDelete.mg?num=${detail.boardNum} ";
window.close();
}
</script>
</head>
<body>
<style type="text/css">
img {
	max-width: 100%;
}
</style>
					<!-- view 시작 -->
					<article class="bbs-view-con">
						<aside class="bbs-view-top">
							<h1 class="bbs-tit">${detail.boardSubject }</h1>
							<dl class="bbs-write-info">
								<dt>작성자</dt>
								<dd>${detail.boardName }</dd>
								<dt>작성일</dt>
								<dd>${detail.boardDate }</dd>
								<dt>조회수</dt>
								<dd>${detail.readCount }</dd>
							</dl>
						</aside>
						<div class="bbs-view-content">
							${detail.boardContent }
						</div>
						<!-- 코멘트 시작 -->

						<script language="javascript">
						<!--
							function dele() {

								ans = confirm("삭제 하시겠습니까?");
								if (ans == true) {
									form2.action = "/bbs/bbs_view_del.php?bbs_data=aWR4PTM3MyZzdGFydFBhZ2U9MCZsaXN0Tm89MjM2JnRhYmxlPWNzX2Jic19kYXRhJmNvZGU9cWEmc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||";
									form2.submit();
								}

							}

							function modi() {

								form2.action = "/kr/customer/qna.php?bbs_data=aWR4PTM3MyZzdGFydFBhZ2U9MCZsaXN0Tm89MjM2JnRhYmxlPWNzX2Jic19kYXRhJmNvZGU9cWEmc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||&bgu=edit";
								form2.submit();

							}
							-->
						</script>

						<form method="post" action="" name="form2">
							<input type="hidden" name="bbs_view_del" value="1"> <input
								type="hidden" name="bbs_view_edit" value="1"> <input
								type="hidden" name="url" value="/kr/customer/qna.php">
						</form>

						<div class="cm-btn-controls">
							<div class="left-btn-controls">
								<a href="managerAnsModify.mg?num=${detail.boardNum}" class="btn-style02">수정</a>
								<a href="managerAnsDelete.mg?num=${detail.boardNum}" class="btn-style03" onclick="linkToOpener(URL)">삭제</a>
							</div>
							<!-- <span class="button xLarge gray"><a href="/kr/customer/qna.php?reWrite=1&bbs_data=aWR4PTM3MyZzdGFydFBhZ2U9MCZsaXN0Tm89MjM2JnRhYmxlPWNzX2Jic19kYXRhJmNvZGU9cWEmc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||&bgu=write">답변</a></span>  -->
							<div class="right-btn-controls" style="margin-right: 30px;">
								<a href="AnswerBoardReply.ab?num=${detail.boardNum }" class="btn-style01" 
								>답변</a>
							</div>
						</div>
						</article>
</body>
</html>