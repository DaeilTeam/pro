<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false" %>

<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<jsp:include page="../include/header.jsp"/>

<table>
	<tr>
		<th>글번호</th>
		<th>제목</th>
		<th>작성자</th>
		<th>등록일</th>
		<th>조회수</th>
	</tr>

<c:forEach items="${list }" var="boardDto">

	<tr>
		<td>${boardDto.bno }</td>
		<td><a href="/board/readPage${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${boardDto.bno}">${boardDto.btitle }</a></td>
		<td>${boardDto.bwriter }</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDto.bwritedt }" /></td>
		<td><span>${boardDto.bcount }</span></td>
	</tr>
	
</c:forEach>

</table>

<div>
	<ul class="pagination">
		
		<c:if test="${pageMaker.prev }">
			<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			<li
				<c:out value="${pageMaker.cri.page == idx?'class =active':'' }"/>>
				<a href="list${pageMaker.makeSearch(idx) }">${idx }</a>
			</li>
		</c:forEach>
		
		<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
			<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1) }">&raquo;</a></li>
		</c:if>
		
	</ul>
</div>

<form id="jobForm">
	<input type="hidden" name="page" value="${pageMaker.cri.perPageNum }">
	<input type="hidden" name="perPageNum" value="${pageMaker.cri.perPageNum }">
</form>

<c:forEach items="${list }" var="boardDto">

	<tr>
		<td>${boardDto.bno }</td>
		<td><a href="/board/readPage${pageMaker.makeQuery(pageMaker.cri.page) }&bno=${boardDto.bno}">${boardDto.btitle }</a></td>
		<td>${boardDto.bwriter }</td>
		<td><fmt:formatDate value="${boardDto.bwritedt }" pattern="yyyy-MM-dd HH:mm" /></td>
		<td><span>${boardDto.bcount }</span></td>
	</tr>
	
</c:forEach>

<div>

	<select name="searchType">
		<option value="n"
			<c:out value="${cri.searchType == null?'selected':'' }"/>>---
		</option>
		<option value="t"
			<c:out value="${cri.searchType eq 't'?'selected':'' }"/>>제목
		</option>
		<option value="c"
			<c:out value="${cri.searchType eq 'c'?'selected':'' }"/>>내용
		</option>
		<option value="w"
			<c:out value="${cri.searchType eq 'w'?'selected':'' }"/>>작성자
		</option>
		<option value="tc"
			<c:out value="${cri.searchType eq 'tc'?'selected':'' }"/>>제목 또는 내용
		</option>
		<option value="cw"
			<c:out value="${cri.searchType eq 'cw'?'selected':'' }"/>>내용 또는 작성자
		</option>
		<option value="tcw"
			<c:out value="${cri.searchType eq 'tcw'?'selected':'' }"/>>제목 또는 내용 또는 작성자
		</option>
	</select>

	<input type="text" name="keyword" id="keywordInput" value="${cri.keyword }">
		<button id="searchBtn">검색</button>	
</div>

<script>
$(document).ready(function(){
	var result = '${msg}';
	
	if(result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	
	$(".pagination li a").on("click", function(event){
		
		event.preventDefault();
		
		var targetPage = $(this).attr("href");
		
		var jobForm = $("#jobForm");
		jobForm.find("[name='page']").val(targetPage);
		jobForm.attr("action", "/board/listPage").attr("method", "get");
		jobForm.submit();
	});
	
	$('#searchBtn').on("click", function(event) {
		
		self.location = "list"
			+ '${pageMaker.makeQuery(1)}'
			+ "&searchType="
			+ $("select option:selected").val()
			+ "&keyword=" + $('#keywordInput').val();
	});
	
	$('#newBtn').on("click", function(evt){
		self.location = "register";
	});
});
</script>

<jsp:include page="../include/footer.jsp"/>