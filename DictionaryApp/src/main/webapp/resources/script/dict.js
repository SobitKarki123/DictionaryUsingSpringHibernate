$(document)
			.ready(
					function() {
						$(document).on(
								"click",
								"#searchButton",
								function() {
									
									alert("invoked");
									
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
											"<h3><span class = 'label label-default'>Search For:</span>"   +$("#searchTermText").val()+"</h3>"
													);
								});

						function successFunction(jsonData) {
							alert("invoked");
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