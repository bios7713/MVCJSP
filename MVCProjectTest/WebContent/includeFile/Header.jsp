<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/reset.css">
<link href="./css/jquery.easy_slides.css" rel="stylesheet">
<link rel="stylesheet" href="./css/font.css">
<link rel="stylesheet" href="./css/layout.css">
<link rel="stylesheet" type="text/css" href="./css/main.css" />
<link rel="stylesheet" type="text/css" href="./css/sidebar.css" />



<!--[if lt IE 9]>
<script src="http://www.odigarentcar.com/js/vendor/html5shiv.js"></script>
<script src="http://www.odigarentcar.com/js/vendor/respond.min.js"></script>
<![endif]-->



<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>


<script>window.jQuery || document.write('<script src="http://www.odigarentcar.com/js/vendor/jquery-1.8.3.min.js"><\/script>')</script>
<script src="http://www.odigarentcar.com/js/vendor/jquery.easing.1.3.js"></script>
<script src="./js/common.js"></script>

<!-- 구글아이콘 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">

<!-- 메인비주얼 플러그인 -->
<link rel="stylesheet" type="text/css" href="./css/slick.css">
<script src="./js/slick.js"></script>

<!-- 개발  -->
<div id="layer"
      style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
      <img
            src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
            id="btnCloseLayer"
            style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
            onclick="closeDaumPostcode()" alt="닫기 버튼">
</div>
<script src="http://www.odigarentcar.com/js/developer.js"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<!-- 개발  -->

<!--AceCounter-Plus Log Gathering for AceTag Manager V.9.2.20170103-->
<script type="text/javascript">
var _AceTM = (function (_j, _s, _b, _o, _y) {
   var _uf='undefined',_pmt='',_lt=location;var _ap = String(typeof(_y.appid) != _uf ? _y.appid():(isNaN(window.name))?0:window.name);var _ai=(_ap.length!=6)?(_j!=0?_j:0):_ap;if(typeof(_y.em)==_uf&&_ai!=0){var _sc=document.createElement('script');var _sm=document.getElementsByTagName('script')[0];
   var _cn={tid:_ai+_s,hsn:_lt.hostname,hrf:(document.referrer.split('/')[2]),dvp:(typeof(window.orientation)!=_uf?(_ap!=0?2:1):0),tgp:'',tn1:_y.uWorth,tn2:0,tn3:0,tw1:'',tw2:'',tw3:'',tw4:'',tw5:'',tw6:'',tw7:_y.pSearch};_cn.hrf=(_cn.hsn!=_cn.hrf)?_cn.hrf:'in';for(var _aix in _y){var _ns=(_y[_aix])||{};
   if(typeof(_ns)!='function'){_cn.tgp=String(_aix).length>=3?_aix:'';_cn.tn2=_ns.pPrice;_cn.tn3=_ns.bTotalPrice;_cn.tw1=_ns.bOrderNo;_cn.tw2=_ns.pCode;_cn.tw3=_ns.pName;_cn.tw4=_ns.pImageURl;_cn.tw5=_ns.pCategory;_cn.tw6=_ns.pLink;break;};};_cn.rnd=(new Date().getTime());for(var _alx in _cn){
   var _ct=String(_cn[_alx]).substring(0,128);_pmt+=(_alx+"="+encodeURIComponent((_ct!=_uf)?_ct:'')+"&");};_y.acid=_ai;_y.atid=_cn.tid;_y.em=_cn.rnd;_sc.src=((_lt.protocol.indexOf('http')==0?_lt.protocol:'http:')+'//'+_b+'/'+_o)+'?'+_pmt+'py=0';_sm.parentNode.insertBefore(_sc,_sm);};return _y;
})(106730,'DP-40-A', 'atm.acecounter.com','ac.js',window._AceTM||{});
</script>
<!--AceCounter-Plus Log Gathering for AceTag Manager End -->

