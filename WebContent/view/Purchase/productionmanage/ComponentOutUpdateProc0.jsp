<%@page import="org.semierp.dao.productDao"%>
<%@page import="org.semierp.dao.productcompoutDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	int pno = Integer.parseInt(request.getParameter("pno"));
	int price = Integer.parseInt(request.getParameter("price"));
	
	productcompoutDao productcompout = new productcompoutDao();
	productcompout.update(pno ,price);	//·Î±×
		
	response.sendRedirect("ComponentOut.jsp");
%>