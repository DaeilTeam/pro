<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 등록</title>
</head>
<body>
<div class="main_content">
<h2>맛집 등록</h2>
<form action="houseList" method="post" name="frm">
	<table class="" style="width : 750px">
	<tr>
		<th> 맛집이름 </th>
		<td><input type ="text" ></td>
	</tr>
	<tr>
		<th> 전화번호 </th>
		<td><input type ="text" ></td>
	</tr>
	<tr>
		<th> 주소1 </th>
		<td><input type ="text" ></td>
	</tr>
	<tr>
		<th> 주소2 </th>
		<td><input type ="text" ></td>
	</tr>
	<tr>
		<th> 테마정보 </th>
		<td><input type ="text" ></td>
	</tr>
	<tr>
		<th> 영업시간 </th>
		<td><input type ="text" ></td>
	</tr>
	<tr>
		<th> 휴무 </th>
		<td><input type ="text" ></td>
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
</body>
</html>