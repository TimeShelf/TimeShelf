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
     
     
</style>
</head>
<body>
    <div style="text-align : center;">
    <a href="mainHome.jsp"><img src ="image\logo.png"  width ="200" height ="200"></a>
    </div>
     <div class="container">
         <div class = "col-lg-4"></div>
         <div class = "col-lg-4">
             <div class = "jumbotron" style= "padding-top: 20px">
                <form metod="post" action="joinAction.jsp">
                    <h3 style = "text-align: center;">회원가입</h3>
                    <div>
                    <div class = "from-group"  >
                        <input type = "text" class= "form-control" placeholder="이름" name="userName" maxlength="20" >
                    </div>
                    
                    <div class = "from-group">
                        <input type = "text" class= "form-control" placeholder="아이디" name="userID" maxlength="20" style="width: 150px;">
                        <button class="form-control" type="button" style="background-color:#a6c1ee; border-color:#a6c1ee; color:white; width: 150px;" >아이디 확인</button>
                    </div>
                    
                    <div class = "from-group">
                        <input type = "password" class= "form-control" placeholder="비밀번호" name="userPassword" maxlength="20">
                    </div>
                     <div class = "from-group">
                        <input type = "password" class= "form-control" placeholder="비밀번호 확인" name="checkPassword" maxlength="20">
                    </div>
                                     
                    <div class = "from-group">
                        <input type = "email" class= "form-control" placeholder="이메일" name="userEmail" maxlength="20">
                    </div>
                    <div class = "from-group">
                         <input type = "submit" class = "btn btn-primary form-control" value="회원가입"; style="background-color:#a6c1ee; border-color:#a6c1ee;" >
                    </div>
                    </div>        
                </form>
             </div>
         </div>
     </div>
     <script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
     <script src = "js/bootstrap.js"></script>
</body>
</html>