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
<title>Insert title here</title>

<!-- CSS -->
<link rel="stylesheet" href="/css/marketceo.css">
<link rel="stylesheet" href="/css/sidebar.css">
<link href="/css/hotel.css" rel="stylesheet" />

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
			<div class="box">
				<div class="page_name">마켓사업자등록</div>
				<div class="wrapper22">
					<form id= "marketadmin" action="marketmypage" >
					<div class="manage_hotel_list">
						<div id="manage_hotel_add_form">
							<div class="title mb10">
								<span class="ml10 fw800 font-sans-serif">자기소개</span><span
									class="yet ml20 fw200 f-s16">마트이름과 마트주소를 입력해주세요</span>
							</div>
							<div class="introduce_form" style="width: 40%;">
								<div id="upload_profile_img">
									<div class="rowasd">
										<div class="circle">
											<img class="profile-pic"
												src="https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg"
												id="https://t3.ftcdn.net/jpg/03/46/83/96/360_F_346839683_6nAPzbhpSkIpb8pmAwufkC7c5eD7wYws.jpg">

										</div>
										<div class="p-image">
											<button class="upload-button">프로필 업로드</button>
											<input class="file-upload" type="file" accept="image/*"
												method="post" enctype="multipart/form-data" />
										</div>
									</div>
								</div>
								<div id="self-introduce">
									<div>
								
									<!-- /////////////////////////////////////// -->
									<label style="font-size : 20px;">Mart Name</label>
									<br>
									<input class="martname" type="text"  name="market"/>
									</div>
									<br>
									<div>
									<label style="font-size : 20px;">Mart Adress </label>
									<br>
									<input class="martadress" type="text"  name="address"/>
									</div>	
								</div>
							</div>
							<div id="phone-cert" class="mt20">
								<div class="title">
									<span class="ml10 fw800 font-sans-serif">개인인증</span><span
										class="yet ml20 fw200 f-s16">휴대폰 번호를 입력해주세요 (이거 할때마다
										돈나가니까 제발 누르지 말아주세요)</span>
								</div>
								<div id="phone-cert-form" class="mt20">
									<select id="txtMobile1">
										<option value="">&ensp;선택&ensp;</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="019">019</option>
										<option value="010">010</option>
									</select> <input type="text" id="txtMobile2" maxlength="4" size=4
										onkeypress="isCheckNum();" /> <input type="text"
										id="txtMobile3" maxlength="4" size=4
										onkeypress="isCheckNum();" /> <input type="button"
										value="인증요청" class="cert_freeze" onclick="CheckForm();" />
									<div id="check_cert_number_form"></div>
								</div>
							</div>
							<div id="business_reg_form">
								<div class="title">
									<span class="ml10 fw800 font-sans-serif">사업자등록증</span> <label
										id="brlabel" for="brup">업로드</label> <input type="file"
										id="brup" onchange="addFile(this);" method="post" multiple
										accept="image/*,.pdf" enctype="multipart/form-data" /><span
										class="yet ml20 fw200 f-s16">사업자등록증을 업로드해주세요. (image파일,
										pdf파일만 가능)</span>
								</div>
								<input class="brid" hidden="">
								<div class="insert ml20 mt20">
									<div id="brresult"></div>
								</div>
							</div>
						</div>
						<button id="manage_add_ceo" type="submit">제출</button>
						<!-- /////////////////////////////////////// -->
						
					</div>
					</form>
				</div>
			</div>
			<div hidden id="business_id">${id}</div>
	

	<!-- footer import -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- end of footer import -->
</body>

</html>