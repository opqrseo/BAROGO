<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<script src="/js/chatbot.js"></script>

<!--=============== FAVICON ===============-->
<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon">

<!--=============== BOXICONS ===============-->
<link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css'
	rel='stylesheet'>

<!--=============== SWIPER CSS ===============-->
<link rel="stylesheet" href="/css/swiper-bundle.min.css">

<!--=============== CSS ===============-->
<link rel="stylesheet" href="/css/login.css">

<title>barogo</title>
</head>
<body>
	<!--==================== HEADER ====================-->
	<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<!--==================== MAIN ====================-->
	<main class="main">
		<!--==================== HOME ====================-->
		<section class="home section" id="home">
			<div class="home__container container grid">
				<div class="home__data">
					<h1 class="home__title">
						Travel <br> To Korea<br> with barogo
					</h1>
					<p class="home__description">A service that makes reservations
						for accommodations at a travel destination and orders goods
						necessary for travel in advance when booked, and delivers them in
						advance before the traveler arrives at the accommodation</p>
				</div>

				<div class="home__images">
					<div class="home__orbe"></div>

					<div class="home__img">
						<img src="/images/home.jpg" alt="">
					</div>
				</div>
			</div>
		</section>



		<!--==================== POPULAR ====================-->
		<section class="section" id="popular">
			<div class="container">
				<span class="section__subtitle">Best Choise</span>
				<h2 class="section__title">
					Popular Residences<span>.</span>
				</h2>

				<div class="popular__container grid swiper">
					<div class="swiper-wrapper">
						<article class="popular__card swiper-slide">
							<img src="/images/barogo_logo1.png" alt="" class="popular__img">

							<div class="popular__data">
								<h2 class="popular__price">
									<span>₩</span>123
								</h2>
								<h3 class="popular__title">123</h3>
								<p class="popular__description">123</p>
							</div>
						</article>

						<article class="popular__card swiper-slide">
							<img src="/images/barogo_logo1.png" alt="" class="popular__img">

							<div class="popular__data">
								<h2 class="popular__price">
									<span>₩</span>123
								</h2>
								<h3 class="popular__title">123</h3>
								<p class="popular__description">123</p>
							</div>
						</article>

						<article class="popular__card swiper-slide">
							<img src="/images/barogo_logo1.png" alt="" class="popular__img">

							<div class="popular__data">
								<h2 class="popular__price">
									<span>₩</span>123
								</h2>
								<h3 class="popular__title">123</h3>
								<p class="popular__description">123</p>
							</div>
						</article>

						<article class="popular__card swiper-slide">
							<img src="/images/barogo_logo1.png" alt="" class="popular__img">

							<div class="popular__data">
								<h2 class="popular__price">
									<span>₩</span>123
								</h2>
								<h3 class="popular__title">123</h3>
								<p class="popular__description">123</p>
							</div>
						</article>

						<article class="popular__card swiper-slide">
							<img src="/images/barogo_logo1.png" alt="" class="popular__img">

							<div class="popular__data">
								<h2 class="popular__price">
									<span>₩</span>123
								</h2>
								<h3 class="popular__title">123</h3>
								<p class="popular__description">123</p>
							</div>
						</article>
					</div>

					<div class="swiper-button-next">
						<i class='bx bx-chevron-right'></i>
					</div>
					<div class="swiper-button-prev">
						<i class='bx bx-chevron-left'></i>
					</div>
				</div>
			</div>
		</section>

		<!--==================== VALUE ====================-->
		<section class="value section" id="value">
			<div class="value__container container grid">
				<div class="value__images">
					<div class="value__orbe"></div>

					<div class="value__img">
						<img src="/images/value.jpg" alt="">
					</div>
				</div>

				<div class="value__content">
					<div class="value__data">
						<span class="section__subtitle">Our Value</span>
						<h2 class="section__title">
							Value We Give To You<span>.</span>
						</h2>
						<p class="value__description">We always ready to help by
							providing the best service for you. We believe a good place to
							live can make your life better.</p>
					</div>

					<div class="value__accordion">
						<div class="value__accordion-item">
							<header class="value__accordion-header">
								<i class='bx bxs-shield-x value__accordion-icon'></i>
								<h3 class="value__accordion-title">최저가 쇼핑은 바로고 가격비교</h3>
								<div class="value__accordion-arrow">
									<i class='bx bxs-down-arrow'></i>
								</div>
							</header>

							<div class="value__accordion-content">
								<p class="value__accordion-description">예약한 숙소 근처의 마트에서 저렴한
									가격으로 구매를 해보세요. 구매된 상품은 예약된 숙소로 배달해드립니다.</p>
							</div>
						</div>

						<div class="value__accordion-item">
							<header class="value__accordion-header">
								<i class='bx bxs-x-square value__accordion-icon'></i>
								<h3 class="value__accordion-title">불안정한 가격 방지</h3>
								<div class="value__accordion-arrow">
									<i class='bx bxs-down-arrow'></i>
								</div>
							</header>

							<div class="value__accordion-content">
								<p class="value__accordion-description">바로고가 제공하는 가격은 항상 저렴한
									가격으로 제공을 하며 운영자가 항상 가격 변동 점검을 합니다.</p>
							</div>
						</div>

						<div class="value__accordion-item">
							<header class="value__accordion-header">
								<i class='bx bxs-bar-chart-square value__accordion-icon'></i>
								<h3 class="value__accordion-title">비대면 서비스에 적합한 온라인 유통 서비스</h3>
								<div class="value__accordion-arrow">
									<i class='bx bxs-down-arrow'></i>
								</div>
							</header>

							<div class="value__accordion-content">
								<p class="value__accordion-description">코로나사태로 사람들이 많은 마트를
									가는 대신에 미리 주문을 하여서 비대면으로 쇼핑을 즐긴후 예약된 숙소로 배달을 해줍니다.</p>
							</div>
						</div>

						<div class="value__accordion-item">
							<header class="value__accordion-header">
								<i class='bx bxs-checkbox-checked value__accordion-icon'></i>
								<h3 class="value__accordion-title">가장 신선한 재료를 당일 배송</h3>
								<div class="value__accordion-arrow">
									<i class='bx bxs-down-arrow'></i>
								</div>
							</header>

							<div class="value__accordion-content">
								<p class="value__accordion-description">쇼핑을 한후 숙소예약을 한 날에 당일
									배송을 하여서 신선한 재료를 받으실 수 있습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--==================== CONTACT ====================-->
		<section class="contact section" id="contact">
			<div class="contact__container container grid">
				<div class="contact__images">
					<div class="contact__orbe"></div>

					<div class="contact__img">
						<img src="/images/contact.png" alt="">
					</div>
				</div>

				<div class="contact__content">
					<div class="contact__data">
						<span class="section__subtitle">Contact Us</span>
						<h2 class="section__title">
							Easy to Contact us<span>.</span>
						</h2>
						<p class="contact__description">Is there a problem finding
							your dream home? Need a guide in buying first home? or need a
							consultation on residential issues? just contact us.</p>
					</div>

					<div class="contact__card">
						<div class="contact__card-box">
							<div class="contact__card-info">
								<i class='bx bxs-phone-call'></i>

								<div>
									<h3 class="contact__card-title">Call</h3>
									<p class="contact__card-description">012.345.6789</p>
								</div>
							</div>
						</div>

						<div class="contact__card-box">
							<div class="contact__card-info">
								<i class='bx bxs-message-rounded-dots'></i>

								<div>
									<h3 class="contact__card-title">Chat</h3>
									<p class="contact__card-description">012.345.6789</p>
								</div>
							</div>
						</div>

						<div class="contact__card-box">
							<div class="contact__card-info">
								<i class='bx bxs-video'></i>

								<div>
									<h3 class="contact__card-title">Video Call</h3>
									<p class="contact__card-description">012.345.6789</p>
								</div>
							</div>
						</div>

						<div class="contact__card-box">
							<div class="contact__card-info">
								<i class='bx bxs-envelope'></i>

								<div>
									<h3 class="contact__card-title">Message</h3>
									<p class="contact__card-description">012.345.6789</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!--==================== weather ====================-->
		<section class="section" id="popular">
			<div class="container">
				<span class="section__subtitle">Weather</span>
				<h2 class="section__title">
					Weather in Korea<span>.</span>
				</h2>

				<div class="weather__container popular__container grid swiper">
					<div class="swiper-wrapper">
						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=37.5662&lon=126.9785&name=서울&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>

						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=37.4496&lon=126.7074&name=인천&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>

						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=37.5148&lon=127.5173&name=경기도&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>

						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=37.7135&lon=128.3353&name=강원도&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>

						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=36.5199&lon=126.8666&name=충청도&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>

						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=35.3779&lon=128.3237&name=경상도&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>

						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=35.7351&lon=127.1666&name=전라도&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>

						<article class=" swiper-slide">
							<iframe width="100%" height="245"
								src="https://forecast.io/embed/#lat=33.3845&lon=126.556&name=제주도&color=#ffc261&font=arial&units=si"
								frameborder="0"></iframe>
						</article>


					</div>

					<div class="swiper-button-next">
						<i class='bx bx-chevron-right'></i>
					</div>
					<div class="swiper-button-prev">
						<i class='bx bx-chevron-left'></i>
					</div>
				</div>
			</div>
		</section>
	</main>

	<!--==================== FOOTER ====================-->
	<footer class="footer section">
		<div class="footer__container container grid">
			<div>
				<a href="" class="footer__logo"> barogo <i
					class='bx bxs-home-alt-2'></i>
				</a>
				<p class="footer__description">
					Our vision is to make all people <br> the best place to live
					for them.
				</p>
			</div>

			<div class="footer__content">


				<div>
					<h3 class="footer__title">Follow us</h3>

					<ul class="footer__social">
						<a href="https://www.facebook.com/" target="_blank"
							class="footer__social-link"> <i
							class='bx bxl-facebook-circle'></i>
						</a>
						<a href="https://www.instagram.com/" target="_blank"
							class="footer__social-link"> <i class='bx bxl-instagram-alt'></i>
						</a>
						<a href="https://www.pinterest.com/" target="_blank"
							class="footer__social-link"> <i class='bx bxl-pinterest'></i>
						</a>
					</ul>
				</div>
			</div>
		</div>
	</footer>


	<!--========== SCROLL UP ==========-->
	<div
		style="display: scroll; position: fixed; bottom: 100px; right: 42px;">
		<a href="#" title="맨위로"> <img style="width: 25px;"
			src="<c:url value='images/angleup.png' />" alt="맨위로">
		</a>
	</div>

	<!--=============== SCROLLREVEAL ===============-->
	<script src="/js/scrollreveal.min.js"></script>

	<!--=============== SWIPER JS ===============-->
	<script src="/js/swiper-bundle.min.js"></script>

	<!--=============== MAIN JS ===============-->
	<script src="/js/main.js"></script>

	<!--=============== logout ===============-->
	<script src="/js/sweetalert.min.js"></script>
	<script src="/jquery-3.6.0.min.js"></script>
	<c:if test="${msg == 'logout' }">
		<script>
          		$(function() {
          			swal("로그아웃 되었습니다.", "", "error");
          		})
          	</script>
	</c:if>
</body>
</html>