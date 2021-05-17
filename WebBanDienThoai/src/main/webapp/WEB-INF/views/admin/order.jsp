<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="content-wrapper">
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12">
				<div class="card" style="background: transparent">
					<div class="card-body">
						<h5 class="card-title">Danh sách đơn hàng</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr class="text-white">
										<th scope="col">#</th>
										<th scope="col">Tài khoản</th>
										<th scope="col">Họ Tên</th>
										<th scope="col">Phương thức thanh toán</th>
										<th scope="col">Trạng thái</th>
										<th scope="col">Xem chi tiết</th>

									</tr>
								</thead>
								<tbody class="text-white">
									<c:forEach items="${detail}" var="detail">
										<tr>
											<td scope="row">${detail.hoaDon.id}</td>
											<td>${detail.hoaDon.nguoiDung.tenDangNhap}</td>
											<td>${detail.hoaDon.hoTenKhachHang}</td>								
											<td><c:choose>
													<c:when test="${detail.hoaDon.thanhToan.phuongThuc == 'COD'}">
														<c:out value="COD" />
													</c:when>	
													<c:otherwise>
														<c:out value="Thẻ nội địa ATM" />
													</c:otherwise>
												</c:choose></td>
											<td><c:choose>
													<c:when test="${detail.hoaDon.thanhToan.phuongThuc == 'COD'}">
														<c:out value="Chưa thanh toán" />
													</c:when>
													<c:otherwise>
														<c:out value="Đã thanh toán" />
													</c:otherwise>
												</c:choose></td>
											<td><a onClick="xemChiTiet('${detail.hoaDon.id}')"
												data-toggle="modal" data-target="#xem-modal"><i class="zmdi zmdi-eye zmdi-hc-lg"></i> </a></td>
											<td></tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="modal fade" id="xem-modal" style="display: none;"
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<div class="scroll">
					<h4 class="text-center text-danger">
						Chi tiết đơn hàng
					</h4>
					
					<ul class="parameterfull">
						<li>
							<div class="col-lg-6"><label>Mã hóa đơn</label>
								<input type="text"></input>
							</div>
							<div class="col-lg-6"><label>Ngày lập hóa đơn</label>
								<span id="ngay"></span>
							</div>
						</li>
						<li>
							<div class="col-lg-6"><label>Mã khách hàng</label>
								<span id="ten"></span>
							</div>
							<div class="col-lg-6"><label>Tên khách hàng</label>
								<input type="text"></input>
							</div>
						</li>
						<li>
							<div class="col-lg-6"><label>Số điện thoại</label>
								<input type="text"></input>
							</div>
							<div class="col-lg-6"><label>Địa chỉ</label>
								<input type="text"></input>
							</div>
						</li>
					</ul>
					<button type="button" class="btn btn-danger" data-dismiss="modal" style="float: right">Đóng</button>
				</div>
			</div>

		</div>
	</div>
</div>

<c:url value="/resources" var="resources"></c:url>
<script src="${resources}/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${resources}/admin/js/order/order.js"></script>