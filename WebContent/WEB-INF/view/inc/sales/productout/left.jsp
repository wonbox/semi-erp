<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
               <ul class="nav">
                  <li><a href="productout.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���</h3></a></li>
						<li><a href="productoutInsert.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��� ��� ����</a></li>	
						<li><a href="productoutupdate.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��� ��� ����</a></li>	
						<li><a href="productoutdelete.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��� ��� ����</a></li>	
               </ul>
            </div>