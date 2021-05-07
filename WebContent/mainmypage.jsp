<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
   <head>
   <meta charset="UTF-8">
       <title>Schedule</title>
       <script>
         function day(){
             document.getElementById("mainiframe").height='1070'
         }
         function week(){
             document.getElementById("mainiframe").height='650'
         }
         function month(){
             document.getElementById("mainiframe").height='1050'
         }
         function main(){
             document.getElementById("mainiframe").height='620'
         }
       </script>
       <style>
           header {
               position: relative;
               margin: 0 auto;
               text-align: center;
               width: 1100;
           }
           #logo {
           		width:1100px;
           		margin: 0 auto;
           }
           hr{
               width: 1000px;
               border-width: 1;
               border-style:solid;  
               margin-top: 30;
               color: gainsboro;
           }
           ul{
               text-align: center;
            
           }
           li{
               display: inline-block;
               margin-left: 80;
               margin-right: 80;
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
           }
           #login:hover {
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
           footer{
               width: 1100px;
               margin: auto;
               text-align: center;
               margin-top: 25px;
           }
       </style>
   </head>
    <body style="table-layout: fixed">
        <header>
           <br>
           <div id = "logo">
            <a target="mainiframe" href="addschedule.jsp"><img src="D:\Java\zz\WebContent\image\로고.png" width="250" style="margin: -50 0 -30 0" onclick="main()"></a>
            <div class="login"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mypage.jsp" id="login">마이페이지</a> /
            <a href="main.jsp" id="login">로그아웃</a>
            </div>
            </div>
        </header>
        <br>
        <nav>
            <div style="width: 1100; ">
            
            <hr style="margin-bottom: -5">
            <ul>
                <li style="margin-left: 20">
                   <a target="mainiframe" href="daily.jsp" id="day"><img src="D:\Java\zz\WebContent\image\day.png" width="100" onclick="day()"></a>                 
                </li>
                <li>
                    <a target="mainiframe" href="week.jsp" id="week"><img src="D:\Java\zz\WebContent\image\week.png" width="100" onclick="week()"></a>   
                </li>
                <li>
                    <a target="mainiframe" href="month.jsp" id="month"><img src="D:\Java\zz\WebContent\image\month.png" width="100" onclick="month()"></a>   
                </li>
            </ul>    
        
            <hr style="margin-top: -10">
            </div>
        </nav>
        <section style="position: relative; margin: 0 auto; ">
            <iframe src="addschedule.jsp" width="1100" height="620" name="mainiframe" id="mainiframe">
            </iframe>
        </section>
        <footer>
            <span id="on">ⓒO(n) 2021</span>
        </footer>
    </body>
</html>