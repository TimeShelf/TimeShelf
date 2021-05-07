<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <style>
            section {
               text-align: center;
            }                     
            section{
                width: 1070px;
                overflow: hidden;
                /*text-align: center;*/
                margin: 0 auto;
                 
            }
            .timeline{
                width: 70%;
                /*width: 55%;*/
                /*float:left;*/
                border-style:solid;
                border-color: gainsboro;
                border-radius: 30px;
                padding: 30px 20px 10px 20px;
                margin: 0 auto;
                /*일정클릭 시 memo display, timeline width:55%, float:left*/
            }
            .memo{
                display:none;
                /*display:inline-block;*/
                /*inline은 좌우밖에 설정X, block은 한줄단위*/
                width:37%;
                height: 700px;
                /*height는 js에서 timeline.style.height로 설정*/
                float:right;
                border-style:solid;
                border-color: gainsboro;
                border-radius: 30px;
                margin-left: 0px;
                padding: 10px 5px;
                background: linear-gradient(-10deg, #fbc2eb 0%, #a6c1ee 60%)
                /*background-image: linear-gradient(to top, #fbc2eb 0%, #a6c1ee 100%);*/
            }
            .timecase{
                width:100%;
                overflow:hidden;
            }
            .time{
                margin-bottom: 20px;
            }
            /*.time{
                margin-left:3px;
                float: left;
            }*/
            section hr {
                width:85%;
                float: right;
                border-style: solid;
                border-color: gainsboro;
                border-width: 1px;
                margin-left: 10px;
                margin-right:20px;
                /*margin-top: 30;*/
                display: inline-block;
            }
        </style>
        
        <script>
        ResultSet r1;
        
        try{
        	INSERT INTO schedule_per_day(id, num_schedule, per_extime, execute_day)
        	VALUE (‘’, r1.getNum_schedule(), null, r1.getDeadline());
        	}catch(Exception ignored){}
        	 
        
        </script>
    </head>
    <body>    
    <br><br>    
        <section>
            <div class="timeline">
                <div class="timecase">
                    <div class="time" id="0시">&nbsp;0:00<hr></div>
                    
                    <div class="time" id="1시">&nbsp;1:00<hr></div>
                    
                    <div class="time" id="2시">&nbsp;2:00<hr></div>
                    
                    <div class="time" id="3시">&nbsp;3:00<hr></div>
                    
                    <div class="time" id="4시">&nbsp;4:00<hr></div>
                    
                    <div class="time" id="5시">&nbsp;5:00<hr></div>
                    
                    <div class="time" id="6시">&nbsp;6:00<hr></div>
                    
                    <div class="time" id="7시">&nbsp;7:00<hr></div>
                    
                    <div class="time" id="8시">&nbsp;8:00<hr></div>
                    
                    <div class="time" id="9시">&nbsp;9:00<hr></div>
                    
                    <div class="time" id="10시">10:00<hr></div>
                    
                    <div class="time" id="11시">11:00<hr></div>
                    
                    <div class="time" id="12시">12:00<hr></div>
                    
                    <div class="time" id="13시">13:00<hr></div>
                    
                    <div class="time" id="14시">14:00<hr></div>
                    
                    <div class="time" id="15시">15:00<hr></div>
                    
                    <div class="time" id="16시">16:00<hr></div>
                    
                    <div class="time" id="17시">17:00<hr></div>
                    
                    <div class="time" id="18시">18:00<hr></div>
                    
                    <div class="time" id="19시">19:00<hr></div>
                    
                    <div class="time" id="20시">20:00<hr></div>
                    
                    <div class="time" id="21시">21:00<hr></div>
                    
                    <div class="time" id="22시">22:00<hr></div>
                    
                    <div class="time" id="23시">23:00<hr></div>
                    
                    <div class="time" id="24시">24:00<hr></div>
                </div>
            </div>
            <div class="memo">
                
            </div>
            <!--클릭 안했을때는 memo 부분 없고 클릭하면 크기 조정되게, 이건 이벤트 사용해야겠다.-->
        </section>
    </body>
</html>