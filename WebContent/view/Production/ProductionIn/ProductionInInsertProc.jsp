<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String subpno = request.getParameter("pno");
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	
	productDao production = new productDao();
	
	//해당 부품 제거
	boolean checking = production.update(subpno, pnum);	//해당 부품이 사라질거임 pnum 만큼
	if(checking == true){
		production.updateProductionIn(pno, pnum);	//제품 +
	}
	
	
	response.sendRedirect("ProductionIn.jsp");
%>