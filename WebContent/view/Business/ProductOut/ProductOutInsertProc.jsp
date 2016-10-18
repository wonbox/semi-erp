<%@page import="org.semierp.dao.productDao"%>
<%@page import="org.semierp.dao.productoutlogDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int outsize = Integer.parseInt(request.getParameter("outsize"));
	String outdate = request.getParameter("outdate");
	int cno = Integer.parseInt(request.getParameter("cno"));

	productDao product = new productDao();
	product.updateProductionOut(pno, outsize);
	
	productoutlogDao pDao = new productoutlogDao();
	pDao.insert(pno, pname, outsize, outdate, cno);
	
	response.sendRedirect("ProductOut.jsp");	
%>