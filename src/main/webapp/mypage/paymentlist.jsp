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
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/payment.css" >
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/footer.css" >
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mypage_header.css" >


<meta charset="UTF-8">
<title>mypage</title>

<script type="text/javascript" src="/resources/js/mypage/mydonghang.js"></script>

</head>
<body>

<c:import url="mypage_header.jsp" />


<!-- 본문 -->	
<div class="container">

	
	<!-- 결제리스트 테이블 -->
	<div id="myPaymentList">
		<div id="paymentBtn">
			<!-- 나의 동행 복권  -->
			<div id="switchBlock1" onclick="location.href='paymentlist.jsp'"></div>
			<!-- 복권 구매 내역  -->
			<div id="switchBlock2" onclick="location.href='usingList.jsp'"></div>
			<div>
				<img id="myDongHangBtn" alt="나의 동행" src="/resources/image/mypage/ticketList.png">
			</div>
		</div>
	
	
		<div id="myPaymentTitle">나의 동행복권</div>
		<div id="ticketBox">
			<img id="ticket" alt="나의 동행" src="/resources/image/mypage/coupon.png"/>
			<div id="reserveTicket">보유중인 동행복권 <p id="reserveTicketNum">28</p> 장</div>
			<button id="chargeBtn" type="button">충전</button>
		</div>		
		
		<div id="myPaymentTitle">복권구매 내역</div>
		
		<table id="mypaymentTable" class="table">
		
			<tr>
				<th style="width: 5%"><input type="checkbox" id="deleteChkAll"/></th>
				<th style="width: 20%">구매 일자</th>
				<th style="width: 25%">구매수량</th>
				<th style="width: 25%">잔여수량</th>
				<th style="width: 25%">금액</th>
		
			</tr>
			
			<tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>3000 원</a></td>
			</tr>
			<tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>3000 원</a></td>
			</tr><tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>3000 원</a></td>
			</tr><tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>3000 원</a></td>
			</tr><tr>			
				<td style="vertical-align: inherit;"><input type="checkbox" class="deleteChk"/></td>
				<td style="vertical-align: inherit;"><a>2020-08-04</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>30 장</a></td>
				<td style="vertical-align: inherit;"><a>3000 원</a></td>
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