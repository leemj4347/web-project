<%@page import="www.lmj.com.control.BoardControl"%>
<%@page import="www.lmj.com.vo.Board"%>
<%@page import="java.util.logging.Logger"%>
<%@ page language="java" contentType= "text/html; charset=UTF-8" pageEncoding= "UTF-8"%>
<%
	Logger logger = Logger.getLogger("detail.jsp");
	String param1 = request.getParameter("id");
	logger.info("param1 ="+ param1);
	
	int id = Integer.parseInt(param1);
	
	Board param = new Board();
	param.setId(id);
	
	BoardControl control = new BoardControl();
	Board board = control.selectOne(param);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/writeForm.css">
	</head>
	<body>
		<div class="wrap">
			<h1>글수정</h1>
			<form action="write.jsp" method="POST">
				<dl>
					<dt>제목</dt>
					<dd><input type="text" placeholder="제목 입력" name="title" value="<%=board.getTitle()%>"></dd>
				</dl>
				<dl>
					<dt>작성자</dt>
					<dd><input type="text" placeholder="작성자 입력" name="writer" value="<%=board.getWriter()%>"></dd>
				</dl>
				<dl>
					<dt>내용</dt>
					<dd><textarea placeholder="내용 입력" name="content" ><%=board.getContent()%></textarea></dd>
				</dl>
				<input type="submit" value="전송">
			</form>
		
		</div>

	</body>
</html>