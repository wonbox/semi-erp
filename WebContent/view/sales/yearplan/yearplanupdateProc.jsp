<%@page import="org.semierp.dao.salesDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int yid = Integer.parseInt(request.getParameter("yid"));
	int pno = Integer.parseInt(request.getParameter("pno"));
	int sellnum = Integer.parseInt(request.getParameter("sellnum"));
	int sump = Integer.parseInt(request.getParameter("sump"));
	String month = request.getParameter("month");
	
	salesDao sDao = new salesDao();
	sDao.update(yid, pno, sellnum, sump, month);
	
	response.sendRedirect("yearplan.jsp");	
%>