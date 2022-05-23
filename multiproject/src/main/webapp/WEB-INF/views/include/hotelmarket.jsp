<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!--=============== FAVICON ===============-->
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">

<!--=============== BOXICONS ===============-->
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>

<!--=============== SWIPER CSS ===============-->
<link rel="stylesheet" href="/css/swiper-bundle.min.css">

<!--=============== CSS ===============-->
<link rel="stylesheet" href="/css/hotelmarket.css">

<title>barogo</title>
<!-- header -->
<body>
	<header class="header" id="header">
		<nav class="nav container">
			<a href="/" class="nav__logo"> barogo <i
				class='bx bxs-home-alt-2'></i>
			</a>

			<div class="nav__menu">
				<ul class="nav__list">
					<li class="nav__item"><a href="/Hotel" class="nav__link">
							<span>Hotel</span>
					</a></li>
					<li class="nav__item"><a href="/Market" class="nav__link">
							<span>Market</span>
					</a></li>

					<c:if test="${userId == null }">
						<li class="nav__item"><a href="/login" class="nav__link">
								<span>Login</span>
						</a></li>
					</c:if>

					<c:if test="${userId != null }">
						<li class="nav__item"><a href="/logout" class="nav__link">
								<span>Logout</span>
						</a></li>
					</c:if>
				</ul>
			</div>

			<!-- Theme change button -->
			<c:if test="${userId == null }">
				<i class='bx bx-moon change-theme' id="theme-button"></i>
				<a href="/Agreement" class="nav__button button">Sign up</a>
			</c:if>
			
						<c:if test="${userId != null }">
				<i class='bx bx-moon change-theme' id="theme-button"></i>
				<a href="/mypagepw_form" class="nav__button button">Mypage</a>
			</c:if>
		</nav>

	</header>
</body>
</html>