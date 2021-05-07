<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <style>
            #addsch{
                border-style: solid;
                display: inline-block;
                border-radius: 20px;
                width: 590;
                height: 560;
                margin-right: 20;
                border-color: gainsboro;
            }
            #todolist{
                border-style: solid;
                display: inline-block;
                border-radius: 20px;
                width: 300;
                height: 560;
                border-color: gainsboro;
            }
            .name{      
                display: inline-block;
                text-align: left;
                margin: 20 0 20 50;
                width: 200;
                font-size: 18; 
                
            }
            #add{
                margin-left: 215;
                border-style: solid;
                padding: 7 20 7 20;
                border-radius: 3px;
                font-size: 15;
                font-weight: 600;
                width: 160;
                text-align: center;
            }
            .input{
                padding : 6;
                display: inline-block;  
                border-radius: 5px;
                border-color: black;
                font-size: 16;
            }
            #main{
                width: 932;
                margin: auto;
            }
            #tdl{          
                font-size: 20;
                text-align: center;
                margin-top: 20;
            }
            #tdl2{
                padding: 20;
            }
        </style>
    </head>
    <body>
     <br>
      <div id="main">
       <div id="addsch">
           <form name="myfrom">
              <br>
               <span class="name">일정 이름</span> <input type="text" class="input" required><br>
               <span class="name">예정 날짜</span> <input type="date" class="input" required><br>
               <span class="name">중요도</span> <input type="range" value="3" min="1" max="5" required><br>
               <span class="name">예상시간</span> <input type="number" value="3" class="input" style="width: 55;"><br>
               <span class="name">고정 일정 여부</span> <input type="radio" name="a" id="1" required><label for="1"> O</label> &nbsp;&nbsp;&nbsp;<input type="radio" name="a" id="2"  required checked="checked"><label for="2"> X</label><br>
               <span class="name">선호 시간대</span> <input type="time" class="input" size=10 required> &nbsp; &nbsp; ~ &nbsp; &nbsp; <input type="time" class="input" size=10 required><br>
               <span class="name">메모</span> <input type="text" class="input"  required size="34"><br><br><br>
               <input type="submit" value="일정추가" id="add">  
           </form>             
       </div>
       <div style="float: right" id="todolist">
               <div id="tdl">to do list</div>
               <div id="tdl2"></div>
       </div>
       </div>       
          
    </body>
</html>