<%@page import="org.semierp.dao.estimateDao"%>
<%@page import="org.semierp.dao.productDao"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	int pno = Integer.parseInt(request.getParameter("pno"));
	int p1no = Integer.parseInt(request.getParameter("p1no"));
	int p1num = Integer.parseInt(request.getParameter("p1num"));
	int p2no = Integer.parseInt(request.getParameter("p2no"));
	int p2num = Integer.parseInt(request.getParameter("p2num"));
	int p3no = Integer.parseInt(request.getParameter("p3no"));
	int p3num = Integer.parseInt(request.getParameter("p3num"));
	String salelistdate = request.getParameter("salelistdate");
	int cno = Integer.parseInt(request.getParameter("cno"));
/*
	productDao product = new productDao();
	if (p1num != 0) {
		product.updateProductionOut(p1no, p1num);
	}
	if (p2num != 0) {
		product.updateProductionOut(p2no, p2num);
	}
	if (p3num != 0) {
		product.updateProductionOut(p3no, p3num);
	}
*/
	estimateDao eDao = new estimateDao();
	eDao.insert(pno, p1no, p1num, p2no, p2num, p3no, p3num, salelistdate, cno);

	response.sendRedirect("Estimate.jsp");
%>