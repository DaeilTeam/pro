<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false" %>

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
		<td><a href="/board/read?bno=${boardDto.bno}">${boardDto.btitle }</a></td>
		<td>${boardDto.bwriter }</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardDto.bwritedt }" /></td>
		<td><span>${boardDto.bcount }</span></td>
	</tr>
	
</c:forEach>

</table>

<script type="text/javascript">

	var result = '${msg}';
	
	if(result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}
	
</script>