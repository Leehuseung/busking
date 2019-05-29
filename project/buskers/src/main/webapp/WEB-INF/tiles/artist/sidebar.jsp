<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<aside class="busker-side">
	<section class="busker-side__profile">
		<header class="busker-side__header">
			<a href="<c:url value='/artist/main/main.do'/>"
				class="busker-side__header-title"> <i class="fas fa-street-view"></i>
				Buskers
			</a>
			<div class="busker-side__info-btn">
				<i class="fas fa-angle-left fa-2x"></i>
			</div>
		</header>
		<article class="busker-side__profile-info">
			<header class="busker-side__profile-header">
				<span class="busker__profile-header-edit">Edit</span>
				<button type="button" class="busker__profile-header-follow">
					팔로우 +</button>
			</header>
			<div class="busker-side__profile-photo">
				<img
					src="https://i.pinimg.com/564x/fb/e9/ca/fbe9cac78b4fc2ce0a43d9ac42e6de4c.jpg" />
				<span class="busker-side__profile-name">피아노 치는 이정환</span> <span
					class="busker-side__profile-id">piano_good</span>
				<div class="busker-side__profile-social">
					<i class="fab fa-facebook-square fa-lg facebook"></i> <img
						src="https://image.freepik.com/free-vector/instagram-icon_1057-2227.jpg"
						class="instagram" /> <i
						class="fab fa-youtube fa-lg youtube"></i>
				</div>
			</div>
		</article>
	</section>
	<ul class="busker-side__menu">
		<li class="busker-side__menu-item">
			<div class="busker-side__menu-icon">
				<i class="fas fa-video fa-lg"></i>
			</div>
			<div class="busker-side__menu-title">
				영상 <span class="busker-side__menu-count">(30)</span>
			</div>
		</li>
		<li class="busker-side__menu-item">
			<div class="busker-side__menu-icon">
				<i class="far fa-images fa-lg"></i>
			</div>
			<div class="busker-side__menu-title">
				사진<span class="busker-side__menu-count">(99)</span>
			</div>
		</li>
		<li class="busker-side__menu-item">
			<div class="busker-side__menu-icon">
				<i class="far fa-clipboard fa-lg"></i>
			</div>
			<div class="busker-side__menu-title">팬 게시판</div>
		</li>
		<li class="busker-side__menu-item">
			<div class="busker-side__menu-icon">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24">
                <path
						d="M22 4h-20c-1.104 0-2 .896-2 2v12c0 1.104.896 2 2 2h20c1.104 0 2-.896 2-2v-12c0-1.104-.896-2-2-2zm0 13.5c0 .276-.224.5-.5.5h-19c-.276 0-.5-.224-.5-.5v-6.5h20v6.5zm0-9.5h-20v-1.5c0-.276.224-.5.5-.5h19c.276 0 .5.224.5.5v1.5zm-9 6h-9v-1h9v1zm-3 2h-6v-1h6v1zm10-2h-3v-1h3v1z" />
              </svg>
			</div>
			<div class="busker-side__menu-title">후원게시판</div>
		</li>
		<li class="busker-side__menu-item">
			<div class="busker-side__menu-icon">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					viewBox="0 0 24 24">
                <path
						d="M24 2v22h-24v-22h3v1c0 1.103.897 2 2 2s2-.897 2-2v-1h10v1c0 1.103.897 2 2 2s2-.897 2-2v-1h3zm-2 6h-20v14h20v-14zm-2-7c0-.552-.447-1-1-1s-1 .448-1 1v2c0 .552.447 1 1 1s1-.448 1-1v-2zm-14 2c0 .552-.447 1-1 1s-1-.448-1-1v-2c0-.552.447-1 1-1s1 .448 1 1v2zm6.687 13.482c0-.802-.418-1.429-1.109-1.695.528-.264.836-.807.836-1.503 0-1.346-1.312-2.149-2.581-2.149-1.477 0-2.591.925-2.659 2.763h1.645c-.014-.761.271-1.315 1.025-1.315.449 0 .933.272.933.869 0 .754-.816.862-1.567.797v1.28c1.067 0 1.704.067 1.704.985 0 .724-.548 1.048-1.091 1.048-.822 0-1.159-.614-1.188-1.452h-1.634c-.032 1.892 1.114 2.89 2.842 2.89 1.543 0 2.844-.943 2.844-2.518zm4.313 2.518v-7.718h-1.392c-.173 1.154-.995 1.491-2.171 1.459v1.346h1.852v4.913h1.711z" />
              </svg>
			</div> <a href="<c:url value='/artist/board/list.do'/>"
			class="busker-side__menu-title"> 공연일정 </a>
		</li>
		<li class="busker-side__menu-item">
			<div class="busker-side__menu-icon">
				<i class="fas fa-music fa-lg"></i>
			</div>
			<div class="busker-side__menu-title">버스커 음악 등록</div>
		</li>
		<li class="busker-side__menu-item settings">
			<div class="busker-side__menu-icon">
				<i class="fas fa-cog"></i>
			</div>
			<div class="busker-side__menu-title">설정</div>
		</li>
	</ul>
	<section class="busker-side__buskers">
		<header class="buskers-header">
			<div class="buskers-header__title">관련 버스커</div>
		</header>
		<article class="buskers__recommend">
			<div class="buskers__recommend-item">
				<i class="fas fa-user-friends"></i> 창현
			</div>
			<div class="buskers__recommend-item">
				<i class="fas fa-user-friends"></i> 디에이드
			</div>
			<div class="buskers__recommend-item">
				<i class="fas fa-user-friends"></i>권민제
			</div>
		</article>
	</section>
	<section class="busker-side__logout">
		<span>logout</span>
	</section>
</aside>