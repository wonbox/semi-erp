<%@page import="org.semierp.dao.supplierDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

int sno = Integer.parseInt(request.getParameter("sno"));
String sname= request.getParameter("sname");
String stel= request.getParameter("stel");
String saddress = request.getParameter("saddress");
String ceoname= request.getParameter("ceoname");
String ceotel= request.getParameter("ceotel");

supplierDao supplier = new supplierDao();
supplier.insert(sno, sname, stel, saddress, ceoname, ceotel);

response.sendRedirect("Supplier.jsp");

%>