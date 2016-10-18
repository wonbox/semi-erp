<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.salesDao" %>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<String> errors = new ArrayList<String>();
	List<String> yid = new ArrayList<String>();
	
	if (request.getParameterValues("y.yid") != null) {
		String[] yids = request.getParameterValues("y.yid");
		for(int i = 0; i<yids.length;i++){
			yid.add(yids[i]);
			
		}
	}
	
	salesDao sales = new salesDao();
	for(int i = 0; i<yid.size();i++){
		sales.delete(Integer.parseInt(yid.get(i)));
	}
	
	if( errors != null){
		response.sendRedirect("yearplan.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>