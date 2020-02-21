<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서내용</title>

<style>
table {
	width: 100%;
	border: 1px solid #444444;
	border-collapse: collapse;
}

img {
	width: 100px;
	height: 95px;
}
</style>

<script type="text/JavaScript">
	function popclose() {
		if (window.opener && !window.opener.closed)
			window.opener.location = "driverRank.dv?DNO=${driver.driverDNO}&rank=${driver.driverRank}";

	}

	function linkToOpener(URL) {
		if (window.opener && !window.opener.closed)
			window.opener.location = "driverDelete.dv?num=${driver.driverDNO}&photo=${driver.photo} ";
		window.close();
	}
</script>
</head>
<body>
		<form action="driverRank.dv" method="get">

				<table border="1" style="table-layout: fixed; width: 593px">
						<colgroup>

						</colgroup>
						<tr>
								<td colspan="8">응시번호:<input type="text" name="DNO"
										value="${driver.driverDNO }" id="DNO" readonly>
								</td>
						</tr>
						<tr>
								<td colspan="2" rowspan="5" width="100" height="85"><img
										src="driver/driverPhoto/${driver.photo}"></td>
								<th rowspan="2">성명</th>
								<td colspan="5" rowspan="2">${driver.driverName }</td>
						</tr>
						<tr>
						</tr>
						<tr>
								<th rowspan="3">연락처</th>
								<td>이메일</td>
								<td colspan="2">${driver.driverEmail }</td>
								<td>전화번호</td>
								<td>${driver.driverPh}</td>
						</tr>

						<tr>
								<td>주소</td>
								<td colspan="4">${driver.driverAddr }</td>
						</tr>

						<tr>
								<td colspan="2">주민등록번호</td>
								<td colspan="3">${driver.driverJumin }</td>
						</tr>
						<tr>
								<td colspan="2">간단한 자기소개</td>
								<td colspan="6">${driver.aboutMe}</td>
						</tr>


				</table>

				평가점수:<input type="text" value="" name="rank" id="rank"> <input
						type="submit" value="점수저장" id="rank" onclick="popclose()">
		</form>

		<a
				href="driverDelete.dv?num=${driver.driverDNO}&photo=${driver.photo}"
				onclick="linkToOpener(URL)">이력서 삭제</a>

		<!--  <a href="driverRank.mg?num=${driver.driverDNO}">점수저장 </a>-->

</body>
</html>