<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						   <li><a href="/semierp/view/Humen/Paywage/Paywage.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� ����</h3></a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageInsert.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageCreateWage.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��� ���� ����</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageEmployeeList.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ���� ǥ</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageEmployeePosition.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ���� ǥ</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageDepartment.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�μ� ���� ǥ</a></li>
					</ul>
				</div>