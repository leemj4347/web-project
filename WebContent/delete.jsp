<%@page import="www.lmj.com.control.BoardControl"%>
<%@page import="www.lmj.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 파라미터 받아와 문자열 ->숫자 변환하기
	String strId = request.getParameter("id");
	int id = Integer.parseInt(strId);
	
	// board 객체 만들어 id 값 지정하기
	Board board = new Board();
	board.setId(id);
	
	// deleBoard() 메소드에 board 객체 전달하기
	BoardControl control = new BoardControl();
	int result = control.deleteBoard(board);	
%>
<script type="text/javascript">
	alert("삭제 완료되었습니다.");
	window.location.replace("board.jsp");
</script>