<%@page import="java.util.List"%>
<%@page import="org.semierp.dao.customerDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.employeeDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	List<String> errors = new ArrayList<String>();
	
	int cno = Integer.parseInt(request.getParameter("cno"));
	String cname = request.getParameter("cname");
	String ctel = request.getParameter("ctel");
	String caddress = request.getParameter("caddress");
	String ceoname = request.getParameter("ceoname");
	String ceotel = request.getParameter("ceotel");
	
	customerDao customer = new customerDao();
	customer.insert(cno, cname, ctel, caddress, ceoname, ceotel);
	
	if( errors != null){
		response.sendRedirect("../Login.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}
%>