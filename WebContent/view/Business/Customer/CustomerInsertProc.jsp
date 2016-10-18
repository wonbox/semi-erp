<%@page import="org.semierp.dao.customerDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int cno = Integer.parseInt(request.getParameter("cno"));
	String cname = request.getParameter("cname");
	String ctel = request.getParameter("ctel");
	String caddress = request.getParameter("caddress");
	String ceoname = request.getParameter("ceoname");
	String ceotel = request.getParameter("ceotel");

	
	customerDao cDao = new customerDao();
	cDao.insert(cno, cname, ctel, caddress, ceoname, ceotel);
	
	response.sendRedirect("Customer.jsp");	
%>