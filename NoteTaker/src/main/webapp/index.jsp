<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%@include file="all_js_css.jsp"%>

<title>Note Taker</title>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br>

		<div class="card py-5">
			<img alt="" src="img/note.png" class="img-fluid mx-auto"
				style="max-width: 400px;">
			<h1 class="text-primary text-uppercase text-center mt-3">Start
				taking your notes</h1>
			<div class="container text-center">
				<a href="add_note.jsp"
					class="btn btn-outline-primary">Start Here</a>
			</div>
		</div>
	</div>
</body>
</html>