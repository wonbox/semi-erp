<%@page import="org.semierp.dao.salesDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pout = Integer.parseInt(request.getParameter("pout"));
	int poutnum = Integer.parseInt(request.getParameter("poutnum"));
	
	salesDao sDao = new salesDao();
	sDao.update(pout, poutnum);
	response.sendRedirect("productout.jsp");	
%>