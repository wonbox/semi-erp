<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	String pdiv = request.getParameter("pdiv");
	int price = Integer.parseInt(request.getParameter("price"));
	
	productDao pDao = new productDao();
	pDao.update(pno, pname, pnum, pdiv, price);
	
	response.sendRedirect("Stock.jsp");	
%>