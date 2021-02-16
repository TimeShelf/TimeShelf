<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    
 <%@ page import = "user.UserDAO"  %>
 <%@ page import = "java.io.PrintWriter" %>
 <% request.setCharacterEncoding("UTF-8"); %>
 
 
 <jsp:useBean id = "user" class = "user.User" scope="page"/> 
 <jsp:setProperty name="user" property = "userID" />
 <jsp:setProperty name="user" property = "userPassword" />
 <jsp:setProperty name="user" property = "checkPassword" />
 <jsp:setProperty name="user" property = "userName" />
 <jsp:setProperty name="user" property = "userEmail" />


 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
      <%
         String name = user.getUserName();
         String id = user.getUserID();
         String password = user.getUserPassword();
         String passwordC = user.getCheckPassword();
         String email = user.getUserEmail();
         
         
    	  UserDAO userDAO = new UserDAO();
          int result = userDAO.check(user.getUserID());
          if(result == -1){
        	 //request.setAttribute("errMsg","The ID exists");
        	  //RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
       	      //rd.forward(request, response);
        	  PrintWriter script = response.getWriter();
        	  script.println("<script>");
        	 // script.println("alert('이미 사용중인 아이디입니다.')");
        	  script.println("history.back()");
        	  script.println("</script>");
        	 // session.setAttribute("errMsg","사용가능");
        	 /* if(name != null) request.setAttribute("namen", name);
        	  if(id != null) request.setAttribute("id", id);
        	  if(password != null) request.setAttribute("password", password);
        	  if(passwordC != null) request.setAttribute("passwordC", passwordC);
        	  if(email != null) request.setAttribute("email", email);*/
       
        	  // RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
        	  // rd.forward(request, response);
        	 /// response.sendRedirect("join.jsp");
        	 // pageContext.forward("join.jsp");       
          }  
          else{
        	  //request.setAttribute("errMsg","사용가능합니다.");
        	  //RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
       	      //rd.forward(request, response);
        	  PrintWriter script = response.getWriter();
    	      script.println("<script>");
    	      //script.println("alert('사용가능합니다.')");
    	      script.println("history.back()");
    	      script.println("</script>");
           	  //if(name != null) request.setAttribute("namen", name);
        	  //if(id != null) request.setAttribute("id", id);
        	  //if(password != null) request.setAttribute("password", password);
        	  //if(passwordC != null) request.setAttribute("passwordC", passwordC);
        	  //if(email != null) request.setAttribute("email", email);
        	  
        	  //request.setAttribute("errMsg","사용가능");
        	  //RequestDispatcher rd = request.getRequestDispatcher("join.jsp");
        	  //rd.forward(request, response);*/
        	 //response.sendRedirect("join.jsp");
        	 //pageContext.forward("join.jsp");
          }
      %>
</body>
</html>