
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>



<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<title>Dictionary Main Page</title>
</head>
<body>

	<div class="container">

		<h2 class="text-capitalize ">Search our English Dictionary</h2>
		<hr />

		<input type="text" name="searchTerm" id="searchTermText"
			class="form-control">
		<button id="searchButton" class="btn btn-info">Search</button>

		<hr />
		<span id="searchWord"></span>

		<div id="resultsDiv"></div>




	</div>
</body>
<script>
$(document)
.ready(
		function() {
			$(document).on(
					"click",
					"#searchButton",
					function() {
						
												
						$.ajax(
								"ajax",
								{
									"type" : "GET",
									"dataType" : "json",
									"data" : {
										"search" : $(
												"#searchTermText")
												.val()
									}
								}).done(successFunction).fail(
								ajaxFailure);
						$("#searchWord").html(
								"<h3><span class = 'label label-default'>Search For:</span>&nbsp;&nbsp;&nbsp;"   +$("#searchTermText").val()+"</h3>"
										);
					});

			function successFunction(jsonData) {
				var count = 0;
				var html = "";

				html += "<table class='table table-striped'><thead><tr><th>Word</th><th>wordtype</th><th>Definition</th></tr></thead><tbody>";

				$.each(jsonData, function(key, value) {
					html += "<tr> <td>" + value.word + "</td> <td>"
							+ value.wordtype + "</td> <td>"
							+ value.definition + "</td>  </tr>";
					count++;
				})

				var query = $("#searchTermText").val();
				html += "</tbody></table>";

				if (count == 0) {
					$('#resultsDiv').html(
							"<br>" + "No Results Found :(");
				} else {
					$('#resultsDiv').html(html);
				}

			}

			function ajaxFailure() {
				console.log("Failure of AJAX");
			}

		});
</script>

<style>
.form-control {
	display: inline;
	width: 20%;
}
</style>

</html>