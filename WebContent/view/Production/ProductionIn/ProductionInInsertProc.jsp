<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	String subpno = request.getParameter("pno");
	int pnum = Integer.parseInt(request.getParameter("pnum"));
	
	productDao production = new productDao();
	
	//�ش� ��ǰ ����
	boolean checking = production.update(subpno, pnum);	//�ش� ��ǰ�� ��������� pnum ��ŭ
	if(checking == true){
		production.updateProductionIn(pno, pnum);	//��ǰ +
	}
	
	
	response.sendRedirect("ProductionIn.jsp");
%>