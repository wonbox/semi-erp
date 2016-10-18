<%@page import="org.semierp.dao.productDao"%>
<%@page import="org.semierp.dao.productcompinDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname= request.getParameter("pname");
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	String pdiv = "H";
	int price = Integer.parseInt(request.getParameter("price"));
	
	productDao producttion = new productDao();
	producttion.update(pno, pname, pnum, pdiv, price);
	
	response.sendRedirect("../Production.jsp");
%>