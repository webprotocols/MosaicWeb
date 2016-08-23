<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modal.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<!-- Bootstrap 3.3.2 JS -->
<script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<script type="text/javascript">
$(document).ready(function() {
	var reply = $('#reply');
	var replytext = $('#replytext');
	
	$('#btnmodal').on('click', function() {
		replytext.val(reply.val());
	});
	
	$('#modify').on('click', function() {
		reply.val(replytext.val());
		
		$('#myModal').modal('hide');
	});
	
});

</script>

</head>
<body>
	<input id="reply" class="form-control" />
	<!-- Trigger the modal with a button -->
	<button id="btnmodal" type="button" class="btn btn-info btn-lg" 
		data-toggle="modal"
		data-target="#myModal">Open Modal</button>

	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"><i class="fa fa-times-circle fa-spin"></i></button>
					<h4 class="modal-title">댓글 수정 & 삭제</h4>
				</div>
				<div class="modal-body">
					<input class="form-control" type="text" id="replytext"/>
				</div>
				<div class="modal-footer">
					<div class="btn-group">
						<button id="modify" type="button" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>