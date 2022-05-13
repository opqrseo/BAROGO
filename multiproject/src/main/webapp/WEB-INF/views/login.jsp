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
<link rel="stylesheet" href="/css/login.css">

<!-- JAVASCRIPT -->
<script src="/jquery-3.6.0.min.js"></script>
<script src="/js/sweetalert.min.js"></script>
<script src="/js/chatbot.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnLogin").click(function() {
			var userId=$("#userId").val();
			var userPw=$("#userPw").val();
			
			if(userId == "") {
				swal("아이디를 입력해주세요.", "", "error");
				$("#userId").focus();
				return;
			}
			if(userPw == "") {
				swal("암호를 입력해주세요.", "", "error");
				$("#userPw").focus();
				return;
			}
			// 폼 내부의 데이터를 전송할 주소
			document.form1.action="${path}/user";
			document.form1.submit();	// 제출
		});
	});
	
	$(function(){
		$("#findid").click(function(){
			location.href='/find_id_form';
		})
	})
	
		$(function(){
		$("#findpw").click(function(){
			location.href='/find_password_form';
		})
	})

	</script>

</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/include/loginheader.jsp"%>
		<section class="home section" id="home"></section>
	<!-- end of header import -->
	
	<form class="box" method="post" name="form1">
		<h1>Login</h1>

		<input type="text" placeholder="Username" class="id" id="userId" name="userId"> 

		<input type="password" placeholder="Password"  class="pw" id="userPw" name="userPw"> 
		<input type="button"  value="Login"  id="btnLogin">
				<span class="btn" title="아이디 찾기" id="findid">아이디찾기</span>
		          <span class="btn" title="비밀번호 찾기" id="findpw">비밀번호 찾기</span>

	</form>


	<c:if test="${msg == 'error' }">
		<script>
          		$(function() {
          			swal("아이디 또는 암호가 일치하지 않습니다.", "", "error");
          		})
          	</script>
	</c:if>

	<!-- footer import -->
	<%@ include file="/WEB-INF/views/include/footer.jsp"%>
	<!-- end of footer import -->
</body>

</html>