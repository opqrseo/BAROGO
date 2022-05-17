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
</head>
<body>
	<!-- header import -->
	<%@ include file="/WEB-INF/views/include/loginheader.jsp"%>
		<section class="home section" id="home"></section>
	<!-- end of header import -->
	
	<c:if test="${userId == null }">

		<script type="text/javascript">
			alert("로그인후 이용해주세요.");
			location.href = "/login";
		</script>
	</c:if>


	<c:if test="${userId != null }">
		<form method="post" class="box" action="/pw_injeung" name="findform">
							<h1>Password Check</h1>
							<label for="userId">아이디</label> 
							<input type="text" id="userId" name="userId" value="${userId}" readonly="readonly" />
						</div>
						<br>
						<div >
							<label for="password">password</label>
							<input type="password" id="userPw" name="userPw" /> 	
						</div>
						<br>
						<div >
							<input type="submit" value="check">
						</div>

						<!-- 이름과 전화번호가 일치하지 않을 때-->
						<c:if test="${check == 1}">
							<script>
								opener.document.findform.userPw.value = "";
							</script>
							<script>
								swal("비밀번호가 틀렸습니다.");
							</script>
						</c:if>

						<!-- 일치시 -->
						<c:if test="${check == 0 }">
							<script>
								alert("비밀번호 확인되었습니다.");
								location.href = "/mypage";
							</script>
						</c:if>
					</div>
				</div>
			</div>
		</form>
	</c:if>
</body>
</html>