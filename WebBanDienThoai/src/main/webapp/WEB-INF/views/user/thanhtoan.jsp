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
	<c:url value="/resources" var="resources" />
	<br>
	<div class="container">
		<div class="row">
			<table class="table" style="width: 60%">
				<c:forEach var="dt" items="${sessionScope.cart}">
					<tr>
						<td><img alt="" src="${resources}/user/images/SanPham/${dt.dienThoai.anhURL}"
							style="width: 100p; height: 100px"></td>
						<td><b>Điện thoại ${dt.dienThoai.tenDT}
								${dt.dienThoai.thongSo.boNho} - ${dt.dienThoai.thongSo.ram} <br>
								Màu : ${dt.dienThoai.mauSac} <br>Đơn giá: <fmt:formatNumber
									type="number" pattern="#,###,###.##₫"
									value="${dt.dienThoai.giaDT}" /> <br> Số lượng:
								${dt.soLuong}	
								
						</b></td>
					</tr>
				</c:forEach>
				
				<tr>
					<td><b style="color: red; font-size: 20px">Tổng tiền</b>
					<td><b style="color: red; font-size: 20px; float: right;"><fmt:formatNumber
								type="number" pattern="#,###,###.##₫" value="${tongtien}" /></b>
					<td>
				</tr>
			</table>
		</div>

		<div class="row">
			<div class="thongtinkhachhang">
				<div style="text-align: center;">
					<h4>THÔNG TIN KHÁCH HÀNG</h4>
				</div>

				<form:form
					action="${pageContext.request.contextPath}/user/thanhtoan"
					method="POST" modelAttribute="nguoiNhan">
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Họ và
							tên</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input class="form-control" path="hoTenKhachHang"
								placeholder="Nhập họ và tên người nhận" />
							<span style="color: red"><form:errors
									path="hoTenKhachHang" cssClass="error"></form:errors></span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Số điện
							thoại</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input cssClass="form-control" path="soDienThoaiGiaoHang"
								placeholder="Nhập số điện thoại người nhận" />
							<span style="color: red;"><form:errors
									path="soDienThoaiGiaoHang" cssClass="error"></form:errors></span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Địa chỉ
						</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input class="form-control" path="diaChiGiaoHang"
								placeholder="Nhập số địa chỉ người nhận" />
							<span style="color: red"><form:errors
									path="diaChiGiaoHang" cssClass="error"></form:errors></span>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Email </label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<form:input class="form-control" path="email"
								placeholder="Nhập email người nhận" />
							<span style="color: red"><form:errors path="email"
									cssClass="error"></form:errors></span>
						</div>
					</div>


					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Phương
							thức thanh toán</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<select class="form-control " name="idPT" aria-invalid="false">
								<c:forEach var="pttt" items="${layTatCaPhuongThucThanhToan}">
									<option value="${pttt.id }" selected>${pttt.phuongThuc }</option>
								</c:forEach>
							</select>
						</div>
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

