<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.employeeDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	List<String> errors = new ArrayList<String>();
	
	int emno = Integer.parseInt(request.getParameter("emno"));
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	employeeDao employee = new employeeDao();
	employee.join(emno, id, pw);
	
	if( errors != null){
		response.sendRedirect("/semierp/Login.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>