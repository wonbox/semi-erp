<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	
	productDao production = new productDao();
	production.updateProductionIn(pno, pnum);	//Á¦Ç° +
	
	response.sendRedirect("ProductionIn.jsp");
%>