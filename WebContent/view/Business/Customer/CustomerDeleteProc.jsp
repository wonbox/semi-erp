<%@page import="org.semierp.dao.customerDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.employeeDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<String> errors = new ArrayList<String>();
	List<Integer> cno = new ArrayList<Integer>();
	
	if (request.getParameterValues("cno") != null) {
		String[] cnos = request.getParameterValues("cno");
		for(int i = 0; i<cnos.length;i++){
			cno.add(Integer.parseInt(cnos[i]));
		}
	}
	
	customerDao customer = new customerDao();
	for(int i = 0; i<cno.size();i++){
		customer.delete(cno.get(i));
	}
	
	if( errors != null){
		response.sendRedirect("Customer.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>