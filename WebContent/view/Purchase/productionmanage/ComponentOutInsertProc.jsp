<%@page import="org.semierp.dao.productDao"%>
<%@page import="org.semierp.dao.productcompoutDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname= request.getParameter("pname");
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	String sth = request.getParameter("pdiv");
	int price = Integer.parseInt(request.getParameter("price"));
	
	productcompoutDao productcompout = new productcompoutDao();
	productcompout.insert(pno, pname, pnum, sth , price);	//·Î±×
		
	response.sendRedirect("ComponentOut.jsp");
%>