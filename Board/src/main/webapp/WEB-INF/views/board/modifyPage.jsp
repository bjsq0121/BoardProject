<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="../include/header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form role="form"  action="modifyPage" ethod="post">
		<input type="hidden" name="page" value="${cri.page }">
		<input type="hidden" name="perPageNum" value="${cri.perPageNum }">
		
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">BNO</label>
				<input type="text" name="bno" class="form-control" value="${boardVO.bno}" readonly="readonly">
			</div>
			
			<div class="form-group">
				<label for="exampleInputEmail1">Title</label>
				<input type="text" name="title" class="form-control" value="${boardVO.title}">
			</div>
			
			<div class="form-group">
				<label for="exampleInputPassword1">Content</label>
				<textarea class="form-control" name="content" rows="3">${boardVO.content }</textarea>
			</div>
			
			<div class="form-group">
				<label for="exampleInputEmail1">Writer</label>
				<input type="text" name="wirter" class="form-control" value="${boardVO.writer }">
			</div>
		</div>
	</form>
	
	<div class="box-footer">
		<button type="submit" class="btn btn-primary">SAVE</button>
		<button type="submit" class="btn btn-warning">CANCEL</button>
	</div>
</body>
</html>
<script>
$(document).ready(function(){
	var formObj = $("form[role='form']");
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		self.location = "/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}";
	});
	
	$(".btn-primary").on("click", function(){
		formObj.attr("method","post");
		formObj.attr("action","/board/modifyPage");
		formObj.submit();
	});
	
});
</script>

<%@include file="../include/footer.jsp" %>