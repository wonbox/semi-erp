<%@page import="org.semierp.dao.salesDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int eid = Integer.parseInt(request.getParameter("eid"));
	int enum1 = Integer.parseInt(request.getParameter("enum"));
	int esum = Integer.parseInt(request.getParameter("esum"));
	
	salesDao sDao = new salesDao();
	sDao.update(eid, enum1, esum);
	
	response.sendRedirect("estimate.jsp");	
%>