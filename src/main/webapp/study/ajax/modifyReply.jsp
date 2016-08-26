<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyReply.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</head>
<body>

<div class="panel panel-primary">
	<div class="panel-heading">
		<h1>댓글 추가</h1>
	</div>
	<div class="panel-body">
		<div class="form-group">
			<label for="replytext">replytext :</label>
			<input class="form-control" type="text" id="replytext"><br>
		</div>
		
		<div class="form-group">
			<label for="replyer">replyer :</label>
			<input class="form-control" type="text" id="replyer" value="USER01"/>
		</div>
		
		<button id="addReply" class="btn btn-primary">add Reply</button>
	</div>
</div>

<div id="reply" class="panel panel-info">
	<div class="panel-heading">
		<button id="replylist" class="btn btn-primary">댓글 조회</button>
	</div>
	<div class="panel-body">
	
	</div>
	
	<div class="panel-footer text-center">
		<ul class="pagination">
		
		</ul>
	
	</div>

</div>

<div id="myModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<span class="close" data-dismiss="modal">&times;</span>
				<h2 class="modal-title">댓글 수정 & 삭제</h2>
			</div>
			<div class="modal-body">
				<input id="replyprompt" class="form-control"/>
			</div>
			<div class="modal-footer">
				<div class="btn-group">
					<button id="modify" class="btn btn-primary">수정</button>
					<button id="delete" class="btn btn-warning">삭제</button>
					<button class="btn btn-info" data-dismiss="modal">취소</button>
				</div>
			</div>		
		</div>
	</div>
</div>


<script id="mytemplate" type="text/x-handlebars-template">
	<ul class="list-group">
		{{#each .}}
		<li class="list-group-item">
			 [{{rno}}] {{replyer}} <i class="fa fa-backward fa-spin"></i> {{replytext}}
			 <button class="btn btn-info modify" data-rno="{{rno}}" 
										  		 data-bno="{{bno}}" 
										  		 data-replytext="{{replytext}}"
												 data-toggle="modal"
												 data-target="#myModal"	
												 >
					Modify 
			 </button> 
		</li>
		{{/each}}
	<ul>
</script>

<script type="text/javascript">
	var page = 1;
	
	
	function printBody(list) {
		console.log("printBody(...)...")
		console.dir(list);
		
		//var str = JSON.stringify(list);
		var template = Handlebars.compile($('#mytemplate').html());
		var str = template(list);
		
		$('#reply .panel-body').html(str);
		
		$('.modify').on('click', function () {
			var rno= $(this).attr("data-rno");
			var replytext= $(this).attr("data-replytext");

			$('#replyprompt').val(replytext)
							 .attr('data-rno', rno);

		});
		
	}
	
	function printFooter(pageMaker) {
		console.log("printFooter(...)...")
		console.dir(pageMaker);
		
		//var str = JSON.stringify(pageMaker);
		var str = "";
		
		if (pageMaker.prev)
			str += '<li><a href="#">' + (pageMaker.startPage - 1) + "prev</a></li>";
		
		for(var i=pageMaker.startPage; i<=pageMaker.endPage; i++) {
			str += '<li><a href="#" data-num="' + i + '">' + i + "</a></li>";
		}
		
		if (pageMaker.next)
			str += '<li><a href="#">' + (pageMaker.endPage + 1) + "next</a></li>";
		
		$('#reply .panel-footer .pagination').html(str);
		
		$('.pagination li > a').on('click', function(event) {

			event.preventDefault();
			
			var num = $(this).attr('data-num');
			console.log("num=" + num);
			
			page = num;
			getPage(page);
			
		});
		
	}
	

	function getPage(page) {
		
		$.getJSON("/replies/1/" + page + "?xxx=" + new Date().getTime(), function(result) {
			console.dir(result);
			
			printBody(result.list);
			printFooter(result.pageMaker);
			
		});
		
	}

	
	$('#addReply').on('click', function() {
		var bno = 1;
		var replytext = $('#replytext').val();
		var replyer = $('#replyer').val();
		
		alert("bno=" + bno + ", replytext=" + replytext + ", replyer=" + replyer);

		var options = {
			url : "/replies",
			type : "POST",
			headers : {
				"Content-Type" : "application/json"
			},
			processData : false,
			data : JSON.stringify({
				bno : bno,
				replytext : replytext,
				replyer : replyer
			}),
			success : function(result) {
				console.log(result);
				if (result == "SUCCESS") {
					//self.location = "/sboard/readPage?bno=1";
					getPage(1);
				}
				
				//alert("result = " + result);
			}
		};
		
		$.ajax(options);
	});
	
	$('#replylist').on('click', function() {
		//alert("replyelist clicked...");
		getPage(page);
	});
	
	$('#myModal #modify').on('click', function() {
		var rno = $('#replyprompt').attr('data-rno');
		var replytext = $('#replyprompt').val();
		console.log("rno=" + rno + ", replytext=" + replytext);
		
		$.ajax({
			type : "PUT",
			url : "/replies/" + rno,
			headers : {
				"Content-Type" : "application/json" 				
			},
			processData : false,
			data : JSON.stringify({
				replytext : replytext
			}),
			success : function(result) {
				if (result == "SUCCESS")				
					getPage(page);
				
				alert(result);
			}
		});
		
		$('#myModal').modal('hide');
	});
	
	$('#myModal #delete').on('click', function() {
		var rno = $('#replyprompt').attr('data-rno');
		console.log("rno=" + rno);
		
		$.ajax({
			type : "DELETE",
			url : "/replies/" + rno,
			headers : {
				"Content-Type" : "application/json" 				
			},
			success : function(result) {
				if (result == "SUCCESS")				
					getPage(page);
				
				alert(result);
			}
		});		
		
		$('#myModal').modal('hide');
	})
	
	
	

</script>

</body>
</html>