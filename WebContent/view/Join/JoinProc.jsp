<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	if(request.getParameter("select").equals("직원")){
		response.sendRedirect("EmployeeJoin.jsp");
	}
	else if(request.getParameter("select").equals("고객")){
		response.sendRedirect("CustomerJoin.jsp");
	}
%>