<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "vo.BoardBean" %>

<%
	BoardBean article = (BoardBean) request.getAttribute("article");
	String nowPage = (String) request.getAttribute("page");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id = "articleForm">
		<h2>글 내용 상세보기</h2>
		<section id = "basicInfoArea"> 
			제목 : <%= article.getBOARD_SUBJECT() %>
			첨부파일 : <%if(!(article.getBOARD_IMAGE() == null)){ %>
				<a href = "file_down?downFile=<%=article.getBOARD_IMAGE() %>"><%=article.getBOARD_IMAGE() %></a>
				<%} %>				
		</section>
		<section id = "articleContentArea">
			<%=article.getBOARD_CONTENT() %>
		</section>
	</section>
	<section id = "commandLsit">
		<a href = "boardModifyForm.bo?board_num=<%=article.getBOARD_NUM()%>">[수정]</a>
		<a href = "boardDeleteForm.bo?board_num=<%=article.getBOARD_NUM()%>&page=<%=nowPage%>">[삭제]</a>
		<a href = "boardList.bo?page=<%=nowPage %>">[목록]</a>
		&nbsp;&nbsp;
	</section>
</body>
</html>