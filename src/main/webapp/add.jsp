<%@page import="com.cafe24.mysite.repository.GuestBookDao"%>
<%@page import="com.cafe24.mysite.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("contents");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("/guestbook");
%>