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
    .from-group{
     width:300px; 
     padding:10px;
     margin: auto;
     }
</style>
</head>
<body>
    <div style="text-align : center;">
    <a href="mainHome.jsp"><img src ="image\logo.png"  width ="150" height ="150"></a>
    </div>
     <div class="container">
         <div class = "col-lg-4"></div>
         <div class = "col-lg-4">
             <div class = "jumbotron" style= "padding-top: 20px">
                <form metod="post" action="joinAction.jsp">
                    <h3 style = "text-align: center;">ȸ������</h3>
                    
                    <div class = "from-group"  >
                        <input type = "text" class= "form-control" placeholder="�̸�" name="userName" maxlength="20" >
                    </div>
                    
                    <div class = "from-group">
                        <input type = "text" class= "form-control" placeholder="���̵�" name="userID" maxlength="20">
                    </div>
                    
                    <div class = "from-group">
                        <input type = "password" class= "form-control" placeholder="��й�ȣ" name="userPassword" maxlength="20">
                    </div>
                     <div class = "from-group">
                        <input type = "password" class= "form-control" placeholder="��й�ȣ Ȯ��" name="userPassword" maxlength="20">
                    </div>
                                     
                    <div class = "from-group">
                        <input type = "email" class= "form-control" placeholder="�̸���" name="userEmail" maxlength="20">
                    </div >
                    <input type = "submit" class = "btn btn-primary form-control" value="ȸ������"; style="background-color:#a6c1ee; border-color:#a6c1ee; width:300px;">
              </div>
             
                </form>
             </div>
         </div>
     </div>
     <script src = "https://code.jquery.com/jquery-3.1.1.min.js"></script>
     <script src = "js/bootstrap.js"></script>
</body>
</html>