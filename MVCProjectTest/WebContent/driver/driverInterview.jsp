<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>면접대기자</title>
</head>
<body>
<table border="1" style="undefined;table-layout: fixed; width: 593px">
<colgroup>

</colgroup>
<tr>
<td colspan="5">
 응시번호 :${driver.driverDNO }
</td>
</tr>
  <tr>
    <td colspan="2" rowspan="5" width="100" height="85"> 
    	<img src="driver/driverPhoto/${driver.photo}"> 
    	  </td>
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
    <td colspan="4"> 주소주소주주소</td>
  </tr>
  
  <tr>
    <td colspan="2">주민등록번호</td>
    <td colspan="3">${driver.driverJumin }</td>
  </tr>

 
</table>

		<a href="driverDelete.dv?num=${driver.driverDNO}&photo=${driver.photo}" onclick="linkToOpener(URL)" >이력서 삭제</a>  

  		<a href="driverInterview.mg?num=${driver.driverDNO}"> 면접대기 </a>
  
  
  </form>


</body>
</html>