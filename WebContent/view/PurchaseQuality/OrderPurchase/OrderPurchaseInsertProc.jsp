<%@page import="org.semierp.dao.orderDao"%>
<%@page import="org.semierp.dao.productDao"%>
<%@page import="org.semierp.dao.productcompinDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	String otitle = request.getParameter("otitle");
	String ocontent = request.getParameter("ocontent");
	
	orderDao orderlist = new orderDao();
	orderlist.insert(otitle, ocontent);
	
	response.sendRedirect("OrderPurchase.jsp");
%>