<%@page import="org.semierp.dao.productcompinDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String pname = request.getParameter("pname");
	int insize = Integer.parseInt(request.getParameter("insize"));
	String indate = request.getParameter("indate");
	int sno = Integer.parseInt(request.getParameter("sno"));
	
	productcompinDao pDao = new productcompinDao();
	pDao.update(pno, pname, insize, indate, sno);
	
	response.sendRedirect("ComponentInUpdate.jsp");	
%>