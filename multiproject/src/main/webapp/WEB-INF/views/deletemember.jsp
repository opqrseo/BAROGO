<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>바로고</title>

<!-- Boxiocns CDN Link -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>

<!-- CSS -->
<link rel="stylesheet" href="/css/mypage.css">
<link rel="stylesheet" href="/css/sidebar.css">

<!-- JAVASCRIPT -->
<script src="/jquery-3.6.0.min.js"></script>
<script src="/js/sweetalert.min.js"></script>
<script src="/js/chatbot.js"></script>

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
				<i class='bx bx-menu'></i>
			</div>
		</section>
		<ul class="nav-links">
			<li><a href="/mypage"> <i class='bx bxs-user-check'></i> <span
					class="link_name">회원수정</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="/mypage">회원수정</a></li>
				</ul></li>
			<li><a href="/deletemember"> <i class='bx bxs-user-x'></i>
					<span class="link_name">회원탈퇴</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="/deletemember">회원탈퇴</a></li>
				</ul></li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bx-columns'></i> <span
						class="link_name">내역확인</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">내역확인</a></li>
					<li><a href="/reservation">호텔 예약내역</a></li>
					<li><a href="/paymentlist.do?userId=${userId}">마켓 구매내역</a></li>
				</ul>
			</li>
			<li>
				<div class="iocn-link">
					<a href="#"> <i class='bx bx-hotel'></i> <span
						class="link_name">호텔관리</span>
					</a> <i class='bx bxs-chevron-down arrow'></i>
				</div>
				<ul class="sub-menu">
					<li><a class="link_name" href="#">호텔관리</a></li>
					<li><a href="/hotel/manage">호텔관리자등록</a></li>
					<li><a href="/hotel/manage/reservation">호텔예약관리</a></li>
					<li><a href="/hotel/manage">호텔등록/수정</a></li>
					<li><a href="/hotel/manage/delete">호텔 삭제</a></li>
				</ul>
			</li>
			<li><a href="/marketceo"> <i class='bx bx-cart'></i> <span
					class="link_name">마켓 관리</span>
			</a>
				<ul class="sub-menu blank">
					<li><a class="link_name" href="/marketceo">마켓 관리</a></li>
				</ul></li>
		</ul>
	</div>
						<!-- sidebar end-->
		
		
		<!-- Page content-->
		<script type="text/javascript">
				$(document).ready(function() {
					$("#submit").on("click", function() {
						if ($("#userPw").val() == "") {
							swal("비밀번호를 입력해주세요.");
							$("#userPw").focus();
							return false;
						}
						$.ajax({
							url : "passChk",
							type : "POST",
							dataType : "json",
							data : $("#delForm").serializeArray(),
							success : function(data) {

								if (data == 0) {
									swal("패스워드가 틀렸습니다.", " ", "error");
									return;
								} else {
									if (confirm("회원탈퇴하시겠습니까?")) {
										$("#delForm").submit();
									}
								}
							}
						})
					});
				})
			</script>

		<c:if test="${userId == null }">
			<script type="text/javascript">
					alert("로그인후 이용해주세요.");
					location.href = "/login";
				</script>
		</c:if>

		<c:if test="${userId != null }">
			<div class="box">
				<form action="/delete" method="post" id="delForm">
					<h1>회원 탈퇴</h1>
					<div>
						<label class="control-label" for="userId">Id</label> <input
							class="w3-input" type="text" id="userId" name="userId"
							value="${userId}" readonly="readonly" />
					</div>
					<div class="form-group has-feedback">
						<label for="userPw">Password</label> <input type="password"
							id="userPw" name="userPw" /> <br>
					</div>
				</form>
					<input type="button" value="회원정보 변경"	id="submit" />
				<c:if test="${msg == false}">비밀번호가 맞지 않습니다.</c:if>
			</div>
			</c:if>


	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

	<!-- footer import -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- end of footer import -->
</body>

</html>