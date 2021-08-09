<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, user-scalable=yes">
    <meta name="format-detection" content="telephone=no, address=no, email=no">
    <meta name="keywords" content="">
    <meta name="description" content="">
     <link rel='stylesheet' href='/pp/css/login/reset.css'/>
 <link rel='stylesheet' href='/pp/css/login/main.css'/> 
<link rel="stylesheet" href="/pp/css/login/common.css"/>
 <link rel="stylesheet" href="/pp/css/login/contents.css"/> 
 <script>
function loginCheck(){
	if ( $("#id").val().length < 1 ) {
		alert("아이디를 입력해주세요.");
		$("#id").val().focus();
		return false;
	}
	if ( $("#a_pwd").val().length < 1 ) {
		alert("비밀번호를 입력해주세요.");
		$("#password").val().focus();
		return false;
	}
	
	var f = document.board;
	if (f.reg.checked) {
	   document.cookie = "cookie_userid=" + f.id.value + ";path=/;expires=Sat, 31 Dec 2050 23:59:59 GMT;";
	} else {
	   var now = new Date();	
	   document.cookie = "cookie_userid=null;path=/;expires="+now;
	}
	return true;
}

function userid_chk() {
	var f=document.board;
	var useridname = CookieVal("cookie_userid");
	
	if (useridname=="null"){	
		f.id.focus();
		f.id.value="";
	} else {
		f.password.focus();
		f.id.value=useridname;
		f.reg.checked=true;
	}
}

function CookieVal(cookieName) {
	thisCookie = document.cookie.split("; ");
	for (var i = 0; i < thisCookie.length;i++) {
		if (cookieName == thisCookie[i].split("=")[0]) {
			return thisCookie[i].split("=")[1];
		}
	}
	return "null" ;
}
//-->

</script>   
    <title>로그인</title>
  
</head>
<body>
    <div class="wrap">
        <form action="loging.do" method="post" id="board1" name="board1" onsubmit="return loginCheck1();"><!-- header에서 id="board"이미 사용중이라서 board2로 함 -->
            <div class="sub">
                <div class="size">
                    <h3 class="sub_title">관리자 로그인</h3>
                    
                    <div class="member">
                        <div class="box">
                            <fieldset class="login_form">
                                <ul>
                                    <li><input type="text" id="email1" name="id" placeholder="아이디"></li>
                                    <li><input type="password" id="pw1" name="pwd" placeholder="비밀번호"></li>
                                    <li><label><input type="checkbox" name="reg1" id="reg1"/> 아이디저장</label></li>
                                </ul>
                                <div class="login_btn"><input type="submit" value="로그인" alt="로그인" /></div>
                            </fieldset>
                            <div class="btnSet clear">
                                <div>
                                </div>
                            </div>
                        </div>
                    </div>
        
                </div>
            </div>
            </form>
    </div>
</body>
</html>