<%@page import="org.semierp.dao.productcompoutDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int outsize = Integer.parseInt(request.getParameter("outsize"));
	String outdate = request.getParameter("outdate");
	
	productcompoutDao pDao = new productcompoutDao();
	pDao.update(pno, pname, outsize, outdate);
	
	response.sendRedirect("ComponentOutUpdate.jsp");	
%>