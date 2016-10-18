<%@page import="org.semierp.dao.orderDao"%>
<%@page import="org.semierp.dao.productcompinDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.employeeDao"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	List<String> errors = new ArrayList<String>();
	List<Integer> ono = new ArrayList<Integer>();

	if (request.getParameterValues("ono") != null) {
		String[] onos = request.getParameterValues("ono");
		for (int i = 0; i < onos.length; i++) {
			ono.add(Integer.parseInt(onos[i]));
		}
	}

	orderDao order = new orderDao();
	for (int i = 0; i < ono.size(); i++) {
		order.delete(ono.get(i));
	}

	if (errors != null) {
		response.sendRedirect("ComponentIn.jsp");
	} else {
		response.sendRedirect("../Error.jsp");
	}
%>