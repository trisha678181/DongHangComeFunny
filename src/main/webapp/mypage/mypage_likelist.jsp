<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mypage_profile.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mypage_likelist.css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mypage_header.css" />

<!-- JQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

   
<script type="text/javascript">
 	$(document).ready(function() {

		$(document).on("click", "#likebtndelete", function() {
		
			if( $("#likebtndelete").text() == "목록" ) {
 				$(".like_cancel").css("display", "none");
				$("#likebtndelete").html("삭제")
			} else {
 				$(".like_cancel").css("display", "inline-block");
				$("#likebtndelete").html("목록")
			}
		
	});

});
	
	
</script>
   

</head>
<body>
<c:import url="mypage_header.jsp" />

<div id="mypage" style="min-height: 451px;">
	<div id="my_info">
	<div class="profile_title">찜 목록</div>
	<button id="likebtndelete">삭제</button>
		<div class="likecontainer">
			<div class="likebox"> 
				<figure class="like_img_box">
					<img class="like_img" alt="찜이미지" src="/resources/image/mypage/place.jpg">
					<figcaption>
						 <p>경주여행</p>
					</figcaption>				
				</figure>
				<span class="like_cancel" style="display: none">X</span>
			</div>
			<div class="likebox"> 
				<figure class="like_img_box">
					<img class="like_img" alt="찜이미지" src="/resources/image/mypage/place.jpg">
					<figcaption>
						 <p>전주가십니다</p>
					</figcaption>				
				</figure>
				<span class="like_cancel" style="display: none">X</span>
			</div>
			<div class="likebox"> 
				<figure class="like_img_box">
					<img class="like_img" alt="찜이미지" src="/resources/image/mypage/place.jpg">
					<figcaption>
						 <p>제주도 동행구함</p>
					</figcaption>				
				</figure>
				<span class="like_cancel" style="display: none">X</span>
			</div>
			<div class="likebox"> 
				<figure class="like_img_box">
					<img class="like_img" alt="찜이미지" src="/resources/image/mypage/place.jpg">
					<figcaption>
						 <p>물놀이 같이 갈사람123456789</p>
					</figcaption>				
				</figure>
				<span class="like_cancel" style="display: none">X</span>
			</div>
			<div class="likebox"> 
				<figure class="like_img_box">
					<img class="like_img" alt="찜이미지" src="/resources/image/mypage/place.jpg">
					<figcaption>
						 <p>등산 같이 갈 사람</p>
					</figcaption>				
				</figure>
				<span class="like_cancel" style="display: none">X</span>
			</div>
		</div>	
	</div>
</div>



<c:import url="footer.jsp" />

</body>
</html>