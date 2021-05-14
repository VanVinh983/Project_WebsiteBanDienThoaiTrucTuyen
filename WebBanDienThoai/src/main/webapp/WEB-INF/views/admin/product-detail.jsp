<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:url value="/resources/user/images" var="img" />
<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<div class="col-lg-12">
				<button class="add-catalog">
					<a href="${pageContext.request.contextPath}/admin/product/save">Thêm
						sản phẩm</a>
				</button>
			</div>
			<div class="col-lg-12">
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
								<tbody class="text-white">
									
									<c:url value="/admin/prodcut/showFormEdit" var="edit">
											<c:param name="productId" value="${product.id}"></c:param>
										</c:url>
										<c:url value="/admin/product/delete" var="delete">
											<c:param name="productId" value="${product.id}"></c:param>
										</c:url>
										<c:url value="/admin/product/product-detail" var="detail">
											<c:param name="productId" value="${product.id}"></c:param>
										</c:url>
										<tr>
											<th scope="row">${product.id}</th>
											<td>${product.tenDT}</td>
											<%-- td><img
												style="width: 110px; height: 67px; border: 1px solid #fff;"
												src="${img}/iPhone/iphone-11-pro-max-gold-200-180x125.png"></td> --%>
											<td>${product.giaDT}</td>
											<td>${product.soLuongTon}</td>
											<td>${product.giamGia }%</td>
											<td><button type="button" class="btn btn-success">
											<a href="${detail}" data-toggle="modal" data-target="#exampleModal"> Xem chi tiết</a></button></td>
											<td>
												<button class="btn btn-danger">
													<a href="${delete}">Xóa</a>
												</button>
												<button class="btn btn-success">
													<a href="${edit }">Sửa</a>
												</button>
											</td>
										</tr>
										<div class="modal fade show" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" style="display: block; padding-left: 17px;" aria-modal="true" role="dialog">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-body">
														<div class="scroll">
															<h3 class="text-center mb-3 text-danger mb-3 text-uppercase">
																Thông số kỹ thuật chi tiết<br>${product.tenDT}
															</h3>
															<img
																src="${img}/iPhone/iphone-11-pro-max-gold-200-180x125.png">
															<ul class="parameterfull">
																<li style="margin-top: 20px"><label>Màn
																		hình</label></li>
																<li><span>Công nghệ màn hình</span>
																	<div>
																		<a
																			href="https://www.thegioididong.com/hoi-dap/man-hinh-oled-la-gi-905762"
																			target="_blank">OLED</a>
																	</div></li>
																<li><span>Độ phân giải</span>
																	<div>
																		<label>${product.mauSac}</label>
																	</div></li>
																<li><span>Kích thước màn hình</span>
																	<div>
																		<label>6.7"</label>
																	</div></li>
																<li><span>Tần số quét</span>
																	<div>
																		<label>60 Hz</label>
																	</div></li>
																<li><span>Độ sáng tối đa</span>
																	<div>
																		<label>1200 nits</label>
																	</div></li>
																<li><span>Mặt kính cảm ứng</span>
																	<div>
																		<a href="#" target="_blank">Kính cường lực Ceramic
																			Shield</a>
																	</div></li>
															</ul>
														</div>
													</div>

												</div>
											</div>
										</div>
				
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->

	


</div>