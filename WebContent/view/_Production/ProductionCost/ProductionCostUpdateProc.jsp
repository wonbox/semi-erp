<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	int price = Integer.parseInt(request.getParameter("price"));
	
	productDao pDao = new productDao();
	pDao.update(pno, price);
	
	response.sendRedirect("ProductionCost.jsp");	
%>