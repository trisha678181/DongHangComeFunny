<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>동행 :: 메인페이지</title>

<!-- main.css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/main/main.css" />

<!-- JQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- 부트스트랩 -->
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>


<!-- jQuery-backstretch -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/main/jquery.backstretch.js"></script>

<script>
$(document).ready(function() {
	$.backstretch([ //body > #main-search로 js변경 
		"/resources/image/main/south-korea-3625168_1280.jpg" 
		,"/resources/image/main/sunset-3664096_1280.jpg"
		,"/resources/image/main/korea-2777849_1280.jpg"
		,"/resources/image/main/busan-night-scene-1747130_1280.jpg"
		,"/resources/image/main/han-river-3804298_1280.jpg"
		
	], {duration: 2000, fade: 750});
});
</script>
  
</head>
<body>
<div class="main-container">

	<!-- header -->
	<!-- 로고 -->
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
	 		<div class="dropbtn"><a href="../go/go.jsp">함께가요</a></div>
		</div>			
		<div class="dropdown">
	  		<div class="dropbtn"><a href="../do/do.jsp">함께해요</a></div>
		</div>
		<div class="dropdown">
	  		<div class="dropbtn"><a href="#">커뮤니티</a></div>
	 	 	<div class="dropdown-content">
	    		<a href="../board/freelist">자유게시판</a>
	    		<a href="../board/reviewlist">후기게시판</a>
	 	 	</div>
		</div>
		<div class="dropdown">
	  		<div class="dropbtn"><a href="#">고객센터</a></div>
	  		<div class="dropdown-content">
	    		<a href="#">공지사항</a>
	    		<a href="#">문의게시판</a>
	  		</div>
		</div>
		<div class="dropdown">
	  		<div class="dropbtn"><a href="#">실시간채팅</a></div>
		</div>
	</div>
	
	<!-- content1 -->
	<!-- 상단검색창 -->
	<div id="main-search">
		<div class="searchmenubox">
			<ui class="searchmenu">
			<!-- 함께가요 -->
			<li>
				<input type="radio" name="tabmenu" id="tabmenu1" checked/>
				<div class="tapbtn"><label for="tabmenu1">함께가요</label></div>
				
				<div class="searchbox">
				<p>함께 떠나볼까요?</p>
					<form action="#" method="post" class="formbox">
						<select name="place" class="selectbox"> 
							<option value="none" selected disabled>원하는 장소는?</option>
							<option value="seoul">서울</option>
							<option value="jeju">제주</option>
							<option value="incheon">인천</option>
							<option value="daegu">대구</option>
							<option value="busan">부산</option>
							<option value="gyang">광주</option>
							<option value="daejeon">대전</option>
							<option value="etc">그 외</option>
						</select>
						
						<select name="date" class="selectbox">
							<option value="none" selected disabled>원하는 날짜는?</option>
							<option value="1">1월-3월</option>
							<option value="2">4월-6월</option>
							<option value="3">7월-9월</option>
							<option value="4">10월-12월</option>
						</select>
						
						<select name="age" class="selectbox">
							<option value="none" selected disabled>원하는 나이대는?</option>
							<option value="20">20대</option>
							<option value="30">30대</option>
							<option value="40">40대</option>
						</select>
						
						<select name="like" class="selectbox">
							<option value="none" selected disabled>당신에게 여행이란</option>
							<option value="food">먹는거지!</option>
							<option value="photo">사진이지!</option>
							<option value="">관광이지!</option>
							<option value="drink">술이지!</option>
							<option value="shopping">쇼핑이지!</option>
						</select>
						
						<input type="submit" value="GO!" id="btnmargin" class="btn btn-default input-lg" />
					</form>
				</div>
			</li>
				
			<!-- 함께해요 -->
			<li>
				<input type="radio" name="tabmenu" id="tabmenu2"/>
				<div class="tapbtn bgcolor"><label for="tabmenu2">함께해요</label></div>
					
				<div class="searchbox" id="bgcolor">
				<p>함께 해볼까요?</p>
					<form action="#" method="post" class="formbox input-group-btn">
						<input type="text" name="keyword" class="textbox" placeholder="어떤 활동을 하고 싶으세요?">
		        		<input id="btn2margin" class="btn btn-default input-lg" type="submit" value="GO!"/>
					</form>
				</div>
			</li>
			</ui>
		</div>
	</div>
	
	<!-- content2 -->
	<!-- 함께가요 top3-->
	<div class="content2">
		<div class="content2-title">
			<span>요즘 뜨는 함께가요</span> 
			<a href="#">전체보기</a>
		</div>
		<div id="dobest">
		<!-- top1 -->
		<div class="dobest">
			<div class="dobest-title">
				<div class="doprofile ialign">
					<img src="/resources/image/main/profileex.jpg" alt="프로필사진" class="img-circle" />
				</div>
				<div class="ialign marginleft">
					<div class="doname">동행러버 <small>제주</small></div>
					<div class="dotitle">
						글제목 2월 같이 여행하실분 !!! 
						어쩌구저쩌구
					</div>
				</div>
			</div>
			<div class="margintop">
				<div><span>2030</span> · <span>성별 무관</span> · <span>인생샷</span></div>
				<div>5명이 찜하고 있습니다</div>
			</div>
		</div>
		
		<!-- top2 -->
		<div class="dobest">
			<div class="dobest-title">
				<div class="doprofile ialign">
					<img src="/resources/image/main/profileex.jpg" alt="프로필사진" class="img-circle" />
				</div>
				<div class="ialign marginleft">
					<div class="doname">동행러버 <small>제주</small></div>
					<div class="dotitle">
						글제목 2월 같이 여행하실분 !!! 
						어쩌구저쩌구
					</div>
				</div>
			</div>
			<div class="margintop">
				<div><span>2030</span> · <span>성별 무관</span> · <span>인생샷</span></div>
				<div>5명이 찜하고 있습니다</div>
			</div>
		</div>
		
		<!-- top3 -->
		<div class="dobest">
			<div class="dobest-title">
				<div class="doprofile ialign">
					<img src="/resources/image/main/profileex.jpg" alt="프로필사진" class="img-circle" />
				</div>
				<div class="ialign marginleft">
					<div class="doname">동행러버 <small>제주</small></div>
					<div class="dotitle">
						글제목 2월 같이 여행하실분 !!! 
						어쩌구저쩌구
					</div>
				</div>
			</div>
			<div class="margintop">
				<div><span>2030</span> · <span>성별 무관</span> · <span>인생샷</span></div>
				<div>5명이 찜하고 있습니다</div>
			</div>
		</div>
		</div>
	</div>
	
	<!-- 함께해요 top3-->
	<div class="content2">
		<div class="content2-title">
			<span>요즘 뜨는 함께가요</span> 
			<a href="#">전체보기</a>
		</div>
		<div id="gobest">
		
		<!-- top1 -->
		<div class="gobest">
			<div class="gobest-title">
				<div class="goprofile">
					<img src="/resources/image/main/sunset-3664096_1280.jpg" alt="대표사진" />
				</div>
				<div class="ialign">
					<div class="goname">제주 <small>맛집</small></div>
					<div class="gotitle">
						글제목 먹자골목투어하실분!!~!
					</div>
				</div>
			</div>
			<div class="margintop">
				<div><span>2030</span> · <span>성별 무관</span> · <span>회비 </span><span>15000원</span> </div>
				<div></div>
				<div>5명이 찜하고 있습니다</div>
			</div>
		</div>
		
		<!-- top2 -->
		<div class="gobest">
			<div class="gobest-title">
				<div class="goprofile">
					<img src="/resources/image/main/sunset-3664096_1280.jpg" alt="대표사진" />
				</div>
				<div class="ialign">
					<div class="goname">제주 <small>맛집</small></div>
					<div class="gotitle">
						글제목 먹자골목투어하실분!!~!
					</div>
				</div>
			</div>
			<div class="margintop">
				<div><span>2030</span> · <span>성별 무관</span> · <span>회비 </span><span>15000원</span> </div>
				<div></div>
				<div>5명이 찜하고 있습니다</div>
			</div>
		</div>
		
		<!-- top3 -->
		<div class="gobest">
			<div class="gobest-title">
				<div class="goprofile">
					<img src="/resources/image/main/sunset-3664096_1280.jpg" alt="대표사진" />
				</div>
				<div class="ialign">
					<div class="goname">제주 <small>맛집</small></div>
					<div class="gotitle">
						글제목 먹자골목투어하실분!!~!
					</div>
				</div>
			</div>
			<div class="margintop">
				<div><span>2030</span> · <span>성별 무관</span> · <span>회비 </span><span>15000원</span> </div>
				<div></div>
				<div>5명이 찜하고 있습니다</div>
			</div>
		</div>
		</div>
	</div>
	
	<!-- content3 -->
	<!-- best 구분선 -->	
	<div class="bestbar">
		<div class="hr ialign"></div>
		<div class="bartext ialign"> BEST </div>
		<div class="hr ialign"></div>
	</div>
	
	<!-- best mate -->
	<div class="content3">
		<div class="content3-title">
			<span>BEST : TREVEL MATE</span> 
		</div>
		
		<div id="bestmate">
		<!-- top1 -->
		<div class="matebest">
			<div class="matebest-title">
				<figure class="mateprofile">
				  <img src="/resources/image/main/profileex.jpg" alt="대표사진" class="img-circle" />
				  <figcaption>
				    <p>여자</p>
				    <p>20대</p>
				    <p>인생샷 장인</p>
				  </figcaption>
				</figure>
				<div class="ialign">
					<div class="matename">프로동행러</div>
				</div>
			</div>
		</div>
		
		<!-- top2 -->
		<div class="matebest">
			<div class="matebest-title">
				<figure class="mateprofile">
				  <img src="/resources/image/main/profileex.jpg" alt="대표사진" class="img-circle" />
				  <figcaption>
				    <p>여자</p>
				    <p>20대</p>
				    <p>인생샷 장인</p>
				  </figcaption>
				</figure>
				<div class="ialign">
					<div class="matename">프로동행러</div>
				</div>
			</div>
		</div>
		
		<!-- top3 -->
		<div class="matebest">
			<div class="matebest-title">
				<figure class="mateprofile">
				  <img src="/resources/image/main/profileex.jpg" alt="대표사진" class="img-circle" />
				  <figcaption>
				    <p>여자</p>
				    <p>20대</p>
				    <p>인생샷 장인</p>
				  </figcaption>
				</figure>
				<div class="ialign">
					<div class="matename">프로동행러</div>
				</div>
			</div>
		</div>
		</div>
	</div>
	
	<!-- best review -->
	<div class="content3">
		<div class="content3-title">
			<div class="t1">
				<span>BEST : 함께가요</span>
				<a href="#"><span class="glyphicon glyphicon-plus-sign"></span></a>
			</div>
			<div class="t2">
				<span>BEST : 함께해요</span>
				<a href="#"><span class="glyphicon glyphicon-plus-sign"></span></a>
			</div>
		</div>
		<div id="reviewbest">
		
			<!-- dotop1-->
			<div class="reviewbest">
				<div class="rv-titlebox ialign">
					<div class="rv-image ialign"><img src="/resources/image/main/quotes_icon.png" alt="아이콘"/></div>
					<div class="rv-title ialign">일단 여기는 후기제목이 들어갈건데 글자는 몇글자로 하는것이 좋을까 역시 제한을 좀 두긴 해야겟지 </div>
				</div>
				<div class="rv-contentbox">
					<div>
					<div class="ialign"><span>부산</span> · <span>2월같이 여행하실분</span></div>
					<div class="rfloat ialign">by <span>프로동행러</span></div>
					</div>
					<div>
					<div class="ialign"><span>40</span>명이 공감했어요</div>
					<div class="rfloat ialign">2020-08-06</div>
					</div>
				</div>
			</div>
			
			<!-- gotop1 -->
			<div class="reviewbest">
				<div class="rv-titlebox ialign">
					<div class="rv-image ialign"><img src="/resources/image/main/quotes_icon.png" alt="아이콘"/></div>
					<div class="rv-title ialign">한국의 몰디브!!! 추천!!! </div>
				</div>
				<div class="rv-contentbox">
					<div >
					<div class="ialign"><span>제주</span> · <span>액티비티</span></div>
					<div class="rfloat ialign">by <span>프로동행러</span></div>
					</div>
					<div>
					<div class="ialign"><span>40</span>명이 공감했어요</div>
					<div class="rfloat ialign">2020-08-06</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
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


</div>
</body>
</html>