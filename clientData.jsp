<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    
 <%@ page import = "user.UserDAO"  %>
 <%@ page import = "user.User"  %>
 <%@ page import = "java.util.ArrayList"  %>
  
 <%@ page import = "java.io.PrintWriter" %>
 <% request.setCharacterEncoding("UTF-8"); %>
  <jsp:useBean id = "user" class = "user.User" scope="page"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name = "viewport" content = "width-device=width", initial-scale = "1">
<link rel = "stylesheet" href = "css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<% 
    UserDAO userDAO = new UserDAO();
    ArrayList<User> list = userDAO.client();
    for(int i = 0; i<list.size(); i++){
%>
<tr>
       <td><%= list.get(i).getUserID() %></td>
       <br>
</tr>
<%
    }
%>
</body>
  </html>
 