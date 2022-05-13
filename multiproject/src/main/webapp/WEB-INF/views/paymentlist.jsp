<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/css/styles.css" rel="stylesheet" />

<title>boardList</title>
<style type="text/css">
table {
  border-spacing:  20px;
}
table  {
  width: 100px;
}
</style>
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/include/mypageheader.jsp"%>
	<!-- end of header import -->
	<hr>
	<section>
		<!-- Sidebar-->
		<div class="d-flex" id="wrapper">
			<div class="border-end bg-white" id="sidebar-wrapper">
				<div class="list-group list-group-flush">
					<a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="/Agreement">회원가입</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="/mypage">회원 수정</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="/deletemember">회원 탈퇴</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="/paymentlist.do?userId=${userId}">결제내역</a> <a
						class="list-group-item list-group-item-action list-group-item-light p-3"
						href="/marketceo">마켓 관리</a> <a
						style="text-align: right; font-size: 15px;" href="#!">마켓 예약등록</a>
					<a style="text-align: right; font-size: 15px;" href="#!">마켓
						등록/수정</a> <a style="text-align: right; font-size: 15px;" href="#!">마켓
						삭제</a>
				</div>
			</div>
			<div class="page-wrapper">
				<div class="container-fluid">
					<div class="col-lg-8">
						<!--게시판 넓이 -->
						<div class="col-lg-20">
							<h1 class="page-header">결제 내역</h1>
						</div>

					</div>
					<div class="panel panel-default">

						<div class="panel-body">
							<table class="table table-hover">
								<thead>
									<tr>
										<th style="width:50px;">No</th>
										<th style="width:80px; max-width:100px;">아이디</th>
										<th style="width:100px; max-width:200px;">제품이름</th>
										<th style="width:100px; max-width:200px;">가격</th>
										<th style="width:100px; max-width:200px;">이메일</th>
										<th style="width:100px; max-width:200px;">이름</th>
										<th style="width:100px; max-width:300px;">전화번호</th>
										<th style="max-width:600px;">주소</th>
										<th>번지수</th>								
									</tr>
									
								</thead>
								<tbody>
									<c:forEach items="${list}" var="payment">
										<tr>
										<br>
											<td>${payment.payno} </td>											
											<td>${payment.userId} </td>
											<td>${payment.proname}</td>
											<td>${payment.amount}원</td>
											<td>${payment.buyer_email}</td>
											<td>${payment.buyer_name}</td>
											<td>${payment.buyer_tel}</td>
											<td>${payment.buyer_addr}</td>
											<td>${payment.buyer_postcode}</td>
										</tr>

									</c:forEach>									
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
	</section>
</body>
</html>
