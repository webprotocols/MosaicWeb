<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getJSON.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

</head>
<body>
<h1>JSON (Javascript Object Notation)</h1>
<h1>이기종 간에 데이타 통신방법</h1>
<ol>
	<li>콤마 seperator(ex==> 10,총무부,서울)</li>
	<li>XML</li>
	<li>JSON</li>
</ol>
<hr>
<h1>AJAX (Asyncronous Javascript And XML) 비동기 자바스크립트 데이타 통신 기술</h1>

<button class="btn btn-primary">getJSON dept</button>
<button class="btn btn-primary">getJSON depts</button>

<button class="btn btn-primary">getJSON dept + handlebars</button>
<button class="btn btn-primary">getJSON depts + handlebars</button>

<button id="clear" class="btn btn-info">clear</button>

<ul id="result" class="list-group"></ul>

<script type="text/javascript">

	$('button').eq(0).on('click', function() {
		$.getJSON("/study/json/dept.json", function(data) {
			console.log(data);
			console.log("deptno = " + data.deptno);
			console.log("dname = " + data.dname);
			console.log("dloc = " + data.loc);
			
			var li = '<li class="list-group-item">' + data.deptno + "," + data.dname + "," + data.loc + "</li>";
			
			$('#result').html(li);
			
		});
	});
	
	$('button').eq(1).on('click', function() {
		$.getJSON("/study/json/depts.json", function(data) {
			console.dir(data);
			for (var i=0; i<data.length; i++) {
				console.log("deptno = " + data[i].deptno);
				console.log("dname = " + data[i].dname);
				console.log("dloc = " + data[i].loc);
			}
			
			var lis="";
			for (var i=0; i<data.length; i++) {
				lis += '<li class="list-group-item list-group-item-success">' + data[i].deptno + "," + data[i].dname + "," + data[i].loc + "</li>";
			}
			
			$('#result').html(lis);
			
		});
	});
	
	
	$('#clear').on('click', function() {
		$('#result').html("");
	});

</script>

<script id="temp1" type="text/xxx-mytempate">

	<li class="list-group-item list-group-item-info">{{deptno}}, {{dname}}, {{loc}}</li>

</script>

<script id="temp2" type="text/xxx-mytempate">

	{{#each .}}
	<li class="list-group-item list-group-item-warning">{{deptno}}, {{dname}}, {{loc}}</li>
	{{/each}}

</script>

<script type="text/javascript">

	$('button').eq(2).on('click', function() {
		
		$.getJSON("/study/json/dept.json", function(dept) {
			console.dir(dept);
			
			var temp1 = $('#temp1').html();
			var template = Handlebars.compile(temp1);
			
			var html = template(dept);
			console.log(html);
			
			$('#result').html(html);
			
		});
		
	});
	
	$('button').eq(3).on('click', function() {
		$.getJSON("/study/json/depts.json", function(depts) {
			console.dir(depts);
			
			var temp2 = $('#temp2').html();
			var template = Handlebars.compile(temp2);
			
			var html = template(depts);
			console.log(html);
			
			$('#result').html(html);
		});
	});


</script>

















</body>
</html>