<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content = "width-device=width", initial-scale = "1">
<link rel = "stylesheet" href = "css/bootstrap.css">
<title>JSP �Խ��� �� ����Ʈ</title>
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
    <a href="mainHome.jsp"><img src ="image\logo.png"  width ="200" height ="200" ></a>
    </div>
     <div class="container">
         <div class = "col-lg-4"></div>
         <div class = "col-lg-4">
             <div class = "jumbotron" style= "padding-top: 20px">
                <form metod="post" action="loginAction.jsp">
                    <h3 style = "text-align: center;">�α���</h3>
                    <div class = "from-group">
                        <input type = "text" class= "form-control" placeholder="���̵�" name="userID" maxlength="20">
                    </div>
                    <div class = "from-group">
                        <input type = "password" class= "form-control" placeholder="��й�ȣ" name="userPassword" maxlength="20">
                    </div>
                     <div class = "from-group">
                    <input type = "submit" class = "btn btn-primary form-control" value="�α���"  style="background-color:#a6c1ee; border-color:#a6c1ee;">
                    </div>
                </form>
             </div>
         </div>
     </div>
     <script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
     <script src = "js/bootstrap.js"></script>
</body>
</html>