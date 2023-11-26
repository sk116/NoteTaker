<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br>
		<h1>Update your note</h1>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		
		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, noteId);
		
		%>
		
		<form action="UpdateNoteServlet" method="post">
			<input value="<%= note.getId() %>" name="noteId" type="hidden">
			
			<div class="form-group">
				<label for="title" class="form-label">Note Title</label>
				<input type="text" class="form-control"
					id="title" aria-describedby="emailHelp"
					placeholder="Enter here" name="title"
					value="<%= note.getTitle() %>">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter your content here"
				class="form-control"
				style="height: 200px;" name="content"><%= note.getContent() %></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success m-4">Save</button>
			</div>
		</form>
	</div>
</body>
</html>