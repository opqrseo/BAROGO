<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<!-- CSS -->
<link rel="stylesheet" href="css/payment.css">

<!-- JAVASCRIPT -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="/js/payment.js"></script>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/include/loginheader.jsp"%>
	<section class="home section" id="home"></section>
	<!-- end of header import -->
	<br>
	<br>
	<div class="container">

		<form action="/payinsert" method="post" id="payform">

			<div class="row">
				<div class="col">

					<h3 class="title">payment</h3>

					<div class="inputBox">
						<span>product name :</span> <input type="text" class="w3-input"
							id="proname" name="proname" value="${paydto.name }">
					</div>
					<div class="inputBox">
						<span>price :</span> <input type="text" class="w3-input"
							id="amount" name="amount" value="${paydto.price }">
					</div>



				</div>
				<div class="col">

					<h3 class="title">billing address</h3>

					<div class="inputBox">
						<span>full name :</span> <input type="text" id="buyer_name"
							name="buyer_name" placeholder="Name">
					</div>
					<div class="inputBox">
						<span>email :</span> <input type="email" id="buyer_email"
							name="buyer_email" placeholder="example@example.com">
					</div>
					<div class="inputBox">
						<span>address :</span> <input type="text" id="buyer_addr"
							name="buyer_addr">
					</div>
					<div class="inputBox">
						<span>number :</span> <input type="text" id="buyer_tel"
							name="buyer_tel">
					</div>

					<div class="inputBox">
						<span>street number :</span> <input id="buyer_postcode"
							name="buyer_postcode">
					</div>


					<div style="display: none">
						<input type="text" id="userId" name="userId" value="${userId}">
					</div>
				</div>



			</div>

			<button type="button" id="iamportPayment" class="submit-btn">proceed
				to checkout</button>

		</form>

	</div>


</body>
</html>