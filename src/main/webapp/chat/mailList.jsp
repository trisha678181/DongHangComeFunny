<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./header.jsp"%>


	<div id="div_back">
		<div id="div_left_area">
			<div id="div_line_left_mail">
					<div id="div_mail">쪽지쓰기</div>
				<div>
					<!-- [D] 마우스오버시 li에 ovr, 클릭시 li에 click 클래스 추가 -->
					<ul class="left_mail_menu">
						<li><a href="mailSend.jsp">받은쪽지함</a></li>
						<li><a href="mailView.jsp">보낸쪽지함</a></li>
						<li><a href="#">내게쓴쪽지함</a></li>
						<li><a href="#">쪽지보관함</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div id="div_right_area">
			<div style="height: 7%;">
		
							<div id="mail_top_btn" style="margin-left:2px; border-radius:5px 0px 0px 5px;">
							삭제</div>
							<div  id="mail_top_btn" style="border-width: 2px 0px 2px 0px;">
							보관</div>
							<div  id="mail_top_btn" style="border-radius:0px 5px 5px 0px;">
							답장</div>
							
			</div>
			<div>
				<div>
					<div>
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th style="width: 5%;"><input type="checkbox" id="checkAll"></th>
									<th style="width: 20%;">보낸사람</th>
									<th style="width: 55%;">내용</th>
									<th style="width: 20%;">날짜</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
								<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
									<tr>
									<td class="uk-text-nowrap uk-text-center"><input type="checkbox" id="check1"></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
									<td class="uk-text-nowrap uk-table-link uk-text-center"><a
										href="#">aaaa</a></td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<%@include file="./mailpaging.jsp"%>
		</div>


	</div>
<%@include file="./footer.jsp"%>
