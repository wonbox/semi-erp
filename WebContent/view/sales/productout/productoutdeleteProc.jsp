<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.salesDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<String> errors = new ArrayList<String>();
	List<String> pout = new ArrayList<String>();
	
	if (request.getParameterValues("pout") != null) {
		String[] pouts = request.getParameterValues("pout");
		for(int i = 0; i<pouts.length;i++){
			pout.add(pouts[i]);
			
		}
	}
	
	salesDao sales = new salesDao();
	for(int i = 0; i<pout.size();i++){
		sales.delete2(Integer.parseInt(pout.get(i)));
	}
	
	if( errors != null){
		response.sendRedirect("productout.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>