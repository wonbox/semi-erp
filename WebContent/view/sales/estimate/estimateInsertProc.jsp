<%@page import="org.semierp.dao.salesDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int eid = Integer.parseInt(request.getParameter("eid"));
	String sname = request.getParameter("sname");
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int enum1 = Integer.parseInt(request.getParameter("enum"));
	int price = Integer.parseInt(request.getParameter("price"));
	int esum = Integer.parseInt(request.getParameter("esum"));

	salesDao sDao = new salesDao();
	sDao.insert(eid, sname, pno, pname, enum1, price, esum);
	
	response.sendRedirect("estimate.jsp");	
%>