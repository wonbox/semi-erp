<%@page import="org.semierp.dao.productuoDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	int pnum = Integer.parseInt(request.getParameter("pnum"));
		
	productuoDao pDao = new productuoDao();
	pDao.update(pno, pnum);
	
	response.sendRedirect("ComponentIn.jsp");	
%>