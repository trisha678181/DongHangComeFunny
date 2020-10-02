<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/board/boardheader.jsp" />   

<!-- 스마트 에디터2 라이브러리 -->
<script type="text/javascript"
 src="/resources/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<script type="text/javascript">
// <form>이 submit되면
// 스마트 에디터 내용을 <textarea>반영해주는 함수
function submitContents(elClickedObj) {
	// 에디터의 내용이 textarea에 적용된다.
	oEditors.getById["boardsContent"].exec("UPDATE_CONTENTS_FIELD", []);

	try {
		elClickedObj.form.submit(); // <form> submit 수행
	} catch(e) {}
}
</script>


<div class = "reviewwrite"> 
	<div class = "reviewwrite__border">
	<div class = "reviewwrite__header">
		<div class = "reviewwrite__header__label">
			<span>후기게시판</span>
		</div>
		<span class = "reviewwrite__header__title">글쓰기</span>
	</div>
	<div class = "reviewwrite__table">
		<table>
		<tr>
			<td>동행 제목</td>
			<td>
				<div class="input-group">
		      		<input type="text" class="form-control" placeholder="작성할 후기를 검색해주세요.">
		      		<span class="input-group-btn">
		        		<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
		      		</span>
		    	</div>
			</td>
		</tr>
		<tr>
			<td>동행 평점</td>
			<td>
				<div class="reviewwrite__table__grade">
					<div class="col-lg-5">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								★★★★★ <span class="caret"></span>
							</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">★★★★★</a></li>
									<li><a href="#">★★★★☆</a></li>
									<li><a href="#">★★★☆☆</a></li>
									<li><a href="#">★★☆☆☆</a></li>
									<li><a href="#">★☆☆☆☆</a></li>
								</ul>
						</div>					
					</div>
					<div class="reviewwrite__host__grade">호스트평점</div>
					<div class="col-lg-3">
						<div class="btn-group">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								★★★★★ <span class="caret"></span>
							</button>
								<ul class="dropdown-menu" role="menu">
									<li><a href="#">★★★★★</a></li>
									<li><a href="#">★★★★☆</a></li>
									<li><a href="#">★★★☆☆</a></li>
									<li><a href="#">★★☆☆☆</a></li>
									<li><a href="#">★☆☆☆☆</a></li>
								</ul>
						</div>	
					</div>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>제목</td>
			<td>
				<input type="text" class="form-control" placeholder="제목을 입력하세요.">
			</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>
				<div><span>donghangId</span></div>
			</td>
		</tr>
		<tr>			
			<td colspan="2">본문</td>
		</tr>
		<tr>
			<td colspan="2">
				<textarea id="boardContent" name="boardContent" style="width: 100%;"></textarea>
			</td>
		</tr>
		<tr>			
			<td>파일업로드</td>
			<td><input type="file" multiple/></td>
		</tr>
		<tr>			
			<td colspan="2" class="reviewwrite__button">
				<button class ="reviewlist__button__write" type="button" onclick="location.href='#'">글쓰기</button>
			</td>
		</tr>
		</table>
	</div>
	

	

	
	
</div>	
</div>

<c:import url="/WEB-INF/views/board/boardfooter.jsp" />    


<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
	oAppRef: oEditors,
	elPlaceHolder: "boardContent", // 에디터가 적용되는 <textarea>의 id
	sSkinURI: "/resources/se2/SmartEditor2Skin.html", // 에디터 스킨
	fCreator: "createSEditor2",
	htParams: {
		bUseToolbar: true, //툴바 사용여부
		bUseVerticalResizer: false, //입력창 크기 조절 바
		bUseModeChanger: true //글쓰기 모드 탭
	}
	
});
</script>

