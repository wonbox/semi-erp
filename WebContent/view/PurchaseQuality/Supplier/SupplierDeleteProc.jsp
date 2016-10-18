<%@page import="org.semierp.dao.supplierDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.employeeDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<String> errors = new ArrayList<String>();
	List<Integer> sno = new ArrayList<Integer>();
	
	if (request.getParameterValues("sno") != null) {
		String[] snos = request.getParameterValues("sno");
		for(int i = 0; i<snos.length;i++){
			sno.add(Integer.parseInt(snos[i]));
		}
	}
	
	supplierDao supplier = new supplierDao();
	for(int i = 0; i<sno.size();i++){
		supplier.delete(sno.get(i));
	}
	
	if( errors != null){
		response.sendRedirect("Supplier.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>