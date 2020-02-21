<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>탔다!! 요금안내</title>
<link rel="stylesheet" href="css/reset.css"></link>
<link rel="stylesheet" href="css/layout.css"></link>
<link rel="stylesheet" href="css/font.css"></link>
<link rel="stylesheet" href="css/price.css"></link>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"></link>
	
<style>

</style>
</head>


<body> 


<input type="checkbox" id="modal" class="hidden">
<div class="box_modal">
  <label for="modal" class="closer">x</label>
  <div class="text">
    <h3>경형 요금 안내</h3>
    <p>1일 : 95,000원</p>
  </div>
</div>
	

<jsp:include page="../includeFile/Header.jsp"></jsp:include>
<div id="wrap"> 



  <div id="main-content"> 
    <ul> 
      <li><a href="#"><label for="modal" class="button"><img src="images/priceImage/pImg001.jpg"  alt="기아 레이" /><span>기아 레이</span></a></label></li> 
      <li><a href="#"><img src="images/priceImage/pImg002.jpg" alt="르노삼성 QM3" /><span>르노삼성 QM3</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg003.jpg" alt="쉐보레 스파크" /><span>쉐보레 스파크</span></a></li>
      <li><a href="#"><img src="images/priceImage/pImg004.jpg" alt="기아 K3" /><span>기아 K3</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg005.jpg" alt="현대 아반떼" /><span>현대 아반떼</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg006.jpg" alt="기아 쏘울" /><span>기아 쏘울</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg007.jpg" alt="The thumb" /><span>쉐보레 말리부</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg008.jpg" alt="현대 쏘나타" /><span>현대 쏘나타</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg009.jpg" alt="기아 K5" /><span>기아 K5</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg010.jpg" alt="현대 싼타페" /><span>현대 싼타페</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg011.jpg" alt="제네시스 G80" /><span>제네시스 G80</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg012.jpg" alt="현대 쏠라티" /><span>현대 쏠라티</span></a></li>  
      <li><a href="#"><img src="images/priceImage/pImg013.jpg" alt="현대 쏠라티" /><span>기아 카니발</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg012.jpg" alt="현대 쏠라티" /><span>현대 쏠라티</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg012.jpg" alt="현대 쏠라티" /><span>현대 쏠라티</span></a></li> 
    </ul>   
  </div>
 </div>  
  <!-- footer -->
	<%@include file = "../includeFile/Footer.jsp" %>
	<!-- //footer -->

<!-- //code -->

	<style type="text/css">
		*{padding:0px; margin:0px;}
		
	</style>


<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>

</body>

          
</html>