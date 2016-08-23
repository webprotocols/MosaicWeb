<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#demo {
	position: absolute;
	top: 250px;
	font-size: 40px;
}

#myScrollspy {
	position: relative;
	top: 50px;
	height: 200px;
	overflow: auto;
	font-size: 28px;
}

#section1 {
	color: #fff;
	background-color: #1E88E5;
}

#section2 {
	color: #fff;
	background-color: #673ab7;
}

#section3 {
	color: #fff;
	background-color: #ff9800;
}

#section4 {
	color: #fff;
	background-color: #555555;
}
</style>
</head>
<body>
	<p id="demo">You are currently viewing: Section 1</p>

	<nav class="navbar" style="display: none;">
		<ul class="nav navbar-nav">
			<li><a href="#section1">Section 1</a></li>
			<li><a href="#section2">Section 2</a></li>
			<li><a href="#section3">Section 3</a></li>
			<li><a href="#section4">Section 4</a></li>
		</ul>
	</nav>
	
	
	<div id="myScrollspy">

		<div id="section1">
			<div class="container-fluid">
				<h1>
					Section 1 <a href="#" onclick="removeSection(this);">&times;
						Remove THIS section</a>
				</h1>
				<p>Try to scroll this section and look at the navigation bar
					while scrolling! Try to scroll this section and look at the
					navigation bar while scrolling!</p>
				<p>Blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla.</p>
			</div>
		</div>
		<div id="section2">
			<div class="container-fluid">
				<h1>
					Section 2 <a href="#" onclick="removeSection(this);">&times;
						Remove THIS section</a>
				</h1>
				<p>Try to scroll this section and look at the navigation bar
					while scrolling! Try to scroll this section and look at the
					navigation bar while scrolling!</p>
				<p>Blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla.</p>
			</div>
		</div>
		<div id="section3">
			<div class="container-fluid">
				<h1>
					Section 3 <a href="#" onclick="removeSection(this);">&times;
						Remove THIS section</a>
				</h1>
				<p>Try to scroll this section and look at the navigation bar
					while scrolling! Try to scroll this section and look at the
					navigation bar while scrolling!</p>
				<p>Blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla.</p>
			</div>
		</div>
		<div id="section4">
			<div class="container-fluid">
				<h1>
					Section 4 <a href="#" onclick="removeSection(this);">&times;
						Remove THIS section</a>
				</h1>
				<p>Try to scroll this section and look at the navigation bar
					while scrolling! Try to scroll this section and look at the
					navigation bar while scrolling!</p>
				<p>Blablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablablabla.</p>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			removeSection = function(e) {
				$(e).parents("#myScrollspy > div").remove();
				$('#myScrollspy').each(function() {
					$(this).scrollspy('refresh');
				});
			};
			$("#myScrollspy").scrollspy({
				target : ".navbar"
			});
			$(".navbar").on("activate.bs.scrollspy", function() {
				var x = $(".nav li.active > a").text();
				$("#demo").empty().html("You are currently viewing: " + x);
			})
		});
	</script>

</body>
</html>
