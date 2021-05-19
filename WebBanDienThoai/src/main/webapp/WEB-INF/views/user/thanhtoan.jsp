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
		<div class="row">
			<div class="thongtinkhachhang">
				<div style="text-align: center;">
					<h4>THÔNG TIN KHÁCH HÀNG</h4>
				</div>
				<form:form
					action="${pageContext.request.contextPath}/user/themnguoinhan"
					method="POST" modelAttribute="nguoiNhan">
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Họ và
							tên</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input class="form-control" path="hoTenKhachHang"
								placeholder="Nhập họ và tên người nhận" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Số điện
							thoại</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input cssClass="form-control" path="soDienThoaiGiaoHang"
								placeholder="Nhập số điện thoại người nhận" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Địa chỉ
						</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input class="form-control" path="diaChiGiaoHang"
								placeholder="Nhập số địa chỉ người nhận" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Email </label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input class="form-control" path="email"
								placeholder="Nhập email người nhận" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Phương
							thức thanh toán</label> <form:select path="thanhToan">
							<c:forEach var="pttt" items="${layTatCaPhuongThucThanhToan}">
								<form:option value="${pttt.id }">${pttt.phuongThuc}</form:option>
							</c:forEach>
						</form:select>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3"></label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<a><button type="submit" class="btn btn-success btn-block">
									Thanh toán</button></a>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>

