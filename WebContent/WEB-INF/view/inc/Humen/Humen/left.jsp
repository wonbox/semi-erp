<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<div class="well sidebar-nav">
					<ul class="nav">
						<li><a href="Humen.htm"><h3>�λ� ����</h3></a></li>
						<li><a href="/semierp/view/Humen/Department/Department.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�μ� ����</a></li>
						<li><a href="/semierp/view/Humen/Paywage/Paywage.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenInsert.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� �Ի�</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenPowerUp.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">������ ��ȯ</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenDeadPeople.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenUpdate.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">���� ����</a></li>
						<li><a href="/semierp/view/Humen/Humen/HumenDelete.htm?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">����</a></li>
					</ul>
				</div>