<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname= request.getParameter("pname");
	int pnum = 0;
	String pdiv = "H";
	int price = Integer.parseInt(request.getParameter("price"));
	
	productDao production = new productDao();
	production.insert(pno, pname, pnum, pdiv, price);
	
	response.sendRedirect("Production.jsp");
%>