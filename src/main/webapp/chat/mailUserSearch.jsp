<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div style="border-bottom: 0.5px solid black">
	<div style="margin: 20px 30px 10px 30px;">
		<span style="font-weight: bold;">유저검색</span><br>
		<div style="margin-right: 10px">
			<div>
				<select name="search_item"
					style="margin: 10px 0px; font-size: 0.9em; border: 0.5px solid black; border-radius: 3px 0px 0px 3px; height: 20px; float: left">
					<option style="font-size: 0.9em;" id" selected="selected">아이디</option>
					<option style="font-size: 0.9em;"nick">닉네임</option>
				</select>
			</div>

			<div style="float: left">
				<input type="text"
					style="width: 200px; margin: 10px 0px; height: 20px; border: 0.5px solid black; border-radius: 0px 3px 3px 0px;" />
			</div>
			<div>
				<input type="button" value="검색"
					style="margin: 10px 0px 10px 10px; text-align: center; color: white; border-radius: 3px; outline: 0px; border: 0px; height: 20px; background: rgb(56, 87, 115); font-size: 0.9em;" />
			</div>
		</div>
	</div>
</div>
<div style="margin: 10px 0px 10px 30px; height: 350px;">
	<div style="float: left; margin: 10px 10px;">
		<div>
			<span style="font-weight: bold;">검색한 유저</span>
		</div>

		<div style="">
			<div style="height: 300px; width: 400px; border: 0.5px solid black"></div>
		</div>
	</div>
	<div
		style="float: left; height: 350px; width: 85px; margin: 0px 5px; display: inline-block;">
		<div style="text-align: center; margin-top: 135px;">
			<input type="button" class="search_add_remove_btn" id="search_add_remove_btn" value="＜" 
			style="font-size: 1em; width: 35px; height: 35px; text-align: center; color: white; border-radius: 3px; outline: 0px; border: 0px; background: rgb(56, 87, 115);"/>
		</div>
		<div style="text-align: center;">
			<input type="button" value="＞" class = "search_add_remove_btn" id="search_add_remove_btn"
			style="margin-top:10px; font-size: 1em; width: 35px; height: 35px; text-align: center; color: white; border-radius: 3px; outline: 0px; border: 0px; background: rgb(56, 87, 115);"/>
		</div>
	</div>
	<div style="float: left; margin: 10px 10px;">
		<div>
			<span style="font-weight: bold;">받는 사람 0 / 10</span>
		</div>

		<div style="">
			<div style="height: 300px; width: 400px; border: 0.5px solid black"></div>
		</div>
	</div>

</div>
