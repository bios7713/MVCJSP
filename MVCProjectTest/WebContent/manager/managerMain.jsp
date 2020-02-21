<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
		href='http://fonts.googleapis.com/css?family=PT+Sans:400,700|Merriweather:400italic,400'
		rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="./css/manager/reset.css">
<!-- CSS reset -->
<link rel="stylesheet" href="./css/manager/style.css">
<link rel="stylesheet" href="./css/manager/rec.css">

<link rel="stylesheet" href="./css/manager/table.css">
<!-- Resource style -->
<script src="./js/manager/modernizr.js"></script>
<!-- Modernizr -->

<title>관리자 페이지 입니다..!!</title>




</script>
</head>
<body>

		<a class="cd-nav-trigger cd-text-replace" href="#primary-nav">Menu<span
				aria-hidden="true" class="cd-icon"></span></a>
		<!--------------------------------------------  MAIN PAGE------------------------------------------------ -->
		<div class="cd-projects-container">
				<ul class="cd-projects-previews">
						<li><a href="#0">
										<div class="cd-project-title">
												<h2>차량관리 페이지</h2>

										</div>
						</a></li>

						<li><a href="#0">
										<div class="cd-project-title">
												<h2>채용관리 페이지</h2>
												<p>Welcome to the HELL</p>
										</div>
						</a></li>

						<li><a href="#0">
										<div class="cd-project-title">
												<h2>게시판관리 페이지</h2>
										</div>
						</a></li>

						<li><a href="#0">
										<div class="cd-project-title">
												<h2>회원관리 페이지</h2>
										</div>
						</a></li>
				</ul>
				<!-- .cd-projects-previews -->
				<!--------------------------------------------  //MAIN PAGE------------------------------------------------ -->
				<ul class="cd-projects">
						<li>
								<div class="preview-image">
										<div class="cd-project-title">
												<h2>차량관리 페이지</h2>
										</div>
								</div>

								<div class="cd-project-info">
										<center />

										<table class="table">
												<tr>
														<th>선택</th>
														<th>번호</th>
														<th>차량명</th>
														<th>차종</th>
														<th>제 조 사</th>
														<th>차량 상태</th>
												</tr>



												<!--  for문사용.. -->
												<c:forEach var="carList1" items="${carList}" step="1"
														varStatus="count">
														<tr align="center" valign="middle" bordercolor="#333333"
																onmouseover="this.style.backgroundColor='F8F8F8'"
																onmouseout="this.style.backgroundColor=''">
																<td height="23"
																		style="font-family: Tahoma; font-size: 12pt;">

																		<div align="center">
																				<input type="checkbox" id="chek">
																		</div>
																</td>
																<td height="23"
																		style="font-family: Tahoma; font-size: 12pt;">

																		<div align="center">${carList1.no }</div>
																</td>


																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">${carList1.name }</div>
																</td>

																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">${carList1.category }</div>
																</td>
																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">${carList1.company }</div>
																</td>
																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">${carList1.usePeople }</div>
																</td>
														</tr>

												</c:forEach>
												<!--  //for문 여기까지 -->

												<tr align=center height=20>
														<td colspan=7
																style="font-family: Tahoma; font-size: 10pt; border-bottom-width: 0px;">
																[이전]&nbsp; <a href="">[이전]</a>&nbsp;
																[1][2][3][4][5][6][7][8][9][10] <a href="#"></a>&nbsp;
																[다음] <a href="./BoardList.bd?page=">[다음]</a>

														</td>
												</tr>
										</table>




										<h1>
												<a href="./CarWrite.mg">차량 등록</a>
										</h1>
										<br />
										<h1>
												<a href="./CarDelete.cs">차량상태 변경</a>
										</h1>



								</div> <!-- .cd-project-info -->
						</li>

						<li>
								<div class="preview-image">
										<div class="cd-project-title">

												<h2>채용관리 페이지</h2>
												<p>Welcome to the HELL</p>
										</div>
								</div>

								<div class="cd-project-info">

										<div class="main">
												<input type="radio" id="tab1" name="tabs" checked
														style="display: none;"> <label for="tab1">지원자
														현황 </label> <input type="radio" id="tab2" name="tabs"
														style="display: none;"> <label for="tab2">면접
														대기자 명단 </label>

												<section id="content1">
														<center />


														<table class="table">
																<tr>
																		<th>모집번호</th>
																		<th>이름</th>
																		<th>운행가능시간</th>
																		<th>점수</th>
																		<th>면접</th>
																</tr>



																<!--  for문사용.. -->
																<c:forEach var="driver" items="${driverList}" step="1"
																		varStatus="count">
																		<tr align="center" valign="middle"
																				bordercolor="#333333"
																				onmouseover="this.style.backgroundColor='F8F8F8'"
																				onmouseout="this.style.backgroundColor=''">
																				<td height="23"
																						style="font-family: Tahoma; font-size: 12pt;">
																						${driver.driverDNO}</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																								<a
																										href="./driverDetail.dv?num=${driver.driverDNO}"
																										onclick="window.open(this.href,'detail','width=700; height=250;'); return false;">${driver.driverName }</a>
																						</div>
																				</td>

																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																								<fmt:formatDate value="${driver.strDriverDate }"
																										pattern="yy/MM/dd" />
																								~
																								<fmt:formatDate value="${driver.strDriverTime }"
																										pattern="kk:mm" />
																								에서
																								<fmt:formatDate value="${driver.endDriverDate }"
																										pattern="yy/MM/dd" />
																								~
																								<fmt:formatDate value="${driver.endDriverTime }"
																										pattern="kk:mm" />
																								까지

																						</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">${driver.driverRank }</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<c:if test="${empty driver.driverRank  }">
																								<div align="center">확인전</div>
																						</c:if> <c:if test="${!empty driver.driverRank}">
																								<div align="center">면접대기</div>
																						</c:if>
																				</td>
																		</tr>

																</c:forEach>
																<!--  //for문 여기까지 -->

																<tr align=center height=20>
																		<td colspan=7
																				style="font-family: Tahoma; font-size: 10pt; border-bottom-width: 0px;">
																				[이전]&nbsp; <a href="">[이전]</a>&nbsp;
																				[1][2][3][4][5][6][7][8][9][10] <a href="#"></a>&nbsp;
																				[다음] <a href="./BoardList.bd?page=">[다음]</a>

																		</td>
																</tr>
														</table>

												</section>

												<section id="content2">
														<center />

														면접대기자
														<table class="table">
																<tr>
																		<th>대기번호</th>
																		<th>이름</th>
																		<th>운행가능시간</th>

																		<th>드라이버 평가점수</th>
																</tr>

																<!--  for문사용.. -->
																<c:forEach var="driver" items="${driverList}" step="1"
																		varStatus="count">
																		<c:if test="${driver.driverRank != null && driver.driverRank > 60 }">
																				<tr align="center" valign="middle"
																						bordercolor="#333333"
																						onmouseover="this.style.backgroundColor='F8F8F8'"
																						onmouseout="this.style.backgroundColor=''">
																						<td height="23"
																								style="font-family: Tahoma; font-size: 12pt;">
																								${driver.driverDNO}</td>
																						<td style="font-family: Tahoma; font-size: 12pt;">
																								<div align="center">
																										<a
																												href="./driverDetail.dv?num=${driver.driverDNO}"
																												onclick="window.open(this.href,'detail','width=700; height=250;'); return false;">${driver.driverName }</a>
																								</div>
																						</td>

																						<td style="font-family: Tahoma; font-size: 12pt;">
																								<div align="center">
																										<fmt:formatDate
																												value="${driver.strDriverDate }"
																												pattern="yy/MM/dd" />
																										~
																										<fmt:formatDate
																												value="${driver.strDriverTime }"
																												pattern="kk:mm" />
																										에서
																										<fmt:formatDate
																												value="${driver.endDriverDate }"
																												pattern="yy/MM/dd" />
																										~
																										<fmt:formatDate
																												value="${driver.endDriverTime }"
																												pattern="kk:mm" />
																										까지

																								</div>
																						</td>
																						<td style="font-family: Tahoma; font-size: 12pt;">
																								<div align="center">${driver.driverRank }</div>
																						</td>
																				</tr>
																		</c:if>
															
																</c:forEach>
																		
																<!--  //for문 여기까지 -->

																<tr align=center height=20>
																		<td colspan=7
																				style="font-family: Tahoma; font-size: 10pt; border-bottom-width: 0px;">
																				[이전]&nbsp; <a href="">[이전]</a>&nbsp;
																				[1][2][3][4][5][6][7][8][9][10] <a href="#"></a>&nbsp;
																				[다음] <a href="./BoardList.bd?page=">[다음]</a>

																		</td>
																</tr>
														</table>			
												</section>

										</div>



								</div> <!-- .cd-project-info -->
						</li>

						<li>
								<div class="preview-image">
										<div class="cd-project-title">
												<h2>게시판관리 페이지</h2>
										</div>
								</div>

								<div class="cd-project-info">


										<div class="main">
												<input type="radio" id="tab3" name="tabs"
														style="display: none;"> <label for="tab3"">공고
												</label>
												<!-- content2 -->
												<input type="radio" id="tab4" name="tabs"
														style="display: none;"> <label for="tab4">공지사항
												</label>
												<!-- content1 -->
												<input type="radio" id="tab5" name="tabs"
														style="display: none;"> <label for="tab5">
														질문답변 </label>


												<section id=content3>
														<center/>
														
														<table class="table">
																<tr>
																		<th>글 번호</th>
																		<th>제목</th>
																		<th>작성자</th>
																		<th>작성일</th>
																		<th>공고마감일</th>
																</tr>



																<!--  for문사용.. -->
																<c:forEach var="hire" items="${hireBoardList}"
																		step="1" varStatus="count">
																		<tr align="center" valign="middle"
																				bordercolor="#333333"
																				onmouseover="this.style.backgroundColor='F8F8F8'"
																				onmouseout="this.style.backgroundColor=''">
																				<td height="23"
																						style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">${hire.boardNum }</div>

																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																								<a
																										href="./managerHireDetail.mg?num=${hire.boardNum }"
																										onclick="window.open(this.href,'detail','width=700; height=400;'); return false;">${notice.boardSubject }</a>
																						</div>
																				</td>

																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">${hire.boardName }</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">

																								<fmt:formatDate value="${hire.boardDate }"
																										pattern="yy-MM-dd" />
																						</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																						<fmt:formatDate value="${hire.deadLine }" pattern="yy년MM월dd일" type="date" /> </div>
																				</td>
																		</tr>
																</c:forEach>
																<!--  //for문 여기까지 -->

																<tr align=center height=20>
																		<td colspan=7
																				style="font-family: Tahoma; font-size: 10pt; border-bottom-width: 0px;">
																				[이전]&nbsp; <a href="">[이전]</a>&nbsp;
																				[1][2][3][4][5][6][7][8][9][10] <a href="#"></a>&nbsp;
																				[다음] <a href="./BoardList.bd?page=">[다음]</a>

																		</td>
																</tr>

																<tr align="right">
																		<td colspan="5"><a href="managerWriteHire.mg"
																				onclick="window.open(this.href,'detail','width=700; height=400;'); return false;">[글쓰기]</a>
																		</td>
																</tr>
														</table>


												</section>




												<section id=content4>
												<center/>
												<table class="table">
																<tr>
																		<th>글 번호</th>
																		<th>제목</th>
																		<th>작성자</th>
																		<th>등록일</th>
																		<th>조회수</th>
																</tr>



																<!--  for문사용.. -->
																<c:forEach var="board1" items="${boardList}"
																		varStatus="status">
																		<tr align="center" valign="middle"
																				bordercolor="#333333"
																				onmouseover="this.style.backgroundColor='F8F8F8'"
																				onmouseout="this.style.backgroundColor=''">
																				<td height="23"
																						style="font-family: Tahoma; font-size: 12pt;">
																						<c:if test="${board1.boardReLev == 0 }">${board1.boardNum } </c:if>
																				</td>
																				<c:forEach begin="1" end="${board1.boardReLev }"
																						step="1">
																				</c:forEach>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																								<a
																										href="./managerAnsDetail.mg?num=${board1.boardNum }"
																										onclick="window.open(this.href,'detail','width=700; height=400;'); return false;">
																										${board1.boardSubject }</a>
																						</div>
																				</td>

																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">${board1.boardName }</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																								<fmt:formatDate value="${board1.boardDate}"
																										type="date" pattern="yyyy-MM-dd" />
																						</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">${board1.readCount }</div>
																				</td>

																		</tr>
																</c:forEach>
																<!--  //for문 여기까지 -->

																<tr align=center height=20>
																		<td colspan=7
																				style="font-family: Tahoma; font-size: 10pt; border-bottom-width: 0px;">
																				[이전]&nbsp; <a href="">[이전]</a>&nbsp;
																				[1][2][3][4][5][6][7][8][9][10] <a href="#"></a>&nbsp;
																				[다음] <a href="./BoardList.bd?page=">[다음]</a>

																		</td>
																</tr>
																<tr align="right">
																		<td colspan="5"><a href="boardWrite.bd">[글쓰기]</a>
																		</td>
																</tr>
														</table>
												









												</section>

												<section id=content5>
												<center/>
													
														<table class="table">
																<tr>
																		<th>글 번호</th>
																		<th>제목</th>
																		<th>작성자</th>
																		<th>등록일</th>
																		<th>조회수</th>
																</tr>



																<!--  for문사용.. -->
																<c:forEach var="board1" items="${boardList}"
																		varStatus="status">
																		<tr align="center" valign="middle"
																				bordercolor="#333333"
																				onmouseover="this.style.backgroundColor='F8F8F8'"
																				onmouseout="this.style.backgroundColor=''">
																				<td height="23"
																						style="font-family: Tahoma; font-size: 12pt;">
																						<c:if test="${board1.boardReLev == 0 }">${board1.boardNum } </c:if>
																				</td>
																				<c:forEach begin="1" end="${board1.boardReLev }"
																						step="1">
																				</c:forEach>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																								<a
																										href="./managerAnsDetail.mg?num=${board1.boardNum }"
																										onclick="window.open(this.href,'detail','width=700; height=400;'); return false;">
																										${board1.boardSubject }</a>
																						</div>
																				</td>

																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">${board1.boardName }</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">
																								<fmt:formatDate value="${board1.boardDate}"
																										type="date" pattern="yyyy-MM-dd" />
																						</div>
																				</td>
																				<td style="font-family: Tahoma; font-size: 12pt;">
																						<div align="center">${board1.readCount }</div>
																				</td>

																		</tr>
																</c:forEach>
																<!--  //for문 여기까지 -->

																<tr align=center height=20>
																		<td colspan=7
																				style="font-family: Tahoma; font-size: 10pt; border-bottom-width: 0px;">
																				[이전]&nbsp; <a href="">[이전]</a>&nbsp;
																				[1][2][3][4][5][6][7][8][9][10] <a href="#"></a>&nbsp;
																				[다음] <a href="./BoardList.bd?page=">[다음]</a>

																		</td>
																</tr>
																<tr align="right">
																		<td colspan="5"><a href="boardWrite.bd">[글쓰기]</a>
																		</td>
																</tr>
														</table>


												</section>



										</div>




								</div> <!-- .cd-project-info -->
						</li>

						<li>
								<div class="preview-image">
										<div class="cd-project-title">
												<h2>회원관리 페이지</h2>
										</div>
								</div>



								<div class="cd-project-info">
										<center />

										<table class="table">
												<tr>
														<th>회원번호</th>
														<th>회원아이디</th>
														<th>이름</th>
														<th>성별</th>
														<th>회원생일</th>
														<th>이메일</th>
														<th>전화번호</th>
												</tr>


												<!--  for문사용.. -->
												<c:forEach var="member" items="${list}" step="1"
														varStatus="count">
														<tr align="center" valign="middle" bordercolor="#333333"
																onmouseover="this.style.backgroundColor='F8F8F8'"
																onmouseout="this.style.backgroundColor=''">
																<td height="23"
																		style="font-family: Tahoma; font-size: 12pt;">
																		${count.count}</td>
																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">
																				<a href="./managerMemDetail.mg?id=${member.userId}"
																						onclick="window.open(this.href,'detail','width=400; height=500;'); return false;">${member.userId }</a>
																		</div>
																</td>
																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">${member.userName }</div>
																</td>
																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">${member.userGender }</div>
																</td>

																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">
																				<fmt:formatDate value="${member.userBirth }"
																						pattern="MM/dd" />

																		</div>
																</td>
																<td style="font-family: Tahoma; font-size: 12pt;">
																		<div align="center">${member.userEmail }</div>
																</td>
																<td style="font-family: Tahoma; font-size: 12pt;">
																		${member.userPh }</td>
														</tr>

												</c:forEach>
												<!--  //for문 여기까지 -->

												<tr align=center height=20>
														<td colspan=7
																style="font-family: Tahoma; font-size: 10pt; border-bottom-width: 0px;">
																[이전]&nbsp; <a href="">[이전]</a>&nbsp;
																[1][2][3][4][5][6][7][8][9][10] <a href="#"></a>&nbsp;
																[다음] <a href="./BoardList.bd?page=">[다음]</a>

														</td>
												</tr>
										</table>

								</div> <!-- .cd-project-info -->
						</li>
				</ul>
				<!-- .cd-projects -->

				<button class="scroll cd-text-replace">Scroll</button>
		</div>
		<!-- .cd-project-container -->

		<nav class="cd-primary-nav" id="primary-nav">
				<ul>
						<li class="cd-label">Navigation</li>
						<li><a href="#0">The team</a></li>
						<li><a href="#0">Our services</a></li>
						<li><a href="#">????</a></li>
						<li><a href="index.nhn">Main Home</a></li>
				</ul>
		</nav>
		<!-- .cd-primary-nav -->
		<script src="./js/manager/jquery-2.1.1.js"></script>
		<script src="./js/manager/main.js"></script>
		<!-- Resource jQuery -->
</body>
</html>
</html>