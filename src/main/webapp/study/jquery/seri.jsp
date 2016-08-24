<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        var x = $("form").serializeArray();
        //$.each(x, function(i, field){
        //    $("#results").append(field.name + ":" + field.value + " ");
        //});
        console.dir(x);
        var xxx = JSON.stringify(x);
        console.log(xxx);
        
        var form={};
        $.each(x, function(i, obj) {
			form[obj.name] = obj.value;
		});
        console.dir(form);
        var xxx = JSON.stringify(form);
        console.log(xxx);
        
        $('#results').html(xxx);
        alert('skjdf');
    });
});
</script>
</head>
<body>
<form action="">
  First name: <input type="text" name="FirstName" value="Mickey"><br>
  Last name: <input type="text" name="LastName" value="Mouse"><br>
</form>

<button>Serialize form values</button>

<div id="results"></div>
</body>
</html>

