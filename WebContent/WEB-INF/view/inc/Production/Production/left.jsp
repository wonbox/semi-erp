<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="Production.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>자재 소요량 계획</h3></a></li>
						<li><a href="./ProductionComponent/ProductionComponent.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산 소요량 계획</a></li>
						<li><a href="ProductionInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산 목록 추가</a></li>
						<li><a href="ProductionUpdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산 정보 수정</a></li>
						<li><a href="ProductionDelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">생산 목록 삭제</a></li>
					</ul>
				</div>