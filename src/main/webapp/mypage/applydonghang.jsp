<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- CSS -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/applydonghang.css" >
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mypage_header.css" >
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/footer.css" />



<meta charset="UTF-8">
<title>mypage</title>

<!-- checkBox 전체 체크  js-->
<script type="text/javascript" src="/resources/js/mypage/mydonghang.js"></script>

</head>
<body>

<c:import url="mypage_header.jsp" />


<!-- 본문 -->	
<div class="container" id="myDongHang">
	<div id="dongHangBtn">
		<!-- 나의 동행  -->
		<div id="switchBlock1" onclick="location.href='mydonghang.jsp'"></div>
		<!--신청한 동행  -->
		<div id="switchBlock2" onclick="location.href='applydonghang.jsp'"></div>
		<div>
			<img id="myDongHangBtn" alt="나의 동행" src="/resources/image/mypage/applyDongHangbtn.png">
		</div>
	</div>
	
	<!-- 나의 동행 관리 테이블 -->
	<div id="donghangform">
		<div id="donghangformTitle">신청한 동행 관리</div>
		<button id="deleteBtn" type="button">삭제</button>
	
		<table id="applydonghangtable" class="table table-hover table-bordered">
			<tr>
				<th style="width: 5%"><input type="checkbox" id="deleteChkAll"/></th>
				<th style="width: 20%">동행일</th>
				<th style="width: 35%">제목</th>
				<th style="width: 25%">작성자</th>
				<th style="width: 15%">신청현황</th>
		
			</tr>
			<tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>같이 구경합시당다라라라라</a></td>
				<td style="vertical-align: inherit;"><a>프로동행러</a></td>
				<td style="vertical-align: inherit;"><a id="joinerNum">대기중</a></td>
			</tr>
			<tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>같이 구경합시당다라라라라</a></td>
				<td style="vertical-align: inherit;"><a>프로동행러</a></td>
				<td style="vertical-align: inherit;"><a id="joinerNum">대기중</a></td>
			</tr>
		</table>
	</div>

</div><!-- containerEND  -->


<!-- 푸터 -->
<div id="footer">
   <ul class="links">
         <li><a href="">서비스소개</a></li>
         <li class="footer_menu"><a href="">이용약관</a></li>
         <li class="footer_menu"><a href=""><strong>개인정보처리방침</strong></a></li>
         <li class="footer_menu"><a href="">채용</a></li>
         <li class="footer_menu"><a href="">고객센터</a></li>
         <li class="footer_menu"><a href="">개발자센터</a></li>
         <li class="footer_menu"><a href=""><strong>ⓒ ComeFunny internet Corp.</strong></a></li>
   </ul>
</div>


</body>
</html>