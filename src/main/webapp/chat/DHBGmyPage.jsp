<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="./header.jsp"%>

<div style="margin-top: 20px; text-align: center; min-height: 479px;">
	<div style="width: 900px; height: 20%; display: inline-block; vertical-align:middle">
	<div style="inline-block; text-align:left; border-bottom: 0.5px solid black; vertical-align:middle">
				<p style=" margin:10px; font-weight: bold; font-size:1em;display: inline-block; vertical-align:middle">나의 동행 복권</p>
			</div>
		<div style="margin: 20px 0px; width: 900px; border:0.5px solid rgb(182,182,182); border-radius: 5px; display: inline-block; vertical-align:middle">
			
			<div style="font-weight: bold; margin:10px;width:60%; text-align:left; ">
				<span >보유중인 동행복권</span>
				<span style="font-size:2em;">114</span>
				<span>개</span>
				<button style="	text-align: center; color: white; border-radius: 3px; outline: 0px; border: 0px; background: rgb(56, 87, 115); font-size: 0.9em;" >상세보기</button>
			</div>		
		</div>
	</div>
	
	<div style="margin-top: 20px; width:900px; height:80%; border:1px solid black; display: inline-block;">
		<div style="inline-block; text-align:left; border-bottom: 0.5px solid black;">
				<p style="font-weight: bold; font-size:1em;display: inline-block; vertical-align:middle">충전하기</p>
			</div>
		<div style="display:inline; vertical-align:baseline;">
		<div style="height:70%; width:20%; flaot:left; border:1px solid black;">
			<span>동행복권 패키지</span>
		</div>
		<div style=" font:1em;height:70%; border:1px solid black; width:50%;float:right;">
			<div style="width:200px; ">
			<span>동행복권 1개 </span>
			<button style="	text-align: center; color: white; border-radius: 3px; outline: 0px; border: 0px; background: rgb(56, 87, 115); font-size: 0.9em;" >100원</button>
			</div>
			</div>
		</div>
	</div>
</div>

<%@include file="./footer.jsp"%>

