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
		<table class="table table-hover table-condensed">
			<tbody>
				<c:forEach var="ds" items="${dsctgh}">
					<tr>
						<td>
							<div class="row ">
								<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 ">
									<img src="${img}/11pr.png" alt="" class="" style="width: 100%">
									<div style="text-align: center; margin-top: 10%">
										<button class="btn btn-danger btn-sm">
											<i class="fa fa-trash"></i>
										</button>
										<button class="btn btn-primary btn-sm">
											<i class="fa fa-edit"></i>
										</button>
									</div>
								</div>
								<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 t"></div>
								<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 mt-2">
									<h4>${ds.tenDT}</h4>
									<div style="margin-top: 10%">Màu : ${ds.mauSac}</div>
								</div>
							</div>
						</td>
						<td>
							<div style="text-align: center;">
								<fmt:formatNumber type="number" pattern="#,###,###.## ₫"
									value="${ds.giaDT}" />
							</div>
							<div>
								<input class="form-control text-center" value="1" type="number">
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td style="text-align: left;"><a href="index_1.html">
							<button type="button" class="btn btn-success">
								<i class="fa fa-angle-left"></i> Tiếp tục mua hàng
							</button>
					</a></td>
					<td>
						<button type="button" class="btn btn-success">
							<a href="#" style="text-decoration: none; color: white;">Thanh
								toán</a></i>
						</button>
					</td>
				</tr>
			</tfoot>
		</table>
		<div class="row">
			<div class="giohangtongtien">
				<table class="table">
					<tr>
						<td>Tạm tính:</td>
						<td>42.280.000 đ</td>
					</tr>
					<tr>
						<td>Giảm:</td>
						<td>-280.000 đ</td>
					</tr>
					<tr>
						<td><b>Tổng tiền:</b></td>
						<td style="color: red;"><b>40.000.000 đ</b></td>
					</tr>
				</table>
			</div>
		</div>
		<div class="row">
			<div class="thongtinkhachhang">
				<div style="text-align: center;">
					<h4>THÔNG TIN KHÁCH HÀNG</h4>
				</div>
				<form:form action="" method="POST">
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Họ và
							tên</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<input class="form-control" placeholder="Nhập họ và tên">
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3">Giới
							tính</label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<input type="radio" name="gioiTinh" value="Nam">Nam
							&nbsp; <input type="radio" name="gioiTinh" value="Nu">Nữ
						</div>

					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3"> Địa
							chỉ </label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<input class="form-control" placeholder="Nhập địa chỉ người nhận">
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3"> Ghi
							chú </label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<textarea class="form-control" placeholder="Ghi chú"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label class="col-xs-3 col-sm-3 col-md-3 col-lg-3"></label>
						<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9">
							<button type="submit" class="btn btn-success">
								Đặt hàng
							</button>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>
