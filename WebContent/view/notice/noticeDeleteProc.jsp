<%@page import="org.semierp.dao.NoticeDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="org.semierp.dao.employeeDao"%>
<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");

	List<String> errors = new ArrayList<String>();
	List<String> seq = new ArrayList<String>();

	if (request.getParameterValues("seq") != null) {
		String[] seqs = request.getParameterValues("seq");
		for (int i = 0; i < seqs.length; i++) {
			seq.add(seqs[i]);
		}
	}

	NoticeDao notice = new NoticeDao();
	for (int i = 0; i < seq.size(); i++) {
		notice.delete(seq.get(i));
	}

	if (errors != null) {
		response.sendRedirect("notice.jsp");
	} else {
		response.sendRedirect("../Error.jsp");
	}
%>