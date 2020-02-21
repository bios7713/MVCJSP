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
		<br>
		<br>
		<div id="container">
			<!-- visual -->
			<section id="visual"
				style="background: url('/kr/images/content/sub_visual.jpg') no-repeat left center;">
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
						<li ><a href="driverGuide.dv">모집요강</a></li>
						<li class="on"><a href="driverNotice.dv">채용공고</a></li>
					</ul>
				</aside>
				<!-- //sidebar -->
				<!-- content -->
				<section id="content">
					<div class="sub-location clearfix">
						<h3>채용공고</h3>
						<ul class="clearfix">
							<li><i class="material-icons"></i></li>
							<li class="arrow">&gt;</li>
							<li>채용안내</li>
							<li class="arrow">&gt;</li>
							<li>채용공고</li>
						</ul>
					</div>
					<!-- 컨텐츠 내용 -->
					<!-- 여기부터 start -->

					<script language="javascript">
					
					</script>



					<!-----------------------------------------------------  게시판 리스트 시작 ------------------------------------------------------------------------------------------------------------------------------------->





					<!-- 답변형/공지사항형 시작 -->
					<article class="board-basic-list">
						<p class="total-list-con">
							TOTAL : <b>${count }</b> 개
						</p>
						<div class="bbs-list-tbl">
							<p class="bbs-list-head">
								<span style="width: 7%;">번호</span> <span style="width: 59%;">제목</span>
								<span style="width: 12%;">작성자</span> <span style="width: 12%;">채용마감일</span>
								<span style="width: 10%;">조회수</span>
							</p>
							<!-- 공지사항 -->
							<!-- 공지사항 -->

							<!-- bbs loop start -->
							<c:forEach items="${hireBoardList }" var = "board" varStatus = "status">
								<div class="bbs-list-row">
								
									<div class="column bbs-no-data"></div>
									
									<div class="column bbs-title">
										<a href="driverHireDetail.dv?num=${board.boardNum }">
											<div class="bbs-subject-con">
												<strong class="bbs-subject-txt">${board.boardSubject }</strong>
												<div class="bbs-subject-icons"></div>
											</div>
										</a>
									</div>
									<div class="column bbs-inline" data-label="작성자">${board.boardName }</div>
									<div class="column bbs-inline" data-label="채용마감일" ><fmt:formatDate value="${board.boardDate }" type="date" pattern="yyyy-MM-dd"/></div>
									<div class="column bbs-inline" data-label="조회수">${board.readCount }</div>
								</div>
							</c:forEach>
							<!-- bbs loop end -->
						</div>
						<div class="paging paging-normal">
							<a href="#none" class="cur">1</a>
							<a href="#" onfocus="this.blur()"> 2</a>
							<a href="#" onfocus="this.blur()"> 3</a>
							<a href="#" onfocus="this.blur()"> 4</a>
							<a href="#" onfocus="this.blur()"> 5</a>
							<a href="#" onfocus="this.blur()"> 6</a>
							<a href="#" onfocus="this.blur()"> 7</a>
							<a href="#" onfocus="this.blur()"> 8</a>
							<a href="#" onfocus="this.blur()"> 9</a>
							<a href="#" onfocus="this.blur()"> 10</a>&nbsp;&nbsp;
							<a href="#" onfocus="this.blur()" class="paging-arrow"> <i class="material-icons" title="다음"></i></a>&nbsp;&nbsp;
						</div>
					
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