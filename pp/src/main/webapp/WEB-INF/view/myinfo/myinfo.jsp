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
		<h2>자기소개</h2>
	</div>
	<!--//pageTitle-->
	<div class="write">
			
			<p>&nbsp;</p><span id="docs-internal-guid-43ff5024-7fff-4082-a62f-d11eee3ca483"><div dir="ltr" style="margin-left: -4.65pt; text-align: center;" align="center"><br></div></span><p><span style="font-size: 14pt;"><b>지속적으로 성장하는 개발자가 되고 싶습니다.</b></span>​</p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 11pt;">전 직장에서 일을 할떄 주문 시 주문번호가 주방과 손님 쪽 디스플레이에 표시를 하는 프로그램이 도입되었을때 작동이 잘안되는걸보면서 내가 배워서 하면 저렇게는 안 하겠다는 생각에 프로그래밍 쪽에 관심이 생기기 시작했습니다. 그 후 계속 일을 하던 중에도 개발이라는 일을 해보고 싶다라는 생각이 마음 한구석에 자리 잡기 시작했습니다. 그 후로 취미로 HTML CSS 등 기초적인 언어를 접하면서 공부를 시작했고</span></p><p><span style="font-size: 11pt;">더 늦기 전에 도전하자는 마음에 학원에 등록하여 백 엔드 개발에 필요한 지식을 공부를 시작했습니다.</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 14pt;"><b>문제를 스스로 찾아 해결할 수 있는 능력을 키우자</b></span></p><p><span style="font-size: 11pt;">&nbsp;</span></p><p><span style="font-size: 11pt;">팀 프로젝트를 진행하면서 제일 크게 느낀 점은 처음 설계와 계획이 정말 중요하다는 점입니다.</span></p><p><span style="font-size: 11pt;">처음 시작을 의욕적으로 시작하면서 우선 만들어보자는 안일한 생각으로 정확한 계획과 설계 없이 시작해버리면서 정확하게 설계되지 않은 데이터베이스가 문제가 되었습니다.</span></p><p><span style="font-size: 11pt;">부정확한 설계로 인해 개발과정 중 데이터베이스를 추가하는 경우들이 생겼으며 그로 인해 다시 작업을 해야 하는 상황이 종종 발생하여 불필요한 시간을 낭비하는 일이 발생하여 다시 red 클라우드를 이용하여 설계작업을 다시 진행하였습니다. 여기서 저는 설계의 중요성을 다시 한번 상기시키며 설계의 중요성을 강조한 이유를 이해할 수 있었습니다. 그리고 팀플레이 진행 중 본인의 과제에 어려움을 느끼는 인원들이 종종 발생하여 이를 보완하고자</span></p><p><span style="font-size: 11pt;">작업 시 디스 코드에 상주하며 팀원들의 질문을 받아 제가 아는 내용이라면 알려주고 모르는 내용은 구글링하여 팀원들에게 해결방안을 제시하였습니다. 이 과정에서 제가 부족한 점을 보완하고 문제해결을 위한 능력을 키우는 것이 중요하다는 것을 다시 한번 생각하게 되었습니다.</span></p><p><span style="font-size: 11pt;">프로젝트 진행중 도서를 등록하는과정에서 사진과 도서를 같이 등록하려는것을 시도할때 처음 문제점에 발견하였습니다. 디비 설계상 이미지는 다른테이블이였고 인설트를하기위해선 이미지가 먼저 인설트가 되서 그 키값을 도서에 같이 등록해야했는대 두개의 키값모두 auto increment 였기 때문에 어떤식으로 해야할지 처음엔 감을 못잡아서 고민하는 시간이 길어졌었으나 이미지를 업로드하고 책등록을 저장시에 이미지를 먼저 다른이름으로 저장후 그이름을 이미지테이블에 저장후 last insert id 로 이미지에&nbsp; 키값을 받아 책을 insert 하는 방법을 생각해내어 해결하였습니다. 그후 이미지 출력시에 또 다른 문제가 발생하였는대 api나 크롤링을 통해 얻어온 데이터들에 이미지와 직접 등록한 이미지를 구별하고 출력하는것 어려움을 느꼈는대 직접등록한이미지는 경로인반면 데이터수집을통한 이미지는 url이라서 이것에 따른 구분을 어떻게해야하는지 고민을 하여 url인경우 글자수가 등록한이미지에비해 길기때문에 이미지테이블에서 가져온 값이 30글자 이하일경우엔 경로를 아닐경우엔 url을 출력하는 방법으로 해결하였습니다.</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 14pt;"><b>내일에 나에게 부끄럽지 않은 오늘의 내가 되자.</b></span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 11pt;">사람과 사람 사이의 인간관계 처신에서도, 일과 일 사이의 업무처리 태도에서도 내일에 나에게 부끄럽지 않은 사람이 되기 위해 전 직장에서 아르바이트에서부터 매장의 부점장까지 해본 경험을 살려 사람과 사람 사이에 커뮤니케이션 및 주어진 과제를 해결하려는 노력을 끊임없이 지속할 것입니다.</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p><span style="font-size: 12px;">&nbsp;</span></p><p>&nbsp;</p><p>&nbsp;</p>
	</div>
</div>
<!--//boardWrap-->
</body>
</html>