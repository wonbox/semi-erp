<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.salesDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<String> errors = new ArrayList<String>();
	List<String> eid = new ArrayList<String>();
	
	if (request.getParameterValues("eid") != null) {
		String[] eids = request.getParameterValues("eid");
		for(int i = 0; i<eids.length;i++){
			eid.add(eids[i]);
			
		}
	}
	
	salesDao sales = new salesDao();
	for(int i = 0; i<eid.size();i++){
		sales.delete1(Integer.parseInt(eid.get(i)));
	}
	
	if( errors != null){
		response.sendRedirect("estimate.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>