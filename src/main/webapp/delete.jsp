<%@page import="com.cafe24.mysite.repository.GuestBookDao"%>
<%@page import="com.cafe24.mysite.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String no = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	
	new GuestBookDao().delete(vo);
	response.sendRedirect("/guestbook");
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