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
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mydonghang.css" >
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
		<div id="switchBlock1" onclick="location.href='#'"></div>
		<!--신청한 동행  -->
		<div id="switchBlock2" onclick="location.href='applydonghang.jsp'"></div>
		<div>
			<img id="myDongHangBtn" alt="나의 동행" src="/resources/image/mypage/myDongHangbtn.png">
		</div>
	</div>
	
	<!-- 나의 동행 관리 테이블 -->
	<div id="donghangform">
		<div id="donghangformTitle">나의 동행 관리</div>
		<button id="deleteBtn" type="button">삭제</button>
	
		<table id="donghangtable" class="table table-hover table-bordered">
			<tr>
				<th style="width: 5%"><input type="checkbox" id="deleteChkAll"/></th>
				<th style="width: 20%">작성일</th>
				<th style="width: 50%">제목</th>
				<th style="width: 25%">신청현황</th>
		
			</tr>
			<tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>같이 구경합시당다라라라라</a></td>
				<td style="vertical-align: inherit;"><a id="joinerNum">3/6</a><a href="#applyAdminPopup" class="adminBtn btn" style="color: #fff;">관리</a></td>
			</tr>
			<tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>같이 구경합시당다라라라라</a></td>
				<td style="vertical-align: inherit;"><a id="joinerNum">3/6</a><a href="#applyAdminPopup" class="adminBtn btn" style="color: #fff;">관리</a></td>
			</tr>
		</table>
	</div>

</div><!-- containerEND  -->

<!-- 동행관리 팝업 -->
<div id="applyAdminPopup" class="overlay">
	<div class="popup">
		<p>신청현황 관리</p>
		<a class="close" href="#">&times;</a>
		
		
		
		<div class="content">
			<table id="modalTb" class="table table-bordered">
				<tr>
					<th style="width: 25%;">신청일</th>
					<th style="width: 30%;">닉네임</th>
					<th style="width: 10%;">나이</th>
					<th style="width: 10%;">성별</th>
					<th style="width: 25%;">신청 관리</th>
				</tr>
				
				<tr>
					<td>2020-07-20</td>
					<td id="gotoUserInfo">프로동행러</td>
					<td>24</td>
					<td>남</td>
					<td>
						<a class="agreeBtn" href="#agreementPop" style="color: #fff;">수락</a>
						<a class="refuseBtn" href="#refusedPop"style="color: #fff;">거절</a>
					</td>
				</tr>
				<tr>
					<td> </td>
					<td id="gotoUserInfo"> </td>
					<td> </td>
					<td> </td>
					<td> </td>
				</tr>
				<tr>
					<td> </td>
					<td id="gotoUserInfo"> </td>
					<td> </td>
					<td> </td>
					<td> </td>
				</tr>
				<tr>
					<td> </td>
					<td id="gotoUserInfo"> </td>
					<td> </td>
					<td> </td>
					<td> </td>
				</tr>
			
			</table>
		</div>

	</div>
</div><!-- applyAdminPopupEND -->
<!-- agreement Modal -->
<div id="agreementPop" class="chkOverlay">
	<div class="chkPopup">
		<h4 style="margin-top: 35px;">정말로 수락하시겠습니까?</h4>
		<a id ="agreebtn" href="#agreementPop2" class="btn">수락</a>
		<a id="cancelbtn" href="#applyAdminPopup" class="btn">취소</a>
	</div>
</div>
<!-- agreement Modal -->
<div id="agreementPop2" class="chkOverlay">
	<div class="chkPopup">
		<h4 style="margin-top: 35px;">수락이 완료되었습니다.</h4>
		<a id ="agreebtn" href="#applyAdminPopup" class="btn">확인</a>
		
	</div>
</div>



<!-- refuesed Modal -->
<div id="refusedPop" class="chkOverlay">
	<div class="chkPopup">
		<h4 style="margin-top: 35px;">정말로 거절 하시겠습니까?</h4>
		<a id ="agreebtn" href="#refusedPop2" class="btn">거절</a>
		<a id="cancelbtn" href="#applyAdminPopup" class="btn">취소</a>
	</div>
</div>
<div id="refusedPop2" class="chkOverlay">
	<div class="chkPopup">
		<h4 style="margin-top: 35px;">거절 되었습니다.</h4>
		<a id ="agreebtn" href="#applyAdminPopup" class="btn">확인</a>	
	</div>
</div>

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