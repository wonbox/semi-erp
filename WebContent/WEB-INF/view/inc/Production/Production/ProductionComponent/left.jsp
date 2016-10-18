<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="ProductionComponent.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>생산 소요량 계획</h3></a></li>
						<li><a href="ProductionComponentInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">부품 목록 추가</a></li>
						<li><a href="ProductionComponentUpdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">부품 정보 수정</a></li>
						<li><a href="ProductionComponentDelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">부품 목록 삭제</a></li>
					</ul>
				</div>