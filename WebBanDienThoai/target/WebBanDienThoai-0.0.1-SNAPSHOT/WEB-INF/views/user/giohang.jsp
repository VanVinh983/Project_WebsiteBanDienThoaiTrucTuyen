<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="/resources/user/images" var="img" />
	<br>
	<div class="container ">
		<table class="table table-hover table-condensed">
			<thead style="background-color: rgb(233, 220, 38);">
				<tr>
					<th>Tên sản phẩm</th>
					<th style="width: 100px;">Giá</th>
					<th style="width: 100px;">Số lượng</th>
					<th class="text-center">Thành tiền</th>
					<th style="width: 140px;"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ds" items="${dsctgh}">
					<tr>
						<td data-th="Product">
							<div class="row ">
								<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 ">
									<img src="${img}/iPhone/iphone-11-pro-max-black-400x460.png"
										alt="" class="" style="width: 100%">
								</div>
								<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 t"></div>
								<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 mt-2">
									<h4>Điện thoại iPhone 11 Pro 256GB</h4>
								</div>
							</div>
						</td>
						</td>
						<td data-th="Price" style="float: left;"><c:out value="${ds.donGia}"/> ₫</td>
						<td data-th="Quantity"><input
							class="form-control text-center" value="<c:out value="${ds.soLuong}"/> " type="number">
						</td>
						<td data-th="Subtotal" class="text-center"><c:out value="${ds.soLuong}"/>₫</td>
						<td class="actions text-center" data-th="">
							<button class="btn btn-info btn-sm">
								<i class="fa fa-edit"></i>
							</button>
							<button class="btn btn-danger btn-sm">
								<i class="fa fa-trash"></i>
							</button>
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
					<td colspan="2" style="text-align: left;">Tổng tiền</td>
					<td class=" text-center"><strong> 139.990.000đ</strong></td>
					<td>
						<button type="button" class="btn btn-success">
							Thanh toán</i>
						</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>