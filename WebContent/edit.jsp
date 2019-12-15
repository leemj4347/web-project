<%@page import="www.lmj.com.control.BoardControl"%>
<%@page import="www.lmj.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	int id = Integer.parseInt(request.getParameter("id"));
	
	Board udboard = new Board();
	udboard.setTitle(title);
	udboard.setWriter(writer);
	udboard.setContent(content);
	udboard.setId(id);
	
	out.print(udboard.toString());
	
	BoardControl udcontrol = new BoardControl();
	int result = udcontrol.updateBoard(udboard);
	
	out.print("result ="+result);
%>
<script type="text/javascript">
	alert("수정이 완료되었습니다.");
	window.location.replace("board.jsp");
</script>