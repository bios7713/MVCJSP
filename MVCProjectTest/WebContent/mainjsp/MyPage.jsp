<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>



<style>
h, td, tr, input, textarea, select, form {
   font-family: 고딕;
   font-size: 1em;
   border-radius: 5px;
   padding : 5px;
   margin : 5px;
}

form,table {
   border: 0px solid rgba(36, 228, 172, 0.29);
   border-spacing: 15px;
}
td{
   border : 0px;
}
</style>

</head>
<center/>
<body style="background-color: #f0f5f3">
<!-- code -->
   <!-- header -->
   <div id="wrap">   
      <%@include file = "../includeFile/Header.jsp" %>
   <!-- //header -->
<br /><br />
      <h1>마이페이지</h1><br />
      <form>      
      
         <table border="1" bgcolor="#cdfdee" cellspacing="1">   
            <tr>
               <td align="center">아이디</td>
               <td>
                  ${member.userId }
               </td>
            </tr>
            

            <tr>
               <td align="center">이름</td>
               <td>${member.userName }</td>
            </tr>

            <tr>
               <td align="center">성별</td>
               <td><c:choose >
                       <c:when test="${member.userGender == 'M' }">
                          남자
                       </c:when>
                       <c:when test="${member.userGender == 'F' }">
                          여자
                       </c:when>
                    </c:choose>
            </tr>
            <tr>
               <td align="center">생년 월 일</td>
               <td>
               <fmt:formatDate value="${member.userBirth}" type="date" pattern="yyyy-MM-dd"/>     
               </td>
               
               
               
            <tr>
               <td align="center">이메일</td>
               <td>   ${member.userEmail }</td>
            </tr>

            <tr>
               <td align="center">주소</td>
               <td>${member.userAddr }</td>
            </tr>

            <tr>
               <td align="center">연락처</td>
               <td>
                  ${member.userPh }
               </td>
            </tr>
            <tr>
               <td align="center">
                  <input type="button" value ="정보수정" onclick="location.href='MemberModify.nhn'">
               </td>
               <td align="center">
                  <input type="button" value ="돌아가기" onclick="location.href='index.nhn'">
               </td>
               <td align="center">
               		<input type="button" value ="관리자 페이지 " onclick="location.href='managerMain.mg'">
               </td>
            </tr>
         </table>
      </form>
      <br /><br /><br />
       
      <br /><br /><br /><br /><br /><br /><br />
   </div>
   <!-- footer -->
   <%@include file="../includeFile/Footer.jsp" %>
   <!-- footer -->
   <style type="text/css">
      *{padding:0px; margin:0px;}
   </style>
   

<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
   

</body>
</html>