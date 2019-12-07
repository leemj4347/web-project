<%@page import="www.lmj.com.control.FileControl"%>
<%@page import="www.lmj.com.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	Board board = new Board();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	out.print(board.toString());
	
	FileControl control = new FileControl();
	control.writeFile("board.txt", board.toString());
%>
