<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

int pno = Integer.parseInt(request.getParameter("pno"));
String pname= request.getParameter("pname");
int pnum = Integer.parseInt(request.getParameter("pnum"));
String pdiv = request.getParameter("pdiv");
int price = Integer.parseInt(request.getParameter("price"));

productDao product = new productDao();
product.insert(pno, pname, pnum, pdiv, price);

response.sendRedirect("Stock.jsp");

%>