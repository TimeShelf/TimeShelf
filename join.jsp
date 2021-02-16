<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content = "width-device=width", initial-scale = "1">
<link rel = "stylesheet" href = "css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Noto+Serif+KR:wght@200&display=swap');
    
     .from-group{
     width: 300px;
     padding:10px;
     margin: auto;
     }
     
     *{
     font-family: 'Noto Serif KR', serif;
     }
     
     #idCheck{
     display: inline-block;
       width: 90px;
       
     }
     
    /* .form-controla {
       display: inline-block;
     }
     
     .form-controla.b{
       background-color:#a6c1ee; 
       border-color:#a6c1ee; 
       color:white; 
  
     } */
     
</style>
<%
  String name = (String)request.getAttribute("namen");
  if( name == null ){
	name = "";
}
String id = (String)request.getAttribute("id");
  if( id == null ){
	id = "";
}
String password = (String)request.getAttribute("password");
  if( password == null ){
	password = "";
}
String passwordC = (String)request.getAttribute("passwordC");
  if( passwordC == null ){
	passwordC = "";
}
String email = (String)request.getAttribute("email");
  if( email == null ){
	email = "";
}
  String errMsg = (String)request.getAttribute("errMsg");
  if( errMsg == null ){
	errMsg = "";
}  

%>
 

    
</head>
 <body>    
 <script>
 function info_chk() {
    if(document.getElementById('error').innerHTML=='The ID exists'){ alert('중복확인 다시'); return false;}else 
    	return true;
	 }

 function info_chk2(frm) { 
	 frm.action='joinAction2.jsp';
     frm.submit(); 
     return true; 
     }
 
 </script>
    <div style="text-align : center;">
    <a href="mainHome.jsp"><img src ="image\logo.png"  width ="200" height ="200"></a>
    </div>
     <div class="container">
         <div class = "col-lg-4"></div>
         <div class = "col-lg-4">
             <div class = "jumbotron" style= "padding-top: 20px">
                <form metod="post" action="joinAction.jsp" onsubmit ='return info_chk()'>
                 <h3 style = "text-align: center;">회원가입</h3>
                  <div>
                    <div class = "from-group"  >
                        <input type = "text" id = "namen" class= "form-control" placeholder="이름" name="userName" maxlength="20" value="<%=name%>">
                    </div>
                    
                    <div class = "from-group">
                        <input type="text"  id = "id" class= "form-control" placeholder="아이디" name="userID" maxlength="20" id="idCheck" style="width: 175px;" value="<%=id%>">
                        <input type="button" class="form-control" value="중복 확인" onclick="return info_chk2(this.form);" id="idCheck" style="background-color:#a6c1ee; border-color:#a6c1ee; color:white;">
                      
                     <p id="error"><%=errMsg%></p>
                    </div>
                    </div>
                    
                    <div class = "from-group">
                        <input type = "password"  id = "password" class= "form-control" placeholder="비밀번호" name="userPassword" maxlength="20" value="<%=password%>">
                    </div>
                    
                     <div class = "from-group">
                        <input type = "password"  id = "passwordC" class= "form-control" placeholder="비밀번호 확인" name="checkPassword" maxlength="20" value="<%=passwordC%>">
                    </div>
                                     
                    <div class = "from-group">
                        <input type = "email"  id = "email" class= "form-control" placeholder="이메일" name="userEmail" maxlength="20" value="<%=email%>">
                    </div>
                    
                    <div class = "from-group">
                         <input type = "submit" class = "btn btn-primary form-control" value="회원가입" style="background-color:#a6c1ee; border-color:#a6c1ee;" >
                    </div>
                  </form>
               </div>           
             </div>
         </div>
     <script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
     <script src = "js/bootstrap.js"></script>
 </body>
</html>