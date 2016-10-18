<%@page import="org.semierp.dao.productDao"%>
<%@page import="org.semierp.dao.productcompinDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname= request.getParameter("pname");
	int insize = Integer.parseInt(request.getParameter("insize"));
	String indate = request.getParameter("indate");
	int sno = Integer.parseInt(request.getParameter("sno"));
	
	productcompinDao productcompin = new productcompinDao();
	productcompin.insert(pno, pname, insize, indate, sno);	//肺弊
	
	productDao product = new productDao();
	product.updateComponentIn(pno, insize);	//流立 函版 何前 +
	
	response.sendRedirect("ComponentInInsert.jsp");
%>