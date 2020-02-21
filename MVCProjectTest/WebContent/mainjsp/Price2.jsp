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
<link rel="stylesheet" type="text/css" href="css/slick.css"></link>

<!-- 팝업 코드 -->
<script src="http://code.jquery.com/jquery-1.7.js" type="text/javascript"></script>
<script src="js/jquery.bpopup.min.js"></script>
<script type="text/javascript">
  function go_popup() {
	  $('#popup').bPopup();
  };

</script>
<style type="text/css">

.Pstyle {
 opacity: 0;
 display: none;
 position: relative;
 width: auto;
 border: 5px solid #fff;
 padding: 20px;
 background-color: #fff;
}

.b-close {
 position: absolute;
 right: 5px;
 top: 5px;
 padding: 5px;
 display: inline-block;
 cursor: pointer;
}
</style>	

</head>

<body> 

<!-- 팝업 내용 -->
<div id="popup" class="Pstyle">	
	<span class="b-close">X</span>
	<div class="text" style="height: auto; width: auto;">
  		<h3>경형 요금안내</h3> <br/><p>1일 95,000원<br/>3~6일 86,000원<br/>7일이상 76,000원<br/><br/>
  		<input type="button" value="예약하기" onclick=""></input>
	</div>
</div>
<div id="popup2" class="Pstyle">	
	<span class="b-close">X</span>
	<div class="text" style="height: auto; width: auto;">
  		<h3>소형 요금안내</h3> <br/><p>1일 95,000원<br/>3~6일 86,000원<br/>7일이상 76,000원<br/><br/>
  		<input type="button" value="예약하기" onclick=""></input>
	</div>
</div>


<jsp:include page="../includeFile/Header.jsp"></jsp:include>
<div id="wrap"> 

<div id="container">
		<!-- visual -->
		<section id="visual" style="background:url('/kr/images/content/sub_visual.jpg') no-repeat left center;">
			<div class="visual-txt area">
				<h2><span>대여요금</span> 안내</h2>
				<p><strong>탔다!</strong>의 <strong>차량요금</strong>정보를 안내해드립니다.</p>
			</div>
		</section>


  <div id="main-content"> 
    <ul> 
      <li><a><img src="images/priceImage/pImg001.jpg"  onclick="go_popup()" alt="기아 레이" /><span>기아 레이</span></a></li> 
      <li><a href="#"><img src="images/priceImage/pImg003.jpg" alt="쉐보레 스파크" /><span>쉐보레 스파크</span></a></li>
      <li><a href="#"><img src="images/priceImage/pImg002.jpg" alt="르노삼성 QM3" /><span>르노삼성 QM3</span></a></li> 
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



</body>

          
</html>