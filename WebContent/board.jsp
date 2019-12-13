<%@page import="www.lmj.com.control.BoardControl"%>
<%@page import="java.util.ArrayList"%>
<%@page import="www.lmj.com.vo.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType= "text/html; charset=UTF-8" pageEncoding= "UTF-8"%>
<%
	List<Board> list = new BoardControl().selectBoardList(new Board());
	
	
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
						<th>글쓴이</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<% for(int i=0; i<list.size(); i++){ %>
						<%Board item = list.get(i); %>
						<tr>
							<td><%=item.getId() %></td>
							<td class>
								<a href = "./detail.jsp?id=<%=item.getId()%>">
									<%=item.getTitle() %>
								</a>
							</td>
							<td><%=item.getWriter() %></td>
							<td><%=item.getWdate() %></td>
							<td><%=item.getViewCnt() %></td>
						</tr>
					<%} %>	
				</tbody>
			</table>
			<a href="./writeForm.html">글쓰기</a>
		</div>

	</body>
</html>