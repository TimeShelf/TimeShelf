<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <script>
            function modi(a, b){
                document.getElementById(a).style.visibility='hidden'
                document.getElementById(b).style.display='inline'
            }
            function cancel(a, b){
                document.getElementById(a).style.visibility='visible'
                document.getElementById(b).style.display='none' 
                var mt = document.myform.moditext
                mt.value=""
            }
        </script>
        <style>
            #mypagediv{
                text-align: center;              
                width: 700;
                margin: auto;
                margin-top: 40;
            }
            #information{
                border-style: solid;
                text-align: left;
                padding: 30;
                width: 500;
                margin: auto;
            }
            #memo{
                border-style: solid;
                text-align: left;
                padding: 30;
                width: 500;
                margin: auto;
            }
            .info{
                display: inline-block;
                font-size: 18;
                margin: 15 0 15 0;
                width: 190;
            }
            #infoname{
                font-size: 18;
            }
            #infoid{
                font-size: 18;
            }
            #infoemail{
                font-size: 18;
            }
            #infomaxtime{
                font-size: 18;
            }
            #infomintime{
                font-size: 18;
            }
            #infosleep1{
                font-size: 18;
            }
            #infosleep2{
                font-size: 18;
            }
            #infobatch{
                font-size: 18;
            }
            .tit{
                width: 520;
                margin-left: 80;
                text-align: left;
                font-size: 20;
                margin-top: 10;
                margin-bottom: 13;
                font-weight: bold;
            }
            #memo2{
                font-size: 18;
            }
            #on{
                font-size: 25;
            }
            .modi{
                background-color: white;
                border-color: black;
                font-weight: bold;
                font-size: 15;
                padding: 2 6 3 6;
                float: right;
                margin-top: 14;
                border-radius: 4px;
                margin-right: 10;
            }
            #pwmodi{
                display: inline-block;
                background-color: white;
                border-color: black;
                border-style: solid;
                border-width: 2;
                font-weight: bold;
                font-size: 15;
                padding: 2 6 3 6;
                float: right;
                margin-top: 14;
                border-radius: 4px;
                margin-right: 10;
            }
            #moditext{
                border-style: solid;
                border-color: black;
                border-radius: 4px;
                padding: 2 6 3 6;
                margin-bottom: 10;
                float: right;
                margin-right: 10;
            }
            #timetext{
                border-style: solid;
                border-color: black;
                border-radius: 4px;
                padding: 3 6 3 6;
                margin-top: -1;
                margin-right: 95;
                float: right;
                font-size: 18;
            }
            #sleeptext{
                border-style: solid;
                border-color: black;
                border-radius: 4px;
                padding: 2 6 3 6;
                margin-bottom: 10;
                float: right;
                margin-right: 10;
            }
            #cancelbut{
                border-style: solid;
                border-color: black;
                background-color: white;
                padding: 2 6 3 6;
                font-weight: bold;
                font-size: 15;
                border-radius: 4px;
                margin-right: 10;
                float: right;
            }
            #completebut{
                border-style: solid;
                border-color: black;
                background-color: white;
                padding: 2 6 3 6;
                font-weight: bold;
                font-size: 15;
                border-radius: 4px;
                margin-right: 10;
                float: right;
            }
        </style>
    </head>
    <body>
        <div id="mypagediv">
            <a target="_self" href="mainmypage.jsp" ><img src="D:\Java\zz\WebContent\image\로고.png" width="250" style="margin-bottom: -20"></a><br><br><br>
            <div class="tit">회원정보</div>
            <div id="information">          
            <span class="info">이름</span><span id="infoname">qwer</span><br>
            <span class="info">아이디</span><span id="infoid">qwertyui</span><a target="_self" href="password.jsp"><input type="button" id="pwmodi" value="비밀번호 변경"></a><br>
            <span class="info">이메일</span><span id="infoemail">qwer@1234</span><span id="modi1"><input type="button" class="modi" id="emailmodi1" value="수정" onclick='modi("emailmodi1", "emailmodi2")'></span><br>
            <form name="emailform">
            <span id="emailmodi2" style="display: none">
            <input type="email" size=40 id='moditext' required>
            <br><br>&nbsp; 
            <input type="submit" value="수정완료" id="completebut">&nbsp;&nbsp; 
            <input type="button" value="수정취소" id="cancelbut" onclick='cancel("emailmodi1", "emailmodi2")'><br>       
            </span>
            </form>
            <span class="info" style="margin-top: 0">한 일정당 최대 시간</span><span id="infomaxtime">3</span><input type="button" id="maxtimemodi1" class="modi" value="수정" onclick='modi("maxtimemodi1", "maxtimemodi2")' style="margin-top: -1"><br>
            
            
            <form name="maxtimeform">
            <span id="maxtimemodi2" style="display: none">               
            <input type="submit" value="수정완료" id="completebut">&nbsp;&nbsp; 
            <input type="button" value="수정취소" id="cancelbut" onclick='cancel("maxtimemodi1", "maxtimemodi2")'>
            <input type="number" style="width: 50" id='timetext' value="3" required><br>       
            </span>
            </form>
            
            <span class="info" style="margin-top: 0">한 일정당 최소 시간</span><span id="infomintime">3</span><input type="button" id="mintimemodi1" class="modi" value="수정" onclick='modi("mintimemodi1", "mintimemodi2")'  style="margin-top: -1"><br>
            
            
            <form name="mintimeform">
            <span id="mintimemodi2" style="display: none">               
            <input type="submit" value="수정완료" id="completebut">&nbsp;&nbsp; 
            <input type="button" value="수정취소" id="cancelbut" onclick='cancel("mintimemodi1", "mintimemodi2")'>
            <input type="number" style="width: 50" id='timetext' value="3" required><br>       
            </span>
            </form>
            
            <span class="info" style="margin-top: 0">수면 시간</span><span id="infosleep1">0 : 00</span><span style="font-size: 25;">&nbsp;~&nbsp;</span><span id="infosleep2">0 : 00</span><input type="button" id="sleepmodi1" value="수정" onclick='modi("sleepmodi1", "sleepmodi2")'  style="margin-top: -1" class="modi"><br>
            
            <form name="sleepform">
            <span id="sleepmodi2" style="display: none">               
            <input type="time" style="width: 133" id='sleeptext' value="3" required><span style="float: right; font-size: 25; margin-top: -5;">&nbsp;~&nbsp;&nbsp;</span><input type="time" style="width: 133" id='sleeptext' value="3" required><br><br>    
            <input type="submit" value="수정완료" id="completebut">&nbsp;&nbsp; 
            <input type="button" value="수정취소" id="cancelbut" onclick='cancel("sleepmodi1", "sleepmodi2")'>   
            </span>
            </form>
            
            <span class="info" style="margin-top: 0;">일정 배치 순서</span><span id="infobatch">오늘</span>
            
            
            
            <input type="button" id="batchmodi1" value="수정" onclick='modi("batchmodi1", "batchmodi2")'  style="margin-top: -1" class="modi"><br>
            
            
            <form name="batchform">
            <span id="batchmodi2" style="display: none">                          
            <input type="submit" value="수정완료" id="completebut">&nbsp;&nbsp; 
            <input type="button" value="수정취소" id="cancelbut" onclick='cancel("batchmodi1", "batchmodi2")'> 
            <div style="text-align: right; display: inline-block; float: right; margin-right: 12; margin-top: 3"><input type="radio" name="a" id="1" required checked="checked"><label for="1">오늘</label> &nbsp;<input type="radio" name="a" id="2"  required><label for="2">마감일</label></div>     
            </span>
            </form>
            
            </div>
            <br>
            <div class="tit">메모</div>
            <div id="memo">
                <span id="memo2">^^메모^^</span>
            </div>
            <br>
            <span id="on">ⓒO(n) 2021</span>
        </div>
    </body>
</html>