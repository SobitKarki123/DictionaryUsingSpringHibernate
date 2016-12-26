<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dictionary Main Page</title>
</head>
<body>
	<div class="container">

		<h2>Search our English Dictionary</h2>
		<form method="post">
			<input type="text" name="searchTerm">
			<button type="submit">Search</button>
		</form>
		<hr />
		<div id="results" class="hide">

			<span>Search for: <span id="searchWord"></span></span>

			<table>
				<thead>
					<tr>
						<th>#</th>
						<th>Word</th>
						<th>Type</th>
						<th>Definition</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>
</body>
</html>