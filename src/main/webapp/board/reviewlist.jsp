<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/board/boardheader.jsp" />    
<div class = "reviewlist"> 
	<div class = "reviewlist__header">
		<div class = "reviewlist__header__label">
			<span>Community</span>
		</div>
		<span class = "reviewlist__header__title">후기게시판</span>
	
	</div>
	<div class = "reviewlist__table">
		<table>
		<tr>
			<th>글번호</th>
			<th>글제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>추천수</th>
			<th>조회수</th>
		</tr>
		<c:forEach var="i" begin="0" end="10">
		<tr>
			<td><a href="#"><c:out value="${i}" /></a></td>
			<td><a href="#"><c:out value="${i}" /></a></td>
			<td><c:out value="${i}" /></td>
			<td>20/08/05</td>
			<td><c:out value="${i}" /></td>
			<td><c:out value="${i}" /></td>
		</tr>
		</c:forEach>
		</table>
	</div>
	<div class="reviewlist__button">
		<button class ="reviewlist__button__write" type="button" onclick="location.href='../board/reviewwrite'">글쓰기</button>
	</div>
	
	<nav class = "text-center">
		<ul class="pagination">
			<li>
				<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li>
				<a href="#" aria-label="Next">
				<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
	

	<div class="col-lg-offset-4 col-lg-4">
		<div class="input-group">
			<div class="input-group-btn">
    	  		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">전체 <span class="caret"></span></button>
      			<ul class="dropdown-menu" role="menu">
	        		<li><a href="#">글쓴이+제목</a></li>
    	    		<li><a href="#">글쓴이</a></li>
        			<li><a href="#">제목</a></li>
      			</ul>
    		</div>
    		<input type="text" class="form-control" aria-label="...">
    		<span class="input-group-btn">
	        	<button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
        	</span>
  		</div>
	</div>
	
	
	
</div>

	
	


<c:import url="/WEB-INF/views/board/boardfooter.jsp" />
