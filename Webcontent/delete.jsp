<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import = "com.javaex.dao.BookDao" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));

	BookDao bookDao = new BookDao();
	
	int count = bookDao.bookDelete(no);
	
	System.out.println(count);
	
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