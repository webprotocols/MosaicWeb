<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pagination.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
</head>
<body>
	<script id="template" type="text/x-handlebars-template">
		<li><a href="/sboard/list?page=1">&lt;&lt;</a></li>

			{{#each .}}
			<li><a href="/sboard/list?page={{num}}">{{num}}</a></li>
			{{/each}}
		
		<li><a href="/sboard/list?page=1">&gt;&gt;</a></li>
	</script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		
		var ctemplate = Handlebars.compile($('#template').html());
		
		console.log("xxx = " + ctemplate);
		
		var pages = [
			{num : 1},
			{num : 2},
			{num : 3},
			{num : 4},
			{num : 5},
			{num : 6},
			{num : 7},
			{num : 8},
			{num : 9},
			{num : 10}
		];
		
		var html = ctemplate(pages);
		console.log("html = " + html);
		
		$('.pagination').html(html);
		
	});
	</script>
	
<div class="text-center">
	<ul class="pagination">
	
	</ul>
</div>
</body>
</html>