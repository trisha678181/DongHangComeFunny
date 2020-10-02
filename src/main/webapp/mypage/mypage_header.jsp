<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- mypage_header.css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mypage_header.css" />

<!-- JQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body>

<div class="body-container">
	<div>
	   <div class="logo">
	      <div class="logo-img">
	      <a href="/main/main.jsp"><img class="logo-img" alt="로고이미지" src="/resources/image/header/logo.png" ></a>
	      </div>
		</div>
	</div>
		
  	<!-- 메뉴바 -->
	<div class="main_menu">
		<div class="dropdown">
	 		<div class="dropbtn"><a href="mypage_profile.jsp">내 정보</a></div>
		</div>			
		<div class="dropdown">
	  		<div class="dropbtn"><a href="mydonghang.jsp">동행 관리</a></div>
		</div>
		<div class="dropdown">
	  		<div class="dropbtn"><a href="mypage_likelist.jsp">찜목록</a></div>
		</div>
		<div class="dropdown">
	  		<div class="dropbtn"><a href="fboardlist.jsp">내가 쓴 글</a></div>
		</div>
		<div class="dropdown">
	  		<div class="dropbtn"><a href="paymentlist.jsp">결제내역</a></div>
		</div>
	</div>

</div>
</body>
</html>