<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
<!-- mypage_profile.css -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/mypage/mypage_profile.css" />
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
   
   var modal = document.querySelector(".addmodal"); //비밀번호 확인 모달
   var modal2 = document.querySelector(".editmodal"); //개인정보 수정 모달
   var modal3 = document.querySelector(".addmodal2"); //프로필 수정 모달
   var mp1button = document.querySelector("#more"); //비밀번호 모달 버튼
   var mp2button = document.querySelector("#modal_pw_ok"); //개인정보수정 모달 버튼
   var mp3button = document.querySelector("#camera"); //프로필 모달 버튼

   
   //+ 기호 눌렀을 때
   $("#more").click(function() {
      modal.classList.toggle("show-modal"); 
   });
   
   /*============== 비밀번호 모달 ============== */
      
   //비밀번호 확인 눌렀을 때 "개인정보 모달"을 띄워진다
   $("#modal_pw_ok").click(function() {
      console.log("2");
      modal2.classList.toggle("show-modal");
      modal.classList.toggle("show-modal"); 
   });
   
   //비밀번호 모달 "닫기 버튼"을 눌렀을 때
   $("#close").click(function() {
      console.log("4");

      $("#more").attr("display", "none");
      modal.classList.toggle("show-modal"); 
   });
   
   /*============== 개인정보 수정 모달 ============== */
   
   //개인정보 수정 모달에서 "수정버튼"을 눌렀을 때 
   $("#modal_change").click(function() {
      console.log("3");
      modal2.classList.toggle("show-modal");
   });
   
   
   //개인정보수정 모달에서 "닫기 버튼" 눌렀을 때
   $("#close2").click(function() {
      console.log("5");

      modal2.classList.toggle("show-modal"); 
   });
   
   /*================= 프로필 모달 ============== */
   
   //카메라 버튼을 클릭했을 때
   $("#camera").click(function() {
      console.log("6");
      modal3.classList.toggle("show-modal"); 
   });
   
   //프로필 수정 모달에서 "닫기 버튼"을 클릭했을 때
   $("#close3").click(function() {
      console.log("7");

      modal3.classList.toggle("show-modal"); 
   });
   
   //프로필 수정 모달에서 "확인 버튼" 눌렀을 때
   $("#modal_ok2").click(function() {
      console.log("8");

      modal3.classList.toggle("show-modal"); 
   });
   
   
   $(window).click(function(e) {
      if(e.target === modal) {
         modal.classList.toggle("show-modal"); 
      }
   })
})
</script>   


<script type="text/javascript">
function ProfileChanage(){ 
   alert('개인정보 수정이 완료 되었습니다.'); 
}

function imgChanage(){ 
   alert('프로필 수정이 완료 되었습니다.'); 
}
</script>
</head>
<body>
<c:import url="mypage_header.jsp" />

<div id="mypage" style="min-height: 451px;">
<!-- 개인정보 수정 -->
<div id="my_info">
   <div class="profile_title">프로필</div>
   <p class="info_Agree">*일부정보가 ComeFunny 서비스를 사용하는 다른 사람에게 표시 될 수 있습니다.</p>
   <div class="my_Profile">
      <img class="my_Profile_img" alt="프로필 사진" src="/resources/image/mypage/profile.jpg">      
      <img class="crown" alt="왕관이아이콘" src="/resources/image/mypage/crown.png">
      <img class="camera" id="camera" alt="카메라이아이콘" src="/resources/image/mypage/camera.png">
      <div id="my_info3">
         <p class="uid">아이디</p>
         <p class="unick">닉네임</p>
      </div>
   </div>
   <div id="my_info2">
      <div class="my_info2_list">
         <div class="my_info2_item">이름</div>
         <div class="my_info2_data" style="margin-left: 120px;">홍길동</div>
      </div>
      <div class="my_info2_list">
         <div class="my_info2_item">생년월일</div>
         <div class="my_info2_data" style="margin-left: 80px;">1999-10-10</div>
      </div>
      <div class="my_info2_list">
         <div class="my_info2_item">성별</div>
         <div class="my_info2_data" style="margin-left: 128px;">남</div>
      </div>
      <div class="my_info2_list">
         <div class="my_info2_item">전화번호</div>
         <div class="my_info2_data" style="margin-left: 77px;">010-1234-5678</div>
      </div>
      <div class="my_info2_list">
         <div class="my_info2_item">이메일</div>
         <div class="my_info2_data" style="margin-left: 80px;">hong@naver.com</div>
      </div>
      <div class="my_info2_list">
         <div class="my_info2_item">비밀번호</div>
         <div class="my_info2_data" style="margin-left: 100px;">****</div>
      </div>
   </div>
   <div style="">
      <img id="more" class="more" alt="플러스아이콘" src="/resources/image/mypage/more.png">
   </div>
