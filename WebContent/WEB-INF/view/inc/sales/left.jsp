<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="/semierp/view/sales/sales.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>��������</h3></a></li>
						<li><a href="/semierp/view/sales/yearplan/yearplan.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���ǸŰ�ȹ</a></li>
						<li><a href="/semierp/view/sales/estimate/estimate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">����</a></li>
						<li><a href="/semierp/view/sales/productout/productout.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���</a></li>
						
						
					</ul>
				</div>