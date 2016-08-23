<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>grid.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<style type="text/css">
	.box {
		border: 1px solid red;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-6 box"><img alt="One"   src="http://www.placehold.it/100x100?text=One"></div>		
			<div class="col-xs-2 box"><img alt="Two"   src="http://www.placehold.it/100x100?text=Two"></div>
			<div class="col-xs-2 box"><img alt="Three" src="http://www.placehold.it/100x100?text=Three"></div>
			<div class="col-xs-2 box"><img alt="Four"  src="http://www.placehold.it/100x100?text=Four"></div>
		</div>

		<div class="row">
			<div class="col-xs-6 col-sm-2 box"><img alt="One"   src="http://www.placehold.it/100x100?text=One"></div>		
			<div class="col-xs-6 col-sm-2 box"><img alt="Two"   src="http://www.placehold.it/100x100?text=Two"></div>
			<div class="col-xs-6 col-sm-2 box"><img alt="Three" src="http://www.placehold.it/100x100?text=Three"></div>
			<div class="col-xs-6 col-sm-6 box"><img alt="Four"  src="http://www.placehold.it/100x100?text=Four"></div>
		</div>
		
		<div class="row">
			<div class="col-xs-6 col-sm-3 col-md-6 box"><img alt="One"   src="http://www.placehold.it/100x100?text=One"></div>		
			<div class="col-xs-6 col-sm-3 col-md-2 box"><img alt="Two"   src="http://www.placehold.it/100x100?text=Two"></div>
			<div class="col-xs-6 col-sm-3 col-md-2 box"><img alt="Three" src="http://www.placehold.it/100x100?text=Three"></div>
			<div class="col-xs-6 col-sm-3 col-md-2 box"><img alt="Four"  src="http://www.placehold.it/100x100?text=Four"></div>
		</div>	
		
	</div>
	<script async src="http://jsfiddle.net/protocols/umeowsLv/1/embed/"></script>
</body>
</html>