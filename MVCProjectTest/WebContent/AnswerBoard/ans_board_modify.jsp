<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
		<section id="visual"
			style="background: url('/kr/images/content/sub_visual.jpg') no-repeat left center;">
			<div class="visual-txt area">
				<h2>
					<span>질문</span>과 답변
				</h2>
				<p>
					<strong>어디가렌트카</strong>의 <strong>고객센터</strong>페이지입니다
				</p>
			</div>
		</section>
		<!-- //visual -->
		<!-- middleArea -->
		<div id="middleArea" class="area">
			<!-- sidebar -->
			<aside id="sidebar">
				<ul class="snb">
					<li class="on"><a
						href="QNABoard.qb">질문과답변</a></li>
					<li><a
						href="NoticeBoard.nb">공지사항</a></li>
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

				<script type="text/javascript">
					function send() {

						var form = document.bbs_passwd_form;

						if (form.pwd.value == "") {
							alert("비밀번호를 입력해 주세요.");
							form.pwd.focus();
						} else {
							form.submit();
						}

					}
				</script>
				<form name="bbs_passwd_form" action="QNABoardModify.qb" method="post" onsubmit="javascript:send();return false;">
					<input type="hidden" name="bbs_view_edit" value="1">
					<div class="bbs-password-input-con">
						<p class="password-input-tit">
							해당글은 비밀글입니다. <b>글 작성 시 입력하신 비밀번호</b>를 입력해주세요.
						</p>
						<div class="bbs-password-input-box">
							<img src="images/board/lock_icon1.png" alt="비밀글"> <label for="pwdInput">비밀번호 입력</label>
							<input type="password" name="pwd" id="pwdInput">
						</div>
						<div class="cm-btn-controls">
							<button type="button" class="btn-style01" onclick="javascript:send();return false;">확인</button>
						</div>
					</div>
				</form>
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