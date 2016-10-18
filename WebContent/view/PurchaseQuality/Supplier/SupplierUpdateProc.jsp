<%@page import="org.semierp.dao.supplierDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int sno = Integer.parseInt(request.getParameter("sno"));
	String sname = request.getParameter("sname");
	String stel = request.getParameter("stel");
	String saddress = request.getParameter("saddress");
	String ceoname = request.getParameter("ceoname");
	String ceotel = request.getParameter("ceotel");

	supplierDao supplier = new supplierDao();
	supplier.update(sno, sname, stel, saddress, ceoname, ceotel);

	response.sendRedirect("SupplierUpdate.jsp");
%>