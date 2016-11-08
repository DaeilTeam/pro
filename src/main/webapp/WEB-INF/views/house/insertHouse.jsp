<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>맛집 등록</title>

<link rel="stylesheet" href="/css/style.css" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script type="text/javascript" src="/resources/js/inserthouse.js"></script>
<script type="text/javascript" src="/resources/js/upload.js"></script>

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
	</span>
  </div>
</li>                
</script>    

<script>

var template = Handlebars.compile($("#template").html());

$(".fileDrop").on("dragenter dragover", function(event){
	event.preventDefault();
});


$(".fileDrop").on("drop", function(event){
	event.preventDefault();
	
	var files = event.originalEvent.dataTransfer.files;
	
	var file = files[0];

	var formData = new FormData();
	
	formData.append("file", file);	
	
	
	$.ajax({
		  url: '/uploadAjax',
		  data: formData,
		  dataType:'text',
		  processData: false,
		  contentType: false,
		  type: 'POST',
		  success: function(data){
			  
			  var fileInfo = getFileInfo(data);
			  
			  var html = template(fileInfo);
			  
			  $(".uploadedList").append(html);
		  }
		});	
});


$("#insertForm").submit(function(event){
	event.preventDefault();
	
	var that = $(this);
	
	var str ="";
	$(".uploadedList .delbtn").each(function(index){
		 str += "<input type='hidden' name='files["+index+"]' value='"+$(this).attr("href") +"'> ";
	});
	
	that.append(str);

	that.get(0).submit();
});



</script>


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
	
	<div class="form-group">
		<label for="exampleInputEmail1">파일 올리기</label>
		<div class="fileDrop"></div>
	</div>
	
	<ul class="mailbox-attachments clearfix uploadedList"></ul>
	
	<!-- 파일업로드 예전 버전 -->
	<!-- <tr>
      <th style="background-color : #A6A6A6; "> </th>
      <td>
         <img id="img_preview" style="width: 172px;height: 160px">
         <input type="file" name="pictureUrl" id="file"   style="display: none;" onchange="readURL(this)"/>
         <input type="button" value="사진등록" class="btn" onclick="document.all.file.click();">&nbsp;&nbsp;
         <input type="button" value="삭&nbsp;제" class="btn">
      </td>
   <tr> -->
	
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