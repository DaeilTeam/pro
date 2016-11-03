<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false" %>

<div>
	<ul>
		
		<c:if test="${pageMaker.prev }">
			<li><a href="listPage${pageMaker.makeQuery(pageMaker.startPage - 1) }">&laquo;</a></li>
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
			<li
				<c:out value="${pageMaker.cri.page == idx?'class =active':'' }"/>>
				<a href="listPage${pageMaker.makeQuery(idx) }">${idx }</a>
			</li>
		</c:forEach>
		
		<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
			<li><a href="listPage${pageMaker.makeQuery(pageMaker.endPage + 1) }">&raquo;</a></li>
		</c:if>
		
	</ul>
</div>

<c:forEach items="${list }" var="boardDto">

	<tr>
		<td>${boardDto.bno }</td>
		<td><a href="/board/readPage${pageMaker.makeQuery(pageMaker.cri.page) }&bno=${boardDto.bno}">${boardDto.btitle }</a></td>
		<td>${boardDto.bwriter }</td>
		<td><fmt:formatDate value="${boardDto.bwritedt }" pattern="yyyy-MM-dd HH:mm" /></td>
		<td><span>${boardDto.bcount }</span></td>
	</tr>
	
</c:forEach>