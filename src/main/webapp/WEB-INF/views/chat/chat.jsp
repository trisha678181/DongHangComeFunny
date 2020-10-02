<%@page import="com.DongHang_ComeFunny.www.model.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.InetAddress" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<head>
   <% User user = (User)session.getAttribute("logInInfo"); %>
   
	<!-- styles.css -->
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/community/styles.css" />
	
	<!-- jQuery -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	
	<!-- 부트스트랩 -->
	<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<!-- fontawesome 아이콘 -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
	
	<!-- semantic ui -->
	<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/resources/css/semantic/semantic.min.css"> --%>
	<%-- <script src="<%=request.getContextPath() %>/resources/css/semantic/semantic.min.js"></script> --%>
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="UTF-8">
    <title>채팅 서비스</title>
    <!-- Bootstrap core CSS -->
   	<%InetAddress inet= InetAddress.getLocalHost();%>
 
 
</head>
<body>
	
<c:import url="/WEB-INF/views/board/boardheader.jsp" />
<div style="margin:auto;width:1200px; height: 1000px;border:1px solid black;" >    


    <div style="margin:auto">
    <div style="float:left;">	
    		<span>접속자 : </span>
    		<span id="userCnt">0</span>
    		<span> 명</span>
	    	<div id = "chatUser" style = " width:200px; height: 600px;border:1px solid; background-color : white"></div>		  
	    </div>
	    <div style="float:left;">
	    <span>채팅방</span>
	    	<div id = "chatroom" style = " width:800px; height: 600px; border:1px solid; background-color : gray"></div>
		    <input type = "text" id = "message" style = "height : 30px; width : 340px" placeholder="내용을 입력하세요" autofocus>
		    <button class = "btn btn-primary" id = "send">전송</button>
	    </div>
    </div>
</div>
<c:import url="/WEB-INF/views/board/boardfooter.jsp" />    
</body>

    <script>
        var webSocket;
        
        connect();
        document.getElementById("send").addEventListener("click",function(){
            send();
        })
        function connect(){
        	webSocket = new WebSocket("ws://"+"<%=inet.getHostAddress()%>"+":"+"<%=request.getServerPort()%>"+"/chat/websocket");
            
            webSocket.onopen = onOpen;
            webSocket.onclose = onClose;
            webSocket.onmessage = onMessage;
        }
        function disconnect(){            
            webSocket.close();
        }
        function send(){
        
            msg = document.getElementById("message").value;           
            chatroom = document.getElementById("chatroom");
            
            
            webSocket.send("<div class='chat-box'><div class='chat'>" + msg + "</div><div class='chat-info chat-box'>"+ getTimeStamp() +"</div></div>");
            
            
            document.getElementById("message").value = "";
            
            data = "<div class='chat-box'><div class='mychat'>" + msg + "</div><div class='chat-info chat-box'>"+ getTimeStamp() +"</div></div>"
            chatroom.innerHTML = chatroom.innerHTML + "<br>" + data;
        }
        function onOpen(){
        	webSocket.send("<%= user.getUserId()%>" + "_"+ "님이 입장하셨습니다.");        	
        }
        function onMessage(e){
            data = e.data;
            
            if(data.indexOf("_")!= -1){
            	var res = data.substring(0,data.indexOf("_"))
            	var reData = data.substring(data.indexOf("_")+1)
            	if (res =="userId"){
            		var uId = data.substring(data.indexOf("_")+1)
            		var uIdArr = uId.split(",")
            		chatUser = document.getElementById("chatUser");
            		chatUser.innerHTML ="";
            		userCnt = document.getElementById("userCnt");
            		userCnt.innerHTML =uIdArr.length;
            		for (var i in uIdArr)
            		{
            		  chatUser.innerHTML =chatUser.innerHTML + uIdArr[i]+"<br>";
            		}
            	}else{
            		
            		if(res.indexOf("-")!= -1){
            				
            				if(res.substring(0,res.indexOf("-")) =="id"){
            					var id = res.substring(res.indexOf("-")+1)
            					chatroom = document.getElementById("chatroom");
                    			chatroom.innerHTML = chatroom.innerHTML + "<br>" + id + "<br>" + reData;
            				}
                  			
            			}
            		else{chatroom.innerHTML = chatroom.innerHTML + "<br>" + res + "<br>" + reData;
            		
            		}
                    }
            }else{
            
            chatroom = document.getElementById("chatroom");
            chatroom.innerHTML = chatroom.innerHTML + "<br>" + data;
            }
        }
        function onClose(){
 
        }

        function getTimeStamp() {
          var d = new Date();
          var s =
            leadingZeros(d.getFullYear(), 4) + '-' +
            leadingZeros(d.getMonth() + 1, 2) + '-' +
            leadingZeros(d.getDate(), 2) + ' ' +

            leadingZeros(d.getHours(), 2) + ':' +
            leadingZeros(d.getMinutes(), 2);

          return s;
        }

        function leadingZeros(n, digits) {
          var zero = '';
          n = n.toString();

          if (n.length < digits) {
            for (i = 0; i < digits - n.length; i++)
              zero += '0';
          }
          return zero + n;
        }

    </script>