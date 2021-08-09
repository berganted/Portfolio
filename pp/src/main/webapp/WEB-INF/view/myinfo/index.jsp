<%@ page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title %></title>
<%@ include file="/WEB-INF/view//include/headHtml.jsp" %>
</head>
<body>
<div id="boardWrap" class="bbs">
	<div class="pageTitle">
		<h2>프로필</h2>
	</div>
	<!--//pageTitle-->
	<div class="write">
		<table>
			<colgroup>
				<col style="width:150px"/>
				<col style="width:*"/>
				<col style="width:150px"/>
				<col style="width:*"/>
			</colgroup>
			<tbody>
				<tr>
					<th>이름</th>
					<td>전찬호</td>
					<th>나이</th>
					<td>
						32세
					</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>010-7979-1450
					</td>
					<th>이메일</th>
					<td>cksgh901@gmail.com
					</td>
				</tr>
				<tr>
					<th>주소</th>
					<td colspan="3">
						경기도 고양시 일산서구
					</td>
				</tr>
				<tr>
					<th rowspan="2">학력</th>
					<td colspan="3">
						백신 고등학교
					</td>
				</tr>
				<tr>
					<td colspan="3">
						수원 대학교 사회체육 과
					</td>
				</tr>
				<tr>
					<th rowspan="">이력</th>
					<td colspan="3">
						KFC KOREA 영업 팀 (3년 4개월) - 매장관리 / 판매
					</td>
				</tr>
				
				<tr>
					<th rowspan="2">자격증</th>
					<td colspan="3">
						
					</td>
				</tr>
				
			</tbody>
		</table>
	</div>
</div>
<!--//boardWrap-->
</body>
</html>