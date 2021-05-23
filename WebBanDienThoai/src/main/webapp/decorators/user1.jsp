<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE html>
<html>
<c:url value="/resources" var="resources" />

<head>
<meta charset="UTF-8">
<title>TRANG CHỦ Q-MOBILE</title>
   <link rel="shortcut icon" type="image/png" href="./assets/favicon/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="${resources}/user1/css/base.css">
    <link rel="stylesheet" href="${resources}/user1/css/main.css">
    <link rel="stylesheet" href="${resources}/user1/css/grid.css">
    <link rel="stylesheet" href="${resources}/user1/css/reponsive.css">
    <link rel="stylesheet" href="${resources}/user1/font/fontawesome-free-5.15.2-web/fontawesome-free-5.15.2-web/css/all.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">

</head>
<body>
<div class="app">
	<%@ include file="/common/user1/header.jsp" %>
	<decorator:body/>
	<%@ include file="/common/user1/footer.jsp" %>
</div>
</body>
</html>