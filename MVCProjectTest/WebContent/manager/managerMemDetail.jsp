<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-wgsn{font-family:Arial, Helvetica, sans-serif !important;;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-kgjr{font-family:Arial, Helvetica, sans-serif !important;;background-color:#dae8fc;color:#333333;border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg" style="undefined;table-layout: fixed; width: 307px">
<colgroup>
<col style="width: 81px">
<col style="width: 226px">
</colgroup>
  <tr>
    <th class="tg-kgjr">아이디</th>
    <th class="tg-wgsn">${managerMem.userId }</th>
  </tr>
  <tr>
    <td class="tg-kgjr">이름</td>
    <td class="tg-wgsn">${managerMem.userName }</td>
  </tr>
  <tr>
    <td class="tg-kgjr">성별</td>
    <td class="tg-wgsn">
    	<c:choose>
    		<c:when test="${managerMem.userGender == 'M' }">
    			남자
    		</c:when>
    		<c:when test="${managerMem.userGender == 'F' }">
    			여자
    		</c:when>
    	</c:choose>
    </td>
  </tr>
  <tr>
    <td class="tg-kgjr">이메일</td>
    <td class="tg-wgsn">${managerMem.userEmail }</td>
  </tr>
  <tr>
    <td class="tg-kgjr">주소</td>
    <td class="tg-wgsn">${managerMem.userAddr }</td>
  </tr>
  <tr>
    <td class="tg-kgjr">전화번호</td>
    <td class="tg-wgsn">${managerMem.userPh }</td>
  </tr>
  <tr>
    <td class="tg-kgjr">생일</td>
    <td class="tg-wgsn"> 
    <fmt:formatDate value="${managerMem.userBirth }" type="date" pattern="MM월 dd일" /> 
    </td>
  </tr>
  <tr>
    <td class="tg-kgjr">등록일자</td>
    <td class="tg-wgsn">
     <fmt:formatDate value="${managerMem.userRegist }" type="date" pattern="yy년MM월dd일" />
    </td>
  </tr> 
</table>
<br>
<hr>
<a href="./menagerMemModify.mg"> 회원 정보 수정</a>
<a href="" > 회원 정보 삭제</a> 

<hr>


</body>
</html>