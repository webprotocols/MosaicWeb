<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>grid.jsp</title>

<style type="text/css">
	.bbox {
		border: 1px solid red;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-6 bbox"><img alt="One"   src="http://www.placehold.it/100x100?text=One"></div>		
			<div class="col-xs-2 bbox"><img alt="Two"   src="http://www.placehold.it/100x100?text=Two"></div>
			<div class="col-xs-2 bbox"><img alt="Three" src="http://www.placehold.it/100x100?text=Three"></div>
			<div class="col-xs-2 bbox"><img alt="Four"  src="http://www.placehold.it/100x100?text=Four"></div>
		</div>

		<div class="row">
			<div class="col-xs-6 col-sm-2 bbox"><img alt="One"   src="http://www.placehold.it/100x100?text=One"></div>		
			<div class="col-xs-6 col-sm-2 bbox"><img alt="Two"   src="http://www.placehold.it/100x100?text=Two"></div>
			<div class="col-xs-6 col-sm-2 bbox"><img alt="Three" src="http://www.placehold.it/100x100?text=Three"></div>
			<div class="col-xs-6 col-sm-6 bbox"><img alt="Four"  src="http://www.placehold.it/100x100?text=Four"></div>
		</div>
		
		<div class="row">
			<div class="col-xs-6 col-sm-3 col-md-6 col-lg-1 bbox"><img width="100%" alt="One"   src="http://www.placehold.it/100x100?text=One"></div>		
			<div class="col-xs-6 col-sm-3 col-md-2 col-lg-5 bbox"><img width="100%" alt="Two"   src="http://www.placehold.it/100x100?text=Two"></div>
			<div class="col-xs-6 col-sm-3 col-md-2 col-lg-5 bbox"><img width="100%" alt="Three" src="http://www.placehold.it/100x100?text=Three"></div>
			<div class="col-xs-6 col-sm-3 col-md-2 col-lg-1 bbox"><img width="100%" alt="Four"  src="http://www.placehold.it/100x100?text=Four"></div>
		</div>	
		
	
	</div>
</body>
</html>