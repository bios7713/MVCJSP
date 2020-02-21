<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
window.opener.location = "managerHireDelete.mg?num=${driverHire.boardNum} ";
window.close();
}
</script>
</head>
<body>

<article class="bbs-view-con">
					<aside class="bbs-view-top">
						<h1 class="bbs-tit">${driverHire.boardSubject }</h1>
						<dl class="bbs-write-info">
							<dt>작성자</dt>
							<dd>${driverHire.boardName }</dd>
							<dt>작성일</dt>
							<dd><fmt:formatDate value="${driverHire.boardDate }" type="date" pattern="yyyy-MM-dd"/></dd>
							<dt>조회수</dt>
							<dd>${driverHire.readCount }</dd>
							<dt>마감일</dt>
							<dd><fmt:formatDate value="${driverHire.deadLine }" type="date" pattern="yyyy-MM-dd"/></dd>
						</dl>
					</aside>
					<div class="bbs-view-content">
						${driverHire.boardContent}
					</div>
					<!-- 코멘트 시작 -->

					<script language="javascript">
					<!--
						function dele() {

							ans = confirm("삭제 하시겠습니까?");
							if (ans == true) {
								form2.action = "/bbs/bbs_view_del.php?bbs_data=aWR4PTMzJnN0YXJ0UGFnZT0wJmxpc3RObz0wJnRhYmxlPWNzX2Jic19kYXRhJmNvZGU9bm90aWNlJnNlYXJjaF9pdGVtPSZzZWFyY2hfb3JkZXI9||";
								form2.submit();
							}

						}

						function modi() {

							form2.action = "/kr/customer/notice.php?bbs_data=aWR4PTMzJnN0YXJ0UGFnZT0wJmxpc3RObz0wJnRhYmxlPWNzX2Jic19kYXRhJmNvZGU9bm90aWNlJnNlYXJjaF9pdGVtPSZzZWFyY2hfb3JkZXI9||&bgu=edit";
							form2.submit();

						}
						-->
					</script>

					<form method="post" action="" name="form2">
						<input type="hidden" name="bbs_view_del" value="1">
						<input type="hidden" name="bbs_view_edit" value="1">
						<input type="hidden" name="url" value="/kr/customer/notice.php">
					</form>

					<div class="cm-btn-controls">
						<div class="right-btn-controls">
							<a href="driverNotice.dv" class="btn-style01">목록</a>
							<a href="" class="btn-style03" onclick="linkToOpener(URL)">삭제</a>
							<a href="managerHireModify.mg?num=${driverHire.boardNum }" class="btn-style02">수정</a>
						</div>
					</div>


					<!-- 코멘트 종료-->
				</article>

</body>
</html>