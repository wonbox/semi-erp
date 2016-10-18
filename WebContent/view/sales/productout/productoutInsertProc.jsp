<%@page import="org.semierp.dao.salesDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pout = Integer.parseInt(request.getParameter("pout"));
	int cno = Integer.parseInt(request.getParameter("cno"));
	String cname = request.getParameter("cname");
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int poutnum = Integer.parseInt(request.getParameter("poutnum"));
	
	salesDao sDao = new salesDao();
	sDao.insert(pout, cno, cname, pno, pname, poutnum);
	
	response.sendRedirect("productout.jsp");	
%>