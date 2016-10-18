<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
						<ul class="nav">
						<li><a href="estimate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>견적</h3></a></li>
						<li><a href="estimateInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">견적 추가</a></li>	
						<li><a href="estimateupdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">견적 수정</a></li>	
						<li><a href="estimatedelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">견적 삭제</a></li>	
						</ul>
					</div>