</div>
</div>

<!-- 비밀번호 확인 모달 -->
<!-- 햄언니 main 모달 1 -->
<div class="addmodal">
   <div class="cmodal-content">
        <span class="modal_close" id="close">&times;</span>
      <div class="modal_title">프로필 관리</div>
      <p id="modal_pwcheck">본인확인 비밀번호</p>
      <div class="modal_content">
         <div class="modal_item">비밀번호</div>
         <div class="modal_pw">
            <input type="text" id="pwcheck" name="pwcheck" required="required"/>
         </div>
      </div>
   <button id="modal_pw_ok" class="modal_pw_ok">확인</button>
   </div>
</div>

<!-- 개인정보 수정 모달 -->      
<div class="editmodal" id="editmodal">
   <form action="#" method="post">
   <div class="cmodal-content">
      <span class="modal_close" id="close2">&times;</span>
      <div class="modal_title">프로필 관리</div>
      <table class="modal_content2">
           <tr class="modal_element2">
                <td class="modal_name">이름</td>
               <td><input class="modal_readonly" type="text" value="홍길동" readonly /></td>
               <td class="modal_name">생년월일</td>
             <td><input class="modal_readonly" type="text" value="1997-03-03" readonly /></td>
           </tr>
           <tr>
              <td class="modal_name">아이디</td>
             <td><input class="modal_readonly" type="text" value="id홍길동" readonly /></td>
             <td class="modal_name">성별</td>
             <td><input class="modal_readonly" type="text" value="남성" readonly/></td>
         </tr>
            <tr>
                <td class="modal_name">닉네임</td>
             <td><input class="modal_write" type="text" value="길동"/></td>
                <td class="modal_name">이메일</td>
                <td><input class="modal_write" type="text" value="hong@gamil.com"></td>
           </tr>
           <tr>
                <td class="modal_name">비밀번호</td>
             <td><input class="modal_write" type="text" value="****"  /></td>
             <td class="modal_name">전화번호</td>
             <td><input class="modal_write" type="text" value="010-1111-2222" /></td>
           </tr>
      </table>
      
      <button id="modal_change" class="modal_ok" onclick="ProfileChanage();">수정</button>
      
<!--       <button id="editsubmit">수정</button> -->
<!--       <button id="deletesubmit">삭제</button> -->
   </div>
   </form>
</div>

<!-- 프로필 수정 모달 -->
<div class="addmodal2">
   <div class="cmodal-content">
        <span class="modal_close" id="close3">&times;</span>
      <div class="modal_title">프로필 관리</div>
      <p id="modal_pwcheck">프로필 사진 선택</p>
      <div class="modal_content">
         <div class="modal_filetext">파일</div>
         <div class="modal_pw">
            <input type="file" id="pwcheck" name="pwcheck" required="required"/>
         </div>
      </div>
   <button id="modal_ok2" class="modal_pw_ok" onclick="imgChanage();">확인</button>
   </div>
</div>




<c:import url="footer.jsp" />

</body>
</html>