<script>
   $(function  () {
      dep1 = 0,
      dep2 = 0;
   })
</script>
<script type="text/javascript"
      src="http://www.odigarentcar.com/js/nav.js"></script>
<script type="text/javascript"
      src="http://www.odigarentcar.com/js/main.js"></script>
<script src="./js/jquery.easy_slides.js"></script>

</head>
</head>
<body>

   <header id="header">
      <div id="headerInner" class="area clearfix">
         <h1 class="logo">
            <a href="index.nhn"><img src="./images/LOGO.png" alt="탔다!" /></a>
         </h1>
   <!--   처음 입장 -->
   
   <c:if test="${empty memId && empty manager}">   
         <div align="right" 
            style="margin-top: 15px; margin-left:1100px; font-size: 30px">
               <img style="width: 40px; height: 40px; "src="./images/login.png"> <a href="Login.nhn">로그인 </a>
            </div>
            <div align="right" style="margin-top: 10px; margin-left:1000px; font-size:30px">
            <img src="./images/member.png"> <a href="MemberForm.nhn">회원가입 </a>
         </div>
   </c:if>
   
   <!--  회원  로그인 -->
   
   <c:if test="${!empty memId && empty manager }" >
         <div align="right" style="margin-top: 10px; margin-left:1000px; font-size:25px">
         <font  color="black"><b>${memId }</b> 님 환영합니다.</font>
         </div>
         <div align="right" style="margin-top: 10px; margin-left:1000px; font-size:20px; font-color:black; ">
         <img  style="width: 40px; height: 40px;"src="./images/mypage.png"> <a href="MyPage.nhn">마이페이지</a>
         <img  style="width: 40px; height: 40px;"src="./images/logout.png"> 
         <a href="logout.nhn">로그아웃</a> 
         </div>
   </c:if>
   
   <!--  관리자 로그인 -->
   
   <c:if test="${empty memId && !empty manager  }" >
         <div align="right" style="margin-top: 10px; margin-left:1000px; font-size:15px">
         <b>   <font color= " black" > ${manager }님 관리자로 로그인하셧습니다.</font>  </b>
         </div>
         <div align="right" style="margin-top: 10px; margin-left:1000px; font-size:20px; font-color:black; ">
         <img  style="width: 40px; height: 40px;"src="./images/mypage.png"> <a href="managerMain.mg">관리페이지</a>
         <img  style="width: 40px; height: 40px;"src="./images/logout.png"> 
         <a href="logout.nhn">로그아웃</a> 
         </div>
   </c:if>
   
   
         <nav id="gnb">
            <ul class="clearfix">
               <li><a href="Price.cs">대여요금안내</a></li>

               <li>
               <a href="Process.nhn">대여 / 예약절차</a>
                  <ul class="gnb-2dep">
                     <li><a href="Process.nhn">대여절차 안내</a></li>
                     <li><a href="Reservation.nhn">예약방법 안내</a></li>
                     <li><a href="Note.nhn">유의사항 확인</a></li>
                     <li><a href="InsuranceGuide.nhn">보험/대여약관</a></li>
                  </ul>
              </li>
               <li><a href=" ">인터넷예약</a>
                  <ul class="gnb-2dep">
                     <li>
                           <a href=" ">인터넷예약</a>
                     </li>
                  </ul>
               </li>
      
               <li><a href="driverGuide.dv">채용안내</a>
                  <ul class="gnb-2dep">
                     <li><a href="driverGuide.dv">모집요강</a></li>
                     <li><a href="driverNotice.dv">채용공고</a></li>
                  </ul></li>
   
               <li><a href="AnswerBoard.ab">질문과답변</a>
                  <ul class="gnb-2dep">
                     <li><a href="AnswerBoard.ab">질문과답변</a></li>
                     <li><a href="NoticeBoard.nb ">공지사항</a></li>
                  </ul>
               </li>
            </ul>
         </nav>
      </div>
   </header>
</body>
</html>