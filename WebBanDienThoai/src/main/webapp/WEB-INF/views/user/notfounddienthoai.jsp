<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/resources" var="resources" />
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<img alt="không tìm thấy điện thoại" src="${resources}/user1/img/image_dont_find_dienthoai.png">
			</div>
			<div class="col-12">
				<h2 style="font-weight: bold; color: black;">Không tìm thấy được điện thoại nào</h2>
				<h2 style="color: gray;">Hãy thử các từ khóa chung chung hơn</h2>
			</div>
		</div>
	</div>
</body>
</html>