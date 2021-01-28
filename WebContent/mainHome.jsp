<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
   <head>
   <meta charset="UTF-8">
       <title>Schedule</title>
       <style>
           header {
               position: relative;
               margin: 0 auto;
               text-align: center;
               width: 1100;
           }
           hr{
               width: 1000px;
               border-width: 2;
               border-style:solid;  
               margin-top: 30
           }
           ul{
               text-align: center;
            
           }
           li{
               display: inline-block;
               margin-left: 50;
               margin-right: 50;
               font-size: 20;
           }
           a:visited {
               color: black;
           }
           a:link {              
               color: black;
               text-decoration: none;
           }
           a:hover {
               color: black;
               font-weight: bold;
           }
           section {
               text-align: center;
           }
           iframe {
               border-style: none;
           }
           .login{
               position: absolute;
               
               text-align: right;
               margin-top: 15;
               margin-bottom: -20;
           }
           nav>div{
               position: relative;
               margin: 0 auto;
           }
       </style>
   </head>
    <body style="table-layout: fixed">
        <header>
           <br>
            <img src="로고.png">
            <div class="login"> <a  href="login.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;로그인</a> /
            <a href="join.jsp">회원가입</a>
            </div>
        </header>
        <br>
        <nav>
            <div style="width: 1100; ">
            
            <hr style="margin-bottom: -5">
            <ul>
                <li style="margin-left: 10">
                   <a target="mainiframe" href="daily.html">일간</a>                 
                </li>
                <li>
                    <a target="mainiframe" href="week.html">주간</a>   
                </li>
                <li>
                    <a target="mainiframe" href="month.html">월간</a>   
                </li>
            </ul>
            
            <hr style="margin-top: -5">
            </div>
        </nav>
        <section style="position: relative; margin: 0 auto; ">
           <br>
            <iframe src="main2.html" width="1100" height="1300" name="mainiframe">
            </iframe>
        </section>
    </body>
</html>