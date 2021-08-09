<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title %></title>
<%@ include file="/WEB-INF/view//include/headHtml.jsp" %>
<script>

</script>
</head>
<body>
<div id="boardWrap" class="bbs">
	<div class="pageTitle">
		<h2>공지사항</h2>
	</div>
	<!--//pageTitle-->
	<!--//search-->
	<div class="list">
			<table>
				<caption> 목록 </caption>
				<colgroup>
					<col width="50px" />
					<col width="*" />
					<col width="10%" />
					<col width="10%" />
					<col width="10%" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:if test="${empty list }">
					<tr>
						<td colspan="5">등록된 데이터가 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="list" items="${list }">
					<tr >
						<td>${list.no }</td>
						<td class="title"><a href="detail.do?no=${list.no }&reqPage=${boardVo.reqPage}">${list.title }</a></td>
						<td>${list.name }</td>
						<td><fmt:formatDate value="${list.regdate }" pattern="yyyy/MM/dd"/> </td>
						<td>${list.readcnt }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		<div class="pagenate clear">
                        <ul class='paging'> 
                        <c:if test="${boardVo.strPage > boardVo.pageRange}">
                        	<li><a href="FAQboard.do?reqPage=${boardVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${boardVo.strPage}" end="${boardVo.endPage }">
                            <li><a href='FAQboard.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==boardVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${boardVo.totPage > boardVo.endPage}">
                        	<li><a href="FAQboard.do?reqPage=${boardVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
                        </c:if>
                        </ul> 
                    </div>
		<div class="btnSet">
			<div class="right">
			<c:if test="${!empty adInfo }">
				<a href="write.do" class="btn">작성</a>
			</c:if>
			</div>
		</div>
	</div>
	<!--//list-->
</div>
<!--//boardWrap-->
</body>
</html>
