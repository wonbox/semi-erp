<%@page import="org.semierp.dao.NoticeDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	NoticeDao notice = new NoticeDao();
	notice.insert(title, content);
	
	response.sendRedirect("notice.jsp");
%>