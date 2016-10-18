<%@page import="org.semierp.dao.productcompinDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.employeeDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<String> errors = new ArrayList<String>();
	List<Integer> pno = new ArrayList<Integer>();
	
	if (request.getParameterValues("pno") != null) {
		String[] pnos = request.getParameterValues("pno");
		for(int i = 0; i<pnos.length;i++){
			pno.add(Integer.parseInt(pnos[i]));
		}
	}
	
	productcompinDao productcompin = new productcompinDao();
	for(int i = 0; i<pno.size();i++){
		productcompin.delete(pno.get(i));
	}
	
	if( errors != null){
		response.sendRedirect("ComponentIn.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>