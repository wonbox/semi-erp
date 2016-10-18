<%@page import="org.semierp.dao.managerDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int cmno = Integer.parseInt(request.getParameter("cmno"));
	int cno = Integer.parseInt(request.getParameter("cno"));
	String cmname = request.getParameter("cmname");
	String cmtel = request.getParameter("cmtel");
	String cmaddress = request.getParameter("cmaddress");
	String cmposition = request.getParameter("cmposition");

	managerDao mDao = new managerDao();
	mDao.insertCustomerManager(cmno, cno, cmname, cmaddress, cmtel, cmposition);
	
	response.sendRedirect("CustomerManager.jsp");
%>