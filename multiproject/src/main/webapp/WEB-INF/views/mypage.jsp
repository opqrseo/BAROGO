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

<!-- Boxiocns CDN Link -->
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>

<!-- CSS -->
<link rel="stylesheet" href="/css/mypage.css">
<link rel="stylesheet" href="/css/sidebar.css">

<!-- JAVASCRIPT -->
<script src="/jquery-3.6.0.min.js"></script>
<script src="/js/sweetalert.min.js"></script>
<script src="/js/chatbot.js"></script>

<script type="text/javascript">
	$(function() {
		$("#btnUpdate").click(function() {
	          if ($("#userName").val() == "") {
	              swal("이름을 입력해주세요.", "", "error");
	              $("#userName").focus();
	              return false;
	            } 
	            if ($("#userEmail").val() == "") {
	                swal("이메일을 입력해주세요.", "", "error");
	                $("#userEmail").focus();
	                return false;
	            }
			if (confirm("회원정보를 수정하시겠습니까?")) {
				// 폼 내부의 데이터를 전송할 주소
				document.form1.action = "${path}/update";
				alert("수정되었습니다.");
				document.form1.submit(); // 제출			
			}
		});
	});

</script>


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
  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
    </div>
        			<c:if test="${userId == null }">
				<script type="text/javascript">
					alert("로그인후 이용해주세요.");
					location.href = "/login";
				</script>
			</c:if>

			<c:if test="${userId != null }">
				<div class="box">
					<form name="form1" method="post">

									<h2>회원수정</h2>
									<br /> <label for="name">Id</label> 
									<input type="text" name="userId" value="${userId }" readonly required /> <br />

									<h2>정보변경</h2>
									<label for="name">Revise Name</label> 
									<input type="text" id="userName" name="userName" value="${userName }" required />
									
									<label for="name">Revise Email</label> 
									 <div id="info__email"> 
									<input type="text" id="userEmail" name="userEmail" value="${userEmail }" class="w3-input"required /> 							
									<button class="custom-btn btn-1" type="button" id="checkEmail2" onclick="email_Check2()">EmailCheck</button>
								 	<span id="email_result"></span>
									</div>
										
									<input type="button" value="회원정보 변경"	id="btnUpdate" />
								
					</form>
				</div>
			</c:if>
			
    </section>



<script type="text/javascript">
	      function email_Check2() {
    	  var emailReg = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    	  var userEmail = $('#userEmail').val();
    	  
    	  if(!emailReg.test($("#userEmail").val())) {
    		  // 0 : 이메일 길이 / 문자열 검사
    		  swal("이메일 조건이 맞지 않습니다", "메일형식에 맞게 입력해주세요.", "warning");
    	  } else if(userEmail == null) {
    		  $('#email_result').html('이메일을 입력해주세요 :)');
    		  $('#email_result').css('color', 'red');
  			}
    	  
    	  $("#checkEmail2").on("click", function() {
  			$.ajax({
  				url: '<%=request.getContextPath() %>/checkEmail',
  				data: {"userEmail" : $("#userEmail").val()},
  				type: 'post',
  				dataType: 'json',
  				success: function(data) {
  					if(data == 1) {
  						swal("사용중인 이메일 입니다.", "", "error");
  					} else if(data == 0 && emailReg.test($("#userEmail").val())) {
  						swal("사용가능한 이메일 입니다.", "", "success");
  					}
  				}
  			});
  		});
      }
	      </script>
	
	<!-- Core theme JS-->
	<script src="js/sidebar.js"></script>

	<!-- footer import -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- end of footer import -->
</body>

</html>