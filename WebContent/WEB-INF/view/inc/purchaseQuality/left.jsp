<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<ul class="nav">
	<li><a href="/semierp/view/PurchaseQuality/PurchaseQuality.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>"><h3>���� ǰ�� ����</h3></a></li>
	<li><a href="/semierp/view/PurchaseQuality/Supplier/Supplier.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">�ŷ�ó ����</a></li>
	<li><a href="/semierp/view/PurchaseQuality/PurchaseIn/PurchaseIn.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">��ǰ �԰�</a></li>
	<li><a href="/semierp/view/PurchaseQuality/OrderPurchase/OrderPurchase.jsp?deno=<%=request.getParameter("deno")%>&emno=<%=request.getParameter("emno")%>">����</a></li>
</ul>