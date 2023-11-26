<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="all_js_css.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br>

		<h1>Please fill your note details</h1>

		<!-- this is add note form -->
		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title" class="form-label">Note Title</label>
				<input type="text" class="form-control"
					id="title" aria-describedby="emailHelp"
					placeholder="Enter here" name="title" required>
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter your content here"
				class="form-control"
				style="height: 200px" name="content" required></textarea>
			</div>
			<div class="container text-center mt-4">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>
</body>
</html>