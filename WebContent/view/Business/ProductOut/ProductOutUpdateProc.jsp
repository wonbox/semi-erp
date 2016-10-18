<%@page import="org.semierp.dao.productoutlogDao"%>
<%@page import="org.semierp.dao.customerDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int outsize = Integer.parseInt(request.getParameter("outsize"));
	String outdate = request.getParameter("outdate");
	int cno = Integer.parseInt(request.getParameter("cno"));
	
	
	productoutlogDao pDao = new productoutlogDao();
	pDao.update(pno, pname, outsize, outdate, cno);
	
	response.sendRedirect("ProductOut.jsp");	
%>