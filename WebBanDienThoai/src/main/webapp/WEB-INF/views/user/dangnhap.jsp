<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/resources/user/images" var="img" />
	<br>
	<div class="container">
		<div class="row"
			style="background-color: #f2f885; margin-bottom: 20px">
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				<div class="welcomelogin">
					<div>
						<img alt="" src="${img}/logo.png">
					</div>
					<div style="font-size: 25px">
						<b>Welcome to login</b>
					</div>
					<div>Bạn chưa có tài khoản?</div>
					<div>
						<a><button class="btn btn-outline-warning">Đăng ký</button></a>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				<div class="login">
					<div style="text-align: center;">
						<b>ĐĂNG NHẬP</b>
					</div>
					<form action="user/dangnhap" method="POST">
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4"
								for="tenDangNhap"><b>Tên đăng nhập</b></label>
							<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
								<input type="text" placeholder="Nhập tên đăng nhập"
									class="form-control" name="tenDangNhap" id="tenDangNhap">
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4" for="matKhau"><b>Mật
									khẩu</b></label>
							<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
								<input type="text" placeholder="Nhập mật khẩu"
									class="form-control" name="matKhau" id="matKhau">
							</div>
						</div>
						<div style="margin-top: 30px">
							<button class="btn" type="submit">
								<b>Đăng nhập</b>
							</button>
							</a>
						</div>
					</form>
					<div class="quenmatkhau">
						<a href="">Quên mật khẩu</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

