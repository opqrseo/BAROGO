<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>호텔 - BAROGO</title>
<script src="jquery-3.6.0.min.js"></script>
<script src="js/chatbot.js"></script>
<link rel="stylesheet" href="/css/hotel.css" />
<link rel="stylesheet" href="/css/login.css">
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/include/hotelmarket.jsp"%>
	<section class="home section" id="home"></section>
	<!-- end of header import -->
	<section id="hotel_lists_section">
		<div class="search_bar">
			<div id="search_bars">
				<input type="text" class="searchtextbox"><button class="search_btns1">검색</button>
			</div>
		</div>

		<div id="search_list">
		
			<div class="hotel_list"></div>
		</div>
	</section>

	<!-- footer import -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<script src="/js/hotel_list.js"></script>
<!-- 	<script src="/js/hotel_search.js"></script> -->
	<!-- end of footer import -->
</body>

</html>