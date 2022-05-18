<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
<link rel="stylesheet" href="/css/paymentlist.css">
<link rel="stylesheet" href="/css/sidebar.css">


<!-- JAVASCRIPT -->
<script src="/jquery-3.6.0.min.js"></script>
<script src="/js/sweetalert.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/js/chatbot.js"></script>

<title>boardList</title>

</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/include/loginheader.jsp"%>
	<section class="home section" id="home"></section>
	<!-- end of header import -->


	<!-- sidebar -->
<div class="sidebar close"> 

  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
    </div>
    </section>
 
   
    <ul class="nav-links">
    
    
    
      <li>
        <a href="/mypage">
          <i class='bx bxs-user-check' ></i>
          <span class="link_name">회원수정</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="/mypage">회원수정</a></li>
        </ul>
      </li>
      <li>
        <a href="/deletemember">
          <i class='bx bxs-user-x' ></i>
          <span class="link_name">회원탈퇴</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="/deletemember">회원탈퇴</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-columns' ></i>
            <span class="link_name">내역확인</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">내역확인</a></li>
          <li><a href="/reservation">호텔 예약내역</a></li>
          <li><a href="/paymentlist.do?userId=${userId}">마켓 구매내역</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-hotel' ></i>
            <span class="link_name">호텔관리</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">호텔관리</a></li>
          <li><a href="/hotel/manage">호텔관리자등록</a></li>
          <li><a href="/hotel/manage/reservation">호텔예약관리</a></li>
          <li><a href="/hotel/manage">호텔등록/수정</a></li>
          <li><a href="/hotel/manage/delete">호텔 삭제</a></li>
        </ul>
      </li>
      <li>
        <a href="/marketceo">
          <i class='bx bx-cart'></i>
          <span class="link_name">마켓 관리</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="/marketceo">마켓 관리</a></li>
        </ul>
      </li>
</ul>
  </div>
	<!-- sidebar end-->
		<section class="box">
			<div class="page-wrapper">
				<div class="container-fluid">
					<div class="col-lg-10">
						<!--게시판 넓이 -->
						<div class="col-lg-10">
							<h2 class="page-header">결제 내역</h2>
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
										<th style="width:300px; max-width:1000px;">주소</th>
										<th>번지수</th>		
																
									</tr>
									<hr>
								</thead>
					
								<tbody>

									<c:forEach items="${list}" var="payment">
										<tr>
										
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
