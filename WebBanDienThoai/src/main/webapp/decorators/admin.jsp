<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Admin web điện thoại</title>

<c:url value="/resources/user/js" var="js"></c:url>
<c:url value="/resources" var="resources"></c:url>

<link rel="icon" href="${resources}/admin/images/favicon.ico" type="image/x-icon">
<link href="${resources}/admin/css/bootstrap.min.css" rel="stylesheet" />
<link href="${resources}/admin/css/animate.css" rel="stylesheet" type="text/css" />
<link href="${resources}/admin/css/icons.css" rel="stylesheet" type="text/css" />
<link href="${resources}/admin/css/sidebar-menu.css" rel="stylesheet" />
<link href="${resources}/admin/css/style.css" rel="stylesheet" />
<link href="${resources}/admin/css/fullparameter.css" rel="stylesheet" />
 <link rel="stylesheet" href="${resources}/admin/plugins/toastr/toastr.min.css">
</head>
<body class="bg-theme bg-theme1">
	<div id="wrapper">

		<%@ include file="/common/admin/header.jsp"%>
		<decorator:body />
		<%@ include file="/common/admin/footer.jsp"%>

	</div>
	
	<script src="${resources}/admin/js/jquery.min.js"></script>
    <script src="${resources}/admin/js/bootstrap.min.js"></script>
    <script src="${resources}/admin/plugins/toastr/toastr.min.js"></script>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script> -->
<script src="${resources}/admin/js/jquery.twbsPagination.js" type="text/javascript"></script>
</body>
</html>