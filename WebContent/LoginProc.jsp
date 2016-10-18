<%@page import="org.semierp.dao.employeeDao"%>
<%@page import="org.semierp.vo.employeeInfo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="org.semierp.vo.puInfo" %>
<%@ page import="org.semierp.dao.puDao" %>
<%@ page import="java.lang.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>
<% 
	if(request.getParameter("select").equals("회원가입")){
		response.sendRedirect("./view/Join/Join.jsp");
	}
	else{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int emno = -987;
		
		puDao pDao = new puDao();
		puInfo programuser = pDao.select(id, pw);
		employeeDao eDao = new employeeDao();
		employeeInfo employee = eDao.select(Integer.parseInt(programuser.getEmno()));
		
		if(programuser != null){
			response.sendRedirect("mainUI.jsp?emno=" + programuser.getEmno()+"&deno="+employee.getDeno());		
		}
		else{
			response.sendRedirect("Login.jsp");
		}
	}
%>