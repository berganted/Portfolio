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
		<h2>갤러리</h2>
	</div>
	<!--//pageTitle-->
	<!--//search-->
	<div class="list">
			<c:forEach var="list" items="${list }">
			<div style="width: 33%;height: 250px; float: left;">
			 	<div style="width: 80%; height: 80%;margin: auto;">
			 		<a href="detail.do?no=${list.no }"><img src="/pp/upload/gallery/${list.filename }" width="100%" height="100%"></a>
			 	</div>
			 		<p style="text-align: center;">${list.title }</p>
			</div>
			</c:forEach>
		<div class="pagenate clear">
                        <ul class='paging'> 
                        <c:if test="${galleryVo.strPage > galleryVo.pageRange}">
                        	<li><a href="FAQboard.do?reqPage=${galleryVo.strPage-1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}"><</a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${galleryVo.strPage}" end="${galleryVo.endPage }">
                            <li><a href='FAQboard.do?reqPage=${rp}&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}' <c:if test="${rp==galleryVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${galleryVo.totPage > galleryVo.endPage}">
                        	<li><a href="FAQboard.do?reqPage=${galleryVo.endPage+1 }&stype=${param.stype}&sval=${param.sval}&orderby=${param.orderby}&direct=${param.direct}">></a></li>
                        </c:if>
                        </ul> 
                    </div>
		<div class="btnSet">
			<div class="right">
				<a href="write.do" class="btn">작성</a>
			</div>
		</div>
	</div>
	<!--//list-->
</div>
<!--//boardWrap-->
</body>
</html>
