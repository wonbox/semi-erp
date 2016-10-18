<%@page import="org.semierp.dao.productuoDao0"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

int pno = Integer.parseInt(request.getParameter("pno"));
int pnum = Integer.parseInt(request.getParameter("pnum"));

productuoDao0 product = new productuoDao0();
product.update(pno, pnum);

response.sendRedirect("Stock.jsp");

%>