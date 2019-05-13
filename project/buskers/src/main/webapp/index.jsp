<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>	
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
<link rel="stylesheet" href="<c:url value='/resources/css/main/main-header.css'/>" />
<script src="<c:url value='/resources/js/jquery-3.4.1.min.js'/>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.0/jquery.js"></script>
<title>Insert title here</title>
</head>
<body class="body-background">
	<div class="main-form">
		<%@ include file="WEB-INF/view/include/sidebar.jsp" %>
		<div class="main-body">
			<%@ include file="WEB-INF/view/include/header.jsp" %>
		</div>
	</div>
	<script>
		$("#logout").click(function() {
			alert("로그아웃 하셨습니다.");
		});
		document.onkeyup = function(event){
			console.log("fucking");
			if( (event.ctrlKey == true && (event.keyCode == 78 || event.keyCode == 82)) //ctrl+N , ctrl+R 
			|| (event.keyCode == 116)) // function F5
			{
				event.keyCode = 0;
				event.cancelBubble = true;
				event.returnValue = false;
				console.log("what");
			}
		};
	</script>
	<script src="<c:url value='/resources/js/main/board/agency/side-bar.js'/>"></script>
</body>
</html>