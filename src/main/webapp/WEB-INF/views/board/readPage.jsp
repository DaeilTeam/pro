<form role="form" action="modifyPage" method="post">
	
	<input type="hidden" name="bno" value="${boardDto.bno }">
	<input type="hidden" name="page" value="${cri.page }">
	<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
	<input type="hidden" name="searchType" value="${cri.searchType }">
	<input type="hidden" name="keyword" value="${cri.keyword }">
	
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
		formObj.attr("action", "/board/modifyPage");
		formObj.attr("method", "get");
		formObj.submit();
	});
	
	$(".btn-remove").on("click", function(){
		formObj.attr("action", "/board/removePage");
		formObj.submit();
	});
	
	$(".btn-list").on("click", function(){
		formObj.attr("method", "get");
		formObj.attr("action", "/board/list");
		formObj.submit();
	});
	
});

</script>