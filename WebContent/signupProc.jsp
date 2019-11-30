<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String login = request.getParameter("login");
String password = request.getParameter("pwd");
String username = request.getParameter("username");
String phone = request.getParameter("phone");
String email = request.getParameter("email");
String etc = request.getParameter("etc");
%>
<html>
	<body>
		<% out.print(login); %>
		<br>
		<%=password %>
		<br>
		<%=username %>
		<br>
		<%=phone %>
		<br>
		<%=email %>
		<br>
		<%=etc %>
	</body>
</html>