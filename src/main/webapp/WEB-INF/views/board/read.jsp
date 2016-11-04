<form role="form" method="post">
	
	<input type="hidden" name="bno" value="${boardDto.bno }">
	
</form>

<div>
	<div>
		<input type="text" name="bno" value="${boardDto.bno }" readonly="readonly">
		<input type="text" name="btitle" value="${boardDto.btitle }" readonly="readonly">
		<input type="text" name="bwriter" value="${boardDto.bwriter }" readonly="readonly">
		<input type="text" name="bwritedt" value="${boardDto.bwritedt }" readonly="readonly">
	</div>
	<div>
		<textarea rows="3" name="bcontent" readonly="readonly">${boardDto.bcontent }</textarea>
	</div>
</div>

<div>
	<button type="submit">수정</button>
	<button type="submit">삭제</button>
	<button type="submit">목록</button>
</div>

<script type="text/javascript">

$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-modify").on("click", function(){
		formObj.attr("action", "/board/modify");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	$(".btn-remove").on("click", function(){
		formObj.attr("action", "/board/remove");
		formObj.submit();
	});
	
	$(".btn-list").on("click", function(){
		self.location = "/board/listAll";
	});
	
});

</script>