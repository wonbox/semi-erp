<%@page import="org.semierp.dao.managerDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
	List<String> errors = new ArrayList<String>();
	List<Integer> cmno = new ArrayList<Integer>();
	
	if (request.getParameterValues("cmno") != null) {
		String[] cmnos = request.getParameterValues("cmno");
		for(int i = 0; i<cmnos.length;i++){
			cmno.add(Integer.parseInt(cmnos[i]));
		}
	}
	
	managerDao customermanager = new managerDao();
	for(int i = 0; i<cmno.size();i++){
		customermanager.deleteCustomerManager(cmno.get(i));
	}
	
	if( errors != null){
		response.sendRedirect("CustomerManager.jsp");		
	}
	else{
		response.sendRedirect("../Error.jsp");
	}

%>