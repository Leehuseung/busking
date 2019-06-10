<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="config.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />
<link rel="stylesheet" href="<c:url value='/resources/css/common/common.css'/>" />
<link rel="stylesheet" href="<c:url value='/resources/css/common/sweetalert2.min.css'/>" />

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
<script src="<c:url value='/resources/js/jquery-3.4.1.min.js'/>"></script>
<!-- Favicon -->
<link rel="shortcut icon" href="<c:url value='/resources/img/guitar_icon.png'/>" type="image/x-icon">
<title>Buskers</title>
</head>
<body>
	<tiles:insertAttribute name="header"/>
	<div class="header_background">
		<img src="<c:url value='/resources/img/street.jpeg'/>" alt="img">
	</div>
	<div class="main-body">
		<tiles:insertAttribute name="body" />
		<tiles:insertAttribute name="sidebar" />
		<tiles:insertAttribute name="footer" />
	</div>
<script src="<c:url value='/resources/js/main/header/bootstrap.js'/>"></script>  
<script src="<c:url value='/resources/js/main/header/custom.js'/>"></script>
<script src="<c:url value='/resources/js/main/header/slick.js'/>"></script>
<script>
$(".sidebar-dropdown > a").click(function() {
    $(".sidebar-submenu").slideUp(200);
    if ( $(this).parent().hasClass("active") ) {
        $(".sidebar-dropdown").removeClass("active");
        $(this).parent().removeClass("active");
    } else {
        $(".sidebar-dropdown").removeClass("active");
        $(this).next(".sidebar-submenu").slideDown(200);
        $(this).parent().addClass("active");
    }
});

$("#close-sidebar").click(function() {
    $(".page-wrapper").removeClass("toggled");
});

$("#show-sidebar").click(function() {
    $(".page-wrapper").addClass("toggled");
});

$(document).ready(function () {
	$.ajax({
		type: "POST",
		url: "/buskers/main/header/message/message-count-ajax.do",
		success: function (count) {
			if (count != 0) {
				$(".message__count").text(count);
			}
		}
	});
});

$(".search-menu").keydown(function () {
	if (key.keyCode == 13) {
        $(".integrated_search").submit();
    }
});


socket.emit("currentUsers", "${sessionScope.user.nickName}");

socket.on("currentUsers", function (users) {
	$(".current_users_number").text(users + "명");
});
</script>
</body>
</html>