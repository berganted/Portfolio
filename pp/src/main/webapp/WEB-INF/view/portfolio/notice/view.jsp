<%@ page contentType="text/html; charset=utf-8" %>
<!doctype html>
<html lang="ko">
<head>
<title><%=util.Property.title %></title>
<%@ include file="/WEB-INF/view//include/headHtml.jsp" %>
<script>

function goEdit() {
	 $('#frm').attr('action','/pp/portfolio/notice/edit.do');
		 if(confirm("수정하시겠습니까?")){
		 	$('#frm').submit();
	 	}
	}


function isDel() {
	if(confirm('삭제하시겠습니까?')){
		//삭제
		$.ajax({
			url:'delete.do',
			data:{
				'no':${vo.no}
			},
			method:'post',
			success:function(res){
				if (res.trim()=='true'){
					alert("정상적으로 삭제되었습니다.");
					location.href='index.do';
				}else{
					alert('삭제 실패');
				}
			}
		});
	}
}
</script>
</head>
<body>
<div id="boardWrap" class="bbs">
	<div class="pageTitle">
		<h2>공지사항</h2>
	</div>
	<!--//pageTitle-->
	<!--//search-->
	<div class="write">
		<form name="frm" id="frm" action="process.do" method="POST" enctype="multipart/form-data">
		<input type="hidden" name="cmd" value="write">
		<input type="hidden" name="no" value="${vo.no }">
		<table>
			<colgroup>
				<col style="width:150px"/>
				<col style="width:*"/>
				<col style="width:150px"/>
				<col style="width:*"/>
			</colgroup>
			<tbody>
				<tr>
					<th>작성일</th>
					<td>
						${vo.regdate }
					</td>
					<th>조회수</th>
					<td>
						${vo.readcnt }
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
						${vo.title }
					</td>
					<th>작성자</th>
					<td>
						${vo.name }
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">
					<img src="">
					</td>
				</tr>
				<tr>
					<th>첨부파일</th>
					<td colspan="3">
						<a href="" target="_blank"></a>
					</td>
				</tr>
			</tbody>
		</table>
		</form>
		<div class="btnSet">
			<div class="left">
				<a href="javascript:;" class="btn" onclick="location.href='index.do';">목록</a>
			</div>
			<div class="right">
				<a href="javascript:;" class="btn" onclick="goEdit();">수정</a>
				<a href="javascript:;" class="btn" onclick="isDel();">삭제</a>
			</div>
		</div>
		<div style="height:300px;"></div>
	</div>
	<!--//list-->
</div>
<!--//boardWrap-->
</body>
</html>
