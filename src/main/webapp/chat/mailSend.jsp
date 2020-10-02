<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./header.jsp"%>

<script type="text/javascript">
	function abba() {
		var length = document.getElementById("textarea_send").value.length;

		document.getElementById("counter").innerHTML = length + " / 2000자";
		if (length >= 2000) {
			document.getElementById("counter").innerHTML = "2000 / 2000자";
		}
	};
	function showPopup(){
		var popupWidth = 1000;
		var popupHeight = 500;
		var popupX = (window.screen.width / 2) - (popupWidth / 2);
		var popupY= (window.screen.height / 2) - (popupHeight / 2);
		window.open("./mailUserSearch.jsp", "userSearch", "width=1000, height=500, left="+popupX+", top="+popupY); }
</script>

<link rel="stylesheet"
	href="//unpkg.com/bootstrap@4/dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/mail.css" />
<body>
	<div id="div_back">
		<div id="div_left_area">
			<div id="div_line_left_mail">
				<div id="div_mail">쪽지쓰기</div>
				<div>
					<!-- [D] 마우스오버시 li에 ovr, 클릭시 li에 click 클래스 추가 -->
					<ul class="left_mail_menu">
						<li><a href="#">받은쪽지함</a></li>
						<li><a href="#">보낸쪽지함</a></li>
						<li><a href="#">내게쓴쪽지함</a></li>
						<li><a href="#">쪽지보관함</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="div_right_area">
			<div style="height: 7.5%;">

				<div id="mail_top_btn" style=" margin-left: 2px; border-radius: 5px;">
					보내기</div>


			</div>

			<div id="div_msg_info" style="padding: 30px 0px; ">
			<div style="margin: 0px 20px">
				<span id="span_msg_fixed ">받는사람</span>
				<input type="checkbox" /><span style="font-size: 0.8em;">내게쓰기</span>
				<input type="text" style="height: 20px; width: 300px">
				<input type="button" id="btn_msg_search" value="검색하기" onclick="showPopup();"/>
	</div>
			</div>
		<div style="width:570px;">
			<div id="div_msg_content" >
				<textarea onKeyUp="javascript:abba()" id="textarea_send" class="textarea_send" maxlength="2000"></textarea>
				<br>
				<div style="float:right; margin:0px 40px"><span style="color: black;" id="counter">0 / 2000자</span></div>
			</div>
		</div>
</div>

	</div>
	<%@include file="./footer.jsp"%>
</body>
</html>