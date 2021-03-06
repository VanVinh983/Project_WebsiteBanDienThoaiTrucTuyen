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
									<c:forEach items="${order}" var="order">
										<tr>
											<td scope="row">${order.id}</td>

											<td>${order.nguoiDung.tenDangNhap}</td>
											<td>${order.hoTenKhachHang}</td>
											<td><c:choose>
													<c:when test="${order.thanhToan.phuongThuc == 'COD'}">
														<c:out value="COD" />
													</c:when>
													<c:otherwise>
														<c:out value="Thẻ nội địa ATM" />
													</c:otherwise>
												</c:choose></td>
											<td><c:choose>
													<c:when test="${order.thanhToan.phuongThuc == 'COD'}">
														<c:out value="Chưa thanh toán" />
													</c:when>
													<c:otherwise>
														<c:out value="Đã thanh toán" />
													</c:otherwise>
												</c:choose></td>
											<td><a onClick="xemChiTiet('${product.id}')"
												class="btn btn-success" data-toggle="modal"
												data-target="#xem-modal"> Xem </a></td>
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
							<div style="text-align: center;">
							<span id='anh'></span>

							<c:url var="img" value="ip11trang.png" />
							
								<img  src="${resources}/admin/images/product/${img}"  width="300" height="250">
							</div>
						</li>
						<li><span>Màn hình</span>
							<div><label id="manHinh"> </label></div>
						</li>
						
						<li><span>Hệ điều hành</span>
							<div>
								<label id="heDieuHanh"> </label>
							</div>
						</li>
						<li><span>Độ phân giải Camera</span>
							<div>
								<label id="camera"></label>
							</div>
						</li>
						<li><span>Ram</span>
							<div>
								<label id="ram"></label>
							</div>
						</li>
						<li><span>Bộ nhớ trong</span>
							<div>
								<label id="boNho"></label>
							</div>
						</li>
						<li><span>Sim</span>
							<div>
								<label id="sim"></label>
							</div>
						</li>
						<li><span>Pin</span>
							<div>
								<label id="pin"></label>
							</div>
						</li>
						<li><span>Trọng lương</span>
							<div>
								<label id="trongLuong"></label>
							</div>
						</li>
						<li><span>Kích thước</span>
							<div>
								<label id="kichThuoc"></label>
							</div>
						</li>
						<li><span>Màu sắc</span>
							<div>
								<label id="mauSac"></label>
							</div>
						</li>
						<li><span>Thương hiệu</span>
							<div>
								<label id="thuongHieu"></label>
							</div>
						</li>
						<li><span>Xuất xứ</span>
							<div>
								<label id="xuatXu"></label>
							</div>
						</li>
						
					</ul>
					<button type="button" class="btn btn-danger" data-dismiss="modal" style="float: right">Đóng</button>
				</div>
			</div>

		</div>
	</div>
</div>