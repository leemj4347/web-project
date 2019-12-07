<%@page import="java.util.ArrayList"%>
<%@page import="www.lmj.com.vo.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType= "text/html; charset=UTF-8" pageEncoding= "UTF-8"%>
<%
	List<Board> list = new ArrayList<Board>();

	Board board1 = new Board();
	board1.setId(5);
	board1.setTitle("크롬 개발자도구 활용하는 방법");
	board1.setWriter("관리자");
	board1.setMdate("2019-11-20");
	board1.setViewCnt(111);
	
	list.add(board1);
	
	Board board2 = new Board();
	board2.setId(4);
	board2.setTitle("html과css로 웹사이트를 만들어보아요.");
	board2.setWriter("관리자");
	board2.setMdate("2019-11-12");
	board2.setViewCnt(222);
	
	list.add(board2);
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/board.css">
	</head>
	<body>
		<div class="board_list_wrap">
			<table class="board_list">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>슬쓴이</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<% for(int i=0; i<list.size(); i++){ %>
						<%Board item = list.get(i); %>
						<tr>
							<td><%=item.getId() %></td>
							<td><%=item.getTitle() %></td>
							<td><%=item.getWriter() %></td>
							<td><%=item.getMdate() %></td>
							<td><%=item.getViewCnt() %></td>
						</tr>
					<%} %>	
				</tbody>
			</table>
		</div>

	</body>
</html>