<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import ="com.javaex.dao.BookDao" %>
<%@ page import ="com.javaex.vo.GuestVo" %>


<%
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String content = request.getParameter("content");
		String regDate = request.getParameter("regDate");
		
		GuestVo guestVo = new GuestVo(name, password, content, regDate);
		
	
		BookDao bookDao = new BookDao();
		
		bookDao.bookInsert(guestVo);
		
		
		System.out.println(guestVo);
		
		response.sendRedirect("./addList.jsp");
		

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>