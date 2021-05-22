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
					<div>
						<a href="${pageContext.request.contextPath}/user/formDangNhap"><button
								class="btn btn-outline-warning" style="color: black">Đăng nhập</button></a>
					</div>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
				<div class="login">
					<div style="text-align: center;">
						<b>ĐĂNG KÝ</b>
					</div>
					<form:form action="${pageContext.request.contextPath}/user/dangky"
						method="post" modelAttribute="nguoiDung">
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b>Tên
									đăng nhập</b></label>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<form:input path="tenDangNhap" cssClass="form-control"
									placeholder="Nhập tên đăng nhập" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b>Họ
									tên</b></label>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<form:input placeholder="Nhập họ tên" cssClass="form-control"
									path="tenNguoiDung" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b>Email</b></label>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<form:input placeholder="Nhập email" cssClass="form-control"
									path="email" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b>Số
									điện thoại</b></label>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<form:input placeholder="Nhập số điện thoại"
									cssClass="form-control" path="soDienThoai" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b>Địa
									chỉ</b></label>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<form:input placeholder="Nhập số địa chỉ"
									cssClass="form-control" path="diaChi" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-xs-4 col-sm-4 col-md-4 col-lg-4"><b>Mật
									khẩu</b></label>
							<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<form:password placeholder="Nhập mật khẩu"
									cssClass="form-control" path="matKhau" />
							</div>
						</div>
						<div style="margin-top: 30px">
							<button class="btn" type="submit">
								<b>Đăng ký</b>
							</button>
							</a>
						</div>
					</form:form>
					<div class="quenmatkhau">
						<a href="">Quên mật khẩu</a>
					</div>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</div>
			</div>
		</div>
	</div>
</body>
</html>

