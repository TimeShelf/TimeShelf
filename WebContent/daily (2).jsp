<%@page import="java.sql.*" %>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta charset="UTF-8"> -->
		<script language="JavaScript">
			window.onload = function(){
				<%
				/*키-시간
				벨류 - 이름
				HashMap<HashMap<이름, id>,시간>
				Vector<HashMap<>>*/
	    		/*
	  			String ur = (String)session.getAttribute("userid");
	  			Time timesleep;
	  			Time wakeup;
				
	  			try{
        			UserDAO userDAO = new UserDAO();
        			userDAO.pstmt = userDAO.conn.prepareStatement("SELECT * FROM mypage WHERE mypage.userid = ?;");
        			userDAO.pstmt.setString(1, ur);
        			userDAO.rs = userDAO.pstmt.executeQuery();
        			while(userDAO.rs.next()){
        				timesleep = userDAO.rs.getTime("time_sleep");
        				wakeup = userDAO.rs.getDate("sleep_ex");
        				wakeup.setHours(wakeup.getHours() + timesleep.getHours());
        	  		  	wakeup.setMinutes(wakeup.getMinutes() + timesleep.getMinutes());
        	  			//timesleep.setHours(23);
        	  			//wakeup.setHours(7);
        	  			//timesleep.setMinutes(7);
        			}
        		}
    			catch(Exception e){
    				e.printStackTrace();
    			}
	  			
	    		if(timesleep.getMinutes() != 0)
	    			timesleep.setHours(timesleep.getHours() + 1);
	    		*///real one
	    		Date timesleep = new Date();//test
	    		Date wakeup = new Date();//test
	    		timesleep.setHours(23);//test
	  			wakeup.setHours(7);//test
	  			timesleep.setMinutes(7);//test
	    		%>
				divHourline(<%=timesleep.getHours()%>,<%=wakeup.getHours()%>);
				//divSche();
			}
			function hourline(slptm, wake){
				var text = '';
				var sl = slptm;
				var wk = wake;
				if(sl < wk)
					sl += 24;
				for(i = wk; i<= sl; i++){
					var h = i%24;
					if(h/10 == 0){
						//text += '<div id="time'+h+'">'+' '+ h + ':00'+'<hr>'+'</div>';
						text += '<div class = "time" >'+' '+ h + ':00'+'<hr>'+'</div>';
					}
					else{
						//text += '<div id="time'+h+'">'+ h + ':00'+'<hr>'+'</div>';
						text += '<div class = "time">'+ h + ':00'+'<hr>'+'</div>';
					}
				}
				return text;
			}
			
			function divHourline(slptm, wake){
				text = hourline(slptm, wake);
				document.getElementById('hourL').innerHTML += text;
			}
			
			function task(){
				var text = '';
				<%
				/*
				Date cur = new Date();
        		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        		String strdate = df.format(cur);
        		String ur = (String)session.getAttribute("userid");
        		
    			try{
        			UserDAO userDAO = new UserDAO();
        			userDAO.pstmt = userDAO.conn.prepareStatement("SELECT name_schedule, per_extime FROM schedule, schedule_per_day WHERE schedule.userid = schedule_per_day.userid AND schedule_per_day.userid = ? AND schedule.num_schedule = schedule_per_day.num_schedule AND schedule_per_day.execute_day=? ORDER BY schedule.importance DESC;");
        			userDAO.pstmt.setString(1, ur);
        			userDAO.pstmt.setString(2, strdate);
        			userDAO.rs = userDAO.pstmt.executeQuery();
        			while(userDAO.rs.next()){
        				String nameSche = userDAO.rs.getString("name_schedule");
        				Date ext = userDAO.rs.getDate("per_extime");*/
        				%>/*
        					text += '<div class = "tsk">' + nameSche + '</div>';*/
        				<%
        				//String deadline = userDAO.rs.getString("deadline");
        				
        					//text+= '<div class ="tsk" style="width: 80%; background-color: #a6c1ee;">' + nameSche + '</div>';
        				/*
        			}
        		}
    			catch(Exception e){
    				e.printStackTrace();
    			}*/
				%>
				
				<%
				/*
        		Date cur = new Date();
        		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
        		String strdate = df.format(cur);
        		String ur = (String)session.getAttribute("userid");
    			try{
        			UserDAO userDAO = new UserDAO();
        			userDAO.pstmt = userDAO.conn.prepareStatement("SELECT name_schedule, deadline, per_extime, memo FROM schedule, schedule_per_day WHERE schedule.userid = schedule_per_day.userid AND schedule_per_day.userid = ? AND schedule.num_schedule = schedule_per_day.num_schedule AND schedule_per_day.execute_day=? ORDER BY schedule.importance DESC;");
        			userDAO.pstmt.setString(1, ur);
        			userDAO.pstmt.setString(2, strdate);
        			userDAO.rs = userDAO.pstmt.executeQuery();
        			while(userDAO.rs.next()){
        				String nameSche = userDAO.rs.getString("name_schedule");
        				//String deadline = userDAO.rs.getString("deadline");
        				*/
        				%>
        					//text+= '<div class ="tsk" style="width: 80%; background-color: #a6c1ee;">' + nameSche + '</div>';
        				<%/*
        			}
        		}
    			catch(Exception e){
    				e.printStackTrace();
    			}*/
        		%>
				
			}
			
			function divSche(){
				//text = task();
				document.getElementById('task').innerHTML = text;
			}
			
		</script>
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
    </head>
    <body>
    <br><br>    
        <section>
            <div class="timeline">
                	<div id="hourL" style="position:relative; z-index:5;">
                			<div class ="tsk" style="width: 70%; height:38px; position:absolute; z-index: 20; right: 75px; top:10px; line-height:38px; float:right; border-radius:10px; background-color: #a6c1ee;">밥먹기</div>
                </div>
            </div>
            <div class="memo">
                
            </div>
            <!--클릭 안했을때는 memo 부분 없고 클릭하면 크기 조정되게, 이건 이벤트 사용해야겠다.-->
        </section>
    </body>
</html>