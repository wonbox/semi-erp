<%@page import="org.semierp.dao.productDao"%>
<%@page import="org.semierp.dao.productcompoutDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname= request.getParameter("pname");
	int outsize = Integer.parseInt(request.getParameter("outsize"));
	String outdate = request.getParameter("outdate");
	
	productcompoutDao productcompout = new productcompoutDao();
	productcompout.insert(pno, pname, outsize, outdate);	//肺弊
	
	productDao product = new productDao();
	product.updateComponentOut(pno, outsize);	//流立 函版 何前 -
	
	response.sendRedirect("ComponentOutInsert.jsp");
%>