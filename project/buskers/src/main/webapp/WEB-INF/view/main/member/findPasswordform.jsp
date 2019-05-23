<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<c:url value='/resources/css/main/member/findPassword.css'/>"/>
<script src="<c:url value='/resources/js/jquery-3.4.1.min.js'/>"></script>
<title>buskers</title>
<main class="main-board">  
    <!-- CONTAINER -->
    <div class="login-body">
            <div class="login-box">
                <div class="lb-header">
                    <span class="active" id="login-box-link">비밀번호 찾기</span>
                </div>
                <form class="email-login" method="post">
                    <div class="u-form-group">
                        <div>아이디&nbsp;</div><input type="text" id="id" name="id" placeholder="Id"/>&emsp;&emsp;
                    </div>
                    <div class="u-form-group">
                        <div>이메일&nbsp;</div><input type="text" id="email" name="email" placeholder="Email"/>&emsp;&emsp;
                    </div>
                    <br>
                    <br>
                    <div class="u-form-group">
                        <button class="submit-login" id="findPass">확인</button>&nbsp;&nbsp;
                        <button type="button" class="back" onclick="location.href='loginform.do'">뒤로</button>
                    </div>
                    <div class="u-form-group">
                        <a href="findIdform.do" class="forgot-id">아이디 찾기</a>
                        &nbsp;
                        <a href="findPasswordform.do" class="forgot-password">비밀번호 찾기</a>
                        &nbsp;
                        <a href="signupform.do" class="forgot-id">회원가입</a>
                    </div>
                </form>
            </div>

    </div>
</main>
<script type="text/javascript">
	$("#findPass").click(function() {
		let id = $("#id").val();
		let email = $("#email").val();
	
		if(id.length < 1) {
			alert("아이디를 입력해주시기 바랍니다.");
			$("#id").focus();
			return false;
		} else if(email.length < 1) {
			alert("이메일을 입력해주시기 바랍니다.");
			$("#email").focus();
			return false;
		} else {
			$(".email-login").attr({
   				"action": "findPass.do"
    		});
		}
	}); 
	let msg = '${msg}';
	if (msg === 'msgFalse') {
		alert("이메일 혹은 아이디가 일치하지 않습니다!");    		
	}
	if (msg === 'msgMatch') {
		alert("스프링 암호화 로직 오류!");
	}
</script>