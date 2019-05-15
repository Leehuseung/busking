<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value='/resources/css/main/board/free/koo.css'/>"/>
    <link rel="stylesheet" href="<c:url value='/resources/css/main/board/free/detail.css'/>"/>
    <link rel="stylesheet" href="<c:url value='/resources/css/main/board/free/writeform.css'/>"/>
    <title>Document</title>
</head>
<body>
    
    <div class="board_container">
        <div class="board_container_head">
            buskers
        </div>

        <div class="container_side">
            <ul class="side_menu">
                <li></li>
                <li><a href="#"><span class="fas fa-bullhorn"></span>공지사항</a></li>
                <li><a href="#"><span class="fas fa-comments"></span>자유게시판</a></li>
                <li><a href="#"><span class="fas fa-question"></span>질문게시판</a></li>
                <li><a href="<c:url value='/main/board/agency/list.do'/>"><span class="fas fa-building"></span>업체게시판</a></li>
            </ul>
        </div>

        <div class="board_container_body">
            <div class="board_title">
                <div class="board_title_underline">
                    <a href="<c:url value='/main/board/free/list.do'/>">자유게시판</a>
                </div>
            </div>
			
			<form action="write.do" method="get" id="write_from">
	            <div class="board_head_line">
	                <span class="board_img_title">
	                	<img src="<c:url value='/resources/img/boyoung.jpg'/>"/>
	                </span>
	                <input class="write_form_title" name="title" placeholder="제목을 입력하세요." />
	            </div>
	            
	            <textarea class="board_write_form" name="content"></textarea>
	            
            
            
            <br><br><br>
        
        	<div class="free_board_detail_bottom">
        		<a class="fas fa-edit"> 등록</a>
                <a href="<c:url value='/main/board/free/list.do'/>" class="fas fa-list-ul"> 목록</a>
                <input type="hidden" name="memberNo" value="2">
            </div>

            <br><br><br>
			</form>

            <div class="footer"></div>
        </div>
    
    </div>
    
    <script>
    	$(".fa-edit").click(function () {
   			if ( $(".write_form_title").val() == "" ) {
   				alert("제목을 입력하세요");
   				return;
   			}
   			
   			if ( $(".board_write_form").val() == "" ) {
   				alert("내용을 입력하세요");
   				return;
   			}
   			
    		$("#write_from").submit();
    	});
	    
    
	    $(document).ready(function() {
	        $('.board_write_form').summernote({
                height: 500,                 // set editor height
                width: 800,
                focus: false                  // set focus to editable area after initializing summernote
	        });
	    });
    </script>
</body>
</html>