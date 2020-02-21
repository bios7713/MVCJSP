<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>질문과 답변</title>
<link rel="stylesheet" href="css/layout.css">
<link rel="stylesheet" type="text/css" href="css/slick.css">
<!-- <link rel="Shortcut Icon" href="http://www.odigarentcar.com/favicon.ico">
<link rel="apple-touch-icon-precomposed" href="http://www.odigarentcar.com/apple-touch-icon.png"> -->
<!-- 파비콘 사용시 주석해제 -->
<meta name="Title" content="어디가렌트카 - 질문과답변 - 공지사항">
<meta name="Subject" content="공지사항">
<meta name="Author" content="">
<meta name="Keywords" content="">
<meta name="Description" content="">
<meta name="Robots" content="INDEX,FOLLOW">
<meta property="og:type" content="website">
<meta property="og:title" content="어디가렌트카 - 질문과답변 - 공지사항">
<meta property="og:description" content="">
<meta property="og:image"
	content="http://www.odigarentcar.com/images/logo.png">
<meta property="og:url"
	content="http://www.odigarentcar.com/kr/customer/notice.php">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="어디가렌트카 - 질문과답변 - 공지사항">
<meta name="twitter:description" content="">
<meta name="twitter:image"
	content="http://www.odigarentcar.com/images/logo.png">
<meta name="twitter:domain"
	content="http://www.odigarentcar.com/kr/customer/notice.php">
<meta name="google-site-verification" content="">
<meta name="naver-site-verification" content="">
<meta name="viewport" content="width=1200">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<!-- 모바일사이트, 반응형사이트 제작시 사용 -->
<link rel="stylesheet" href="http://www.odigarentcar.com/css/reset.css">
<link rel="stylesheet" href="http://www.odigarentcar.com/css/board.css">
<link rel="stylesheet"
	href="http://www.odigarentcar.com/css/board_responsive.css">
<link rel="stylesheet" href="http://www.odigarentcar.com/css/common.css">
<link rel="stylesheet" href="http://www.odigarentcar.com/css/editor.css">
<link rel="stylesheet" href="http://www.odigarentcar.com/css/layout.css">
<link rel="stylesheet"
	href="http://www.odigarentcar.com/css/content.css">
<!-- <link rel="stylesheet" href="http://www.odigarentcar.com/css/board.css"> -->
<!-- 게시판관련 제작시 사용 -->
<!-- <link rel="stylesheet" href="http://www.odigarentcar.com/css/member.css"> -->
<!-- 회원관련 폼 제작시 사용 -->

<!--[if lt IE 9]>
<script src="http://www.odigarentcar.com/js/vendor/html5shiv.js"></script>
<script src="http://www.odigarentcar.com/js/vendor/respond.min.js"></script>
<![endif]-->

<script
	src="http://atm.acecounter.com/ac.js?tid=106730DP-40-A&amp;hsn=www.odigarentcar.com&amp;hrf=in&amp;dvp=0&amp;tgp=&amp;tn1=&amp;tn2=0&amp;tn3=0&amp;tw1=&amp;tw2=&amp;tw3=&amp;tw4=&amp;tw5=&amp;tw6=&amp;tw7=&amp;rnd=1580373634291&amp;py=0"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="http://www.odigarentcar.com/js/vendor/jquery-1.8.3.min.js"><\/script>')
</script>
<script src="http://www.odigarentcar.com/js/vendor/jquery.easing.1.3.js"></script>
<script src="http://www.odigarentcar.com/js/common.js"></script>

<!-- 구글아이콘 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- 메인비주얼 플러그인 -->
<script src="js/slick.js"></script>

<!-- 개발  -->
</head>
<body>
	<div id="wrap">
		<%@include file="../includeFile/Header.jsp"%><br>
		<br> <br>
		<div id="container">
			<!-- visual -->
			<section id="visual" style="background: url('/kr/images/content/sub_visual.jpg') no-repeat left center;">
				<div class="visual-txt area">
					<h2>
						<span>질문</span>과 답변
					</h2>
					<p>
						<strong>탔다!</strong>의 <strong>고객센터</strong>페이지입니다
					</p>
				</div>
			</section>
			<!-- //visual -->
			<!-- middleArea -->
			<div id="middleArea" class="area">
				<!-- sidebar -->
				<aside id="sidebar">
					<ul class="snb">
						<li class="on"><a href="AnswerBoard.ab">질문과답변</a></li>
						<li><a href="NoticeBoard.nb">공지사항</a></li>
					</ul>
				</aside>
				<!-- //sidebar -->
				<!-- content -->
				<section id="content">
					<div class="sub-location clearfix">
						<h3>질문과 답변</h3>
						<ul class="clearfix">
							<li><i class="material-icons"></i></li>
							<li class="arrow">&gt;</li>
							<li>질문과답변</li>
							<li class="arrow">&gt;</li>
							<li>질문과 답변</li>
						</ul>
					</div>
					<!-- 컨텐츠 내용 -->
					<!-- 여기부터 start -->
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
								<a href="AnswerBoardModify.ab?num=${detail.boardNum}" class="btn-style02">수정</a>
								<a href="AnswerBoardDelete.ab?num=${detail.boardNum}" class="btn-style03">삭제</a>
							</div>
							<!-- <span class="button xLarge gray"><a href="/kr/customer/qna.php?reWrite=1&bbs_data=aWR4PTM3MyZzdGFydFBhZ2U9MCZsaXN0Tm89MjM2JnRhYmxlPWNzX2Jic19kYXRhJmNvZGU9cWEmc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||&bgu=write">답변</a></span>  -->
							<div class="right-btn-controls">
								<a href="AnswerBoardReply.ab?num=${detail.boardNum }" class="btn-style01">답변</a>
								<a href="AnswerBoard.ab" class="btn-style01">목록</a>
							</div>
						</div>


						<!-- 코멘트 종료-->
					</article>
					<!-- // 여기까지 end -->
					<!-- //컨텐츠 내용 -->
				</section>
				<!-- //content -->
			</div>
			<!-- //middleArea -->
		</div>
		<%@include file="../includeFile/Footer.jsp"%>
	</div>
</body>
</html>