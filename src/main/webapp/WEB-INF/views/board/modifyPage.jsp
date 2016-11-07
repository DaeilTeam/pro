<form role="from" action="modifyPage" method="post">

	<input type="hidden" name="page" value="${cri.page }">
	<input type="hidden" name="perPageNum" value="${cri.perPageNum }">

	<div>
		<div>
			<input type="text" name="bno" value="${boardDto.bno }" readonly="readonly">
			<input type="text" name="btitle" value="${boardDto.btitle }">
			<input type="text" name="bwriter" value="${boardDto.bwriter }" readonly="readonly">
			<input type="text" name="bwritedt" value="${boardDto.bwritedt }" readonly="readonly">
		</div>
		<div>
			<textarea rows="3" name="bcontent">${boardDto.bcontent }</textarea>
		</div>
	</div>
	
</form>
	
<div>
	<button type="submit">저장</button>
	<button type="submit">취소</button>
</div>

<script>

$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-save").on("click", function(){
		formObj.submit();
	});
	
	$(".btn-cancel").on("click", function(){
		self.location = "/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}";
	});
});
</script>
