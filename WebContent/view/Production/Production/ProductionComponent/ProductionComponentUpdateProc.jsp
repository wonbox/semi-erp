<%@page import="org.semierp.dao.productcomponentDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	int p1no = Integer.parseInt(request.getParameter("p1no"));
	int p1num = Integer.parseInt(request.getParameter("p1num"));
	int p2no = Integer.parseInt(request.getParameter("p2no"));
	int p2num = Integer.parseInt(request.getParameter("p2num"));
	int p3no = Integer.parseInt(request.getParameter("p3no"));
	int p3num = Integer.parseInt(request.getParameter("p3num"));
	int p4no = Integer.parseInt(request.getParameter("p4no"));
	int p4num = Integer.parseInt(request.getParameter("p4num"));
	
	productcomponentDao productcomponent = new productcomponentDao();
	productcomponent.update(pno, p1no, p1num, p2no, p2num, p3no, p3num, p4no, p4num);
	
	response.sendRedirect("ProductionComponent.jsp");
%>