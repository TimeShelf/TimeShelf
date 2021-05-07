<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html> 

<head> 
<meta charset="UTF-8">
<script language="JavaScript">



function getDayText(year, month){

    var dayTd = [];

    var d1 = (year+(year-year%4)/4-(year-year%100)/100+(year-year%400)/400+month*2+(month*5-month*5%9)/9-(month<3?year%4||year%100==0&&year%400?2:3:4))%7; 

    for (i = 0; i < 42; i++) { 

        if (i%7==0){ 

            dayTd += '</tr>\n<tr>'; 

        } 

        if (i < d1 || i >= d1+(month*9-month*9%8)/8%2+(month==2?year%4||year%100==0&&year%400?28:29:30)) {

            dayTd += '<td> </td>'; 

        }else{
            a = (i+1-d1);
            dayTd += '<td' + (i%7 ? '' : ' style="color:red;"') + '>' + '<div id="day' + a + '">' + a + '</div></td>'; 

        }

    } 

    return dayTd;

}



//dayArray를 tag로 감싸서 text로 만듬

function getCalendarText(y, m){

    var text = '<table width = 1000>\n<tr><td colspan=7 style="text-align:center;  height : 50; ">' 
    
    text += '&nbsp;<img src="up.png" width=30 onclick="showCalendar('+(y+1)+','+m+')">';
    
    text += '&nbsp;&nbsp;&nbsp;<img src="up.png" width=30 onclick="showCalendar('+(m==12?(y+1)+','+1:y+','+(m+1))+')">'
    
    text += '<br>'

    text += y + ' . ' + ((m < 10) ? ('0' + m) : m); 
    
    text += '<br>'
    
    text += '&nbsp;<img src="down.png" width=30 onclick="showCalendar('+(y-1)+','+m+')">';

    text += '&nbsp;&nbsp;&nbsp;<img src="down.png" width=30 onclick="showCalendar('+(m==1?(y-1)+','+12:y+','+(m-1))+')">'
    
    text += '<br><br>'

    text += '</td>'; 



    var dayTd = getDayText(y,m); 



    return text+dayTd + '</tr>\n</table>';

}





//날짜가 들어있는 array를 return

function getDayArray(year, month){

    var arDay = [];



    var d1 = (year+(year-year%4)/4-(year-year%100)/100+(year-year%400)/400

        +month*2+(month*5-month*5%9)/9-(month<3?year%4||year%100==0&&year%400?2:3:4))%7;



    var i = 0;

    var date = "";

    for (i = 0; i < 42; i++) {

        if (i < d1 || i >= d1+(month*9-month*9%8)/8%2+(month==2?year%4||year%100==0&&year%400?28:29:30)) {

            date = "";

            arDay.push({"no":i, "date":date, "day":i%7});

        }else{

            date = (i+1-d1);

            arDay.push({"no":i, "date":date, "day":i%7});

        }

        

    }



    return arDay;



}



//'calendarDiv에 달력 출력'

function showCalendar(y, m) { 

    text = getCalendarText(y, m);

    document.getElementById('calendarDiv').innerHTML = text; 

} 



</script> 
<style>
    table{
        margin: auto;
        table-layout: fixed;
        word-break: break-all;
    }
    td{
        font-size: 25;
        height: 140;
        text-align: center;
        vertical-align: super;
    }
    #day1{
        color: red;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
    #day2{
        color: orange;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
    #day3{
        color: green;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
    #day4{
        color: blue;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
    #day5{
        color: navy;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
    #day6{
        color: purple;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
    #day7{
        color: black;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
    #day31{
        color: cyan;
        border-style: solid;
        width: 130;
        height: 140;
        display: inline-block;
    }
</style>
</head> 

<body onload="showCalendar(2021,1)"> 
<div id="calendarDiv" style="font-family:Gulim;font-size:9pt;">

    

</div> 



<script>

    console.log( getDayArray(2021, 1) );

</script>

</body> 

</html> 