<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 등록</title>

<link rel="stylesheet" href="/css/style.css" type="text/css"/>
 <script src="js/inserthouse.js"></script>


<style type="text/css">
.insert_form input{
	width: 300px;
}
.insert_form th{
width: 180px;}

.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: #A6A6A6;
  margin: auto;
  
}
</style>

</head>
<body>
<div class="main_content">
<jsp:include page="../include/header.jsp"></jsp:include>
<h2>맛집 등록</h2>
<form action="houseList" method="post" name="frm" role="form" id="insertForm">
	<table class="" style="width : 750px">
	
	<tr>
      <th style="background-color : #A6A6A6; "> </th>
      <td>
         <img id="img_preview" style="width: 172px;height: 160px">
         <input type="file" name="pictureUrl" id="file"   style="display: none;" onchange="readURL(this)"/>
         <input type="button" value="사진등록" class="btn" onclick="document.all.file.click();">&nbsp;&nbsp;
         <input type="button" value="삭&nbsp;제" class="btn">
      </td>
   <tr>
	
	<tr>
		<th style="background-color : #A6A6A6; "> 맛집이름 </th>
		<td><input type ="text" name="hnm" size="20" ></td>
	</tr>
	<tr>
		<th style="background-color : #A6A6A6; "> 전화번호 </th>
		<td><input type ="text" name="hphone" size="20"></td>
	</tr>
	<tr>
		<th style="background-color : #A6A6A6; "> 주소1 </th>
		<td><input type ="text" name="haddr" readonly><input type ="button" value="주소검색"></td>
	</tr>
	<tr>
		<th style="background-color : #A6A6A6; "> 주소2 </th>
		<td><input type ="text" name="haddr" ></td>
	</tr>
	<tr>
		<th style="background-color : #A6A6A6; "> 테마정보 </th>
		<td><input type ="text" name="hkind" size="20"></td>
	</tr>
	<tr>
		<th style="background-color : #A6A6A6; "> 영업시간 </th>
		<td><input type ="text" name="htime" size="20"></td>
	</tr>
	<tr>
		<th style="background-color : #A6A6A6; "> 휴무 </th>
		<td><input type ="text" name="hholiday" size="20"></td>
	</tr>
	
	<tr>
			<td colspan="2" align="center">
			<input type="submit" value="등록" onclick="return houseList()">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="취소">
			</td>
	</tr>
	</table>
</form>
</div>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>