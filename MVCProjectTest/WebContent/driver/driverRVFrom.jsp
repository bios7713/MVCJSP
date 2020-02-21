<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="./css/board.css">
<script type="text/javascript">
var car =["차명"];
var lignt = ["아반떼","모닝","레이","스파크","K3"];
var small =["k3"];
var large = ["제네시스","G80"];
var van = ["싼타페"];

function categoryChange(e) {
	var light = ["아반떼", "모닝", "레이", "스파크"];
	var small = ["K3"];
	var large = ["제네시스","G80"];
	var van =["산타페"];
	var target = document.getElementById("cars");

	if(e.value == "a") var d = light;
	else if(e.value == "b") var d = small;
	else if(e.value == "c") var d = large;
	else if(e.value == "d") var d = van;
	else if(e.value == "q") var d = car;

	target.options.length = 0;

	for (x in d) {
		var opt = document.createElement("option");
		opt.value = d[x];
		opt.innerHTML = d[x];
		target.appendChild(opt);
	}	
}
</script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

</head>
<body>

<style type="text/css">
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

</style>
<form action=" ?????" method="post" name=frm>
<table style="table-layout: fixed; width: 617px; border-bottom: 1px solid #ddd ; ">
<colgroup>
<col style="width: 86px">
<col style="width: 174px">
<col style="width: 149px">
<col style="width: 208px">
</colgroup>
  <tr>
    <th>이름</th>
    <th colspan="3">
    <input type="text" name="rvName" value="" style="width:250px;">
    </th>
  </tr>
  <tr>
    <td>연락처</td>
    <td colspan="3">
    <input type="text" name="rvPh" value="" style="width:250px;">
    </td>
  </tr>
  <tr>
    <td >이메일</td>
    <td colspan="3">
    <input type="text" name="rvEmail" value="" style="width:250px;">
    </td>
   
  </tr>
  <tr>
    <td>생년월일</td>
    <td colspan="3">
    	<input type="text" name="rvBirth" value="" style="width:250px;">
    </td>
  </tr>
  <tr>
    <td >차종선택</td>
    <td  colspan="3">
    <select name="carType" onchange="categoryChange(this)">
	<option value="q">차종</option>
	<option value="a">경형</option>
	<option value="b">소형</option>
	<option value="c">대형</option>
	<option value="d"> 승합</option>
</select>

<select name="carName" id="cars">
<option>차명</option>
</select>
  
    </td>   
  </tr>
  <tr>
    <td >대여일시</td>
    <td colspan="3">
    <input type="text" value=""  name="rvStartDate" style="width:250px;">
    </td>
 
  </tr>
  <tr>
    <td >반납일시</td>
    <td  colspan="3"> 
    <input type="text" value="" name="rvEndDate"  style="width:250px;">
    </td>
 
  </tr>
</table>

<div>
	<input type="button" value="작성완료">
	<input type="button" value="취소" onclick="location.href='index.nhn' ">
</div>
</form>
</body>
</html>