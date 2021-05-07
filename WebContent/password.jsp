<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
       <script>
           function colordown(c1, c2){
               document.getElementById("signup").style.backgroundColor = c1;               document.getElementById("signup").style.color = c2;       
           }
           function colorup(c1, c2){
               document.getElementById("signup").style.backgroundColor = c1;               document.getElementById("signup").style.color = c2;  
           }
           function pass(){
               var pw1 = document.myfrom.pw1;
               var pw2 = document.myfrom.pw2;               
               if(pw1.value!=pw2.value)
                   document.getElementById("pw3").style.color = 'red';
               else
                   document.getElementById("pw3").style.color = 'white';
               if(pw2.value=="")
                   document.getElementById("pw3").style.color = 'white';
           }
        </script>
        <style>
            #signdiv{
                text-align: center;
                margin-top: 140;
            }
            .input{
                padding : 10;
                display: inline-block;  
                border-radius: 5px;
                border-color: black;
                margin: 5 0 2 0;
            }
            #signup{
                border-style: solid;
                padding: 11 130 11 130;
                border-color: black;
                border-width : 3;
                border-radius: 5px;
                background-color: black;
                color : white;
                font-size: 15;
                font-weight: bold;
                text-align: center;
            }
            .list{
                text-align: left;
                width: 223;
                margin: auto;
                font-weight: bold;
                margin-top: 5;
            }
            #pw3{
                color: white;
                font-size: 12;
            }
        </style>
    </head>
    <body>
        <div id="signdiv">
            <a target="_self" href="mainmypage.jsp" ><img src="D:\Java\zz\WebContent\image\로고.png" width="250" style="margin-bottom: -30"></a>
            <br><br><br>
            <form name="myfrom">
            <div class="list">비밀번호<br><input type="password" class="input" size=30 name="pw1" onchange="pass()" required></div><br>
            <div class="list" style="margin-bottom: 10">비밀번호 확인<br><input type="password" class="input" size=30 name="pw2" onchange="pass()" required><span id="pw3">비밀번호가 일치하지 않습니다.</span></div>
            <br>
            <input type="submit" value="비밀번호 변경" id="signup" onmouseup="colorup('black', 'white')" onmousedown="colordown('white', 'black')">
            </form>
        </div>
    </body>
</html>