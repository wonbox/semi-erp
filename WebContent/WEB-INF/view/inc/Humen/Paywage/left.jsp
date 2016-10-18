<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						   <li><a href="/semierp/view/Humen/Paywage/Paywage.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>월급 관리</h3></a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageInsert.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">월급 지급</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageCreateWage.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">당월 월급 제작</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageEmployeeList.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">직원 월급 표</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageEmployeePosition.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">직급 월급 표</a></li>
						<li><a href="/semierp/view/Humen/Paywage/PaywageDepartment.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">부서 월급 표</a></li>
					</ul>
				</div>