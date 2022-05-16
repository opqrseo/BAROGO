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
    <link rel="stylesheet" href="/css/sidebar.css">
    <!-- Boxiocns CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar close">
  
   <i class='bx bx-menu' ></i>
    <ul class="nav-links">
      <li>
        <a href="#">
          <i class='bx bx-cog' ></i>
          <span class="link_name">회원수정</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">회원수정</a></li>
        </ul>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-cog' ></i>
          <span class="link_name">회원탈퇴</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">회원탈퇴</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-collection' ></i>
            <span class="link_name">내역확인</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">내역확인</a></li>
          <li><a href="#">호텔 예약내역</a></li>
          <li><a href="#">마켓 구매내역</a></li>
        </ul>
      </li>
      <li>
        <div class="iocn-link">
          <a href="#">
            <i class='bx bx-book-alt' ></i>
            <span class="link_name">호텔관리</span>
          </a>
          <i class='bx bxs-chevron-down arrow' ></i>
        </div>
        <ul class="sub-menu">
          <li><a class="link_name" href="#">호텔관리</a></li>
          <li><a href="#">호텔예약관리</a></li>
          <li><a href="#">호텔등록/수정</a></li>
          <li><a href="#">호텔 삭제</a></li>
        </ul>
      </li>
      <li>
        <a href="#">
          <i class='bx bx-pie-chart-alt-2' ></i>
          <span class="link_name">마켓 관리</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">마켓 관리</a></li>
        </ul>
      </li>
</ul>
  </div>
  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
    </div>
  </section>

  <script src="js/sidebar.js"></script>

</body>
</html>
