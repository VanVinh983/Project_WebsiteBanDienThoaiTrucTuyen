<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/resources" var="resources"></c:url>
<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row ">			
			<div class="col-lg-12">
				<button class="add-catalog">
					<a href="${pageContext.request.contextPath}/admin/product/showFormAdd">Thêm sản phẩm</a>
				</button>
			</div>
			<label for="tenDienThoai" class="col-lg-12 col-form-label">Tên điện thoại</label>
			<div class="col-lg-12">	
				<input type="text" class="form-control" id="timKiemTendienThoai" placeholder="Nhập tên điện thoại" />
			</div>			
			<div class="col-lg-12 mt-3">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Danh sách sản phẩm</h5>
						<div class="table-responsive">
							<table class="table" style="opacity: 1">
								<thead>
									<tr class="text-white">
										<th scope="col">#</th>
										<th scope="col">Tên điện thoại</th>
										<!-- <th scope="col">Hình ảnh</th> -->
										<th scope="col">Giá</th>
										<th scope="col">Số lượng</th>
										<th scope="col">Giảm giá</th>
										<th scope="col">Xem chi tiết</th>
										<th scope="col">Hành động</th>
									</tr>
								</thead>
								<tbody class="text-white" id="tableBody">
									<c:forEach items="${productList}" var="product">
										<c:url value="/admin/product/showFormEdit" var="edit">
											<c:param name="productId" value="${product.id}"></c:param>
										</c:url>
										<c:url value="/admin/product/delete" var="delete">
											<c:param name="productId" value="${product.id}"></c:param>
										</c:url>
										<c:url value="/admin/product/list" var="detail">
										</c:url>
										<tr>
											<th scope="row">${product.id}</th>
											
											<td>${product.tenDT}</td>
											<%-- td><img
												style="width: 110px; height: 67px; border: 1px solid #fff;"
												src="${img}/iPhone/iphone-11-pro-max-gold-200-180x125.png"></td> --%>
											<td><fmt:formatNumber type="number" pattern="#,###,###.##"
												value="${product.giaDT}" />  đ</td>
											<td>${product.soLuongTon}</td>
											<td>${product.giamGia }%</td>

											<td><a onClick="xemChiTiet('${product.id}')"
												class="btn btn-success" data-toggle="modal"
												data-target="#xem-modal"> Xem </a></td>
											<td>												
													<a href="${delete} " onclick="return confirm('Bạn có chắc chắn xóa không?');"><button class="btn btn-danger">Xóa</button></a>																						
													<a href="${edit}"><button class="btn btn-success">Sửa</button></a>											
											</td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
						</div>
						<br />
						<ul class="pagination" id="pagination" style="padding-left: 300px"></ul>
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
						Thông số kỹ thuật chi tiết<br>${product.tenDT}
					</h4>
					
					<ul class="parameterfull">
						<li>
							<div style="text-align: center;">												
								<img id="anh" src=""  width="300" height="250">
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

<!-- <script type="text/javascript">
	$(function() {
		window.pagObj = $('#pagination').twbsPagination({
			totalPages : 35,
			visiblePages : 5,
			onPageClick : function(event, page) {
				console.info(page + ' (from options)');
			}
		})
	});
</script> -->


<script src="${resources}/admin/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${resources}/admin/js/product/product.js"></script>