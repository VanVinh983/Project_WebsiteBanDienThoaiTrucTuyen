<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<%-- <div class="col-lg-12">
            <button class="add-catalog"><a href="${pageContext.request.contextPath}/admin/user/showFormAdd">Thêm User</a></button>
          </div> --%>
			<div class="col-lg-12">
			<label for="tenDienThoai" class="col-lg-12 col-form-label">Họ tên</label>
			<div class="col-lg-12 ">	
				<input type="text" class="form-control" id="timKiemTendienThoai" placeholder="Nhập họ tên" />
				<br>
			</div>		
				<div class="card" style="background: transparent">
					<div class="card-body">
						<h5 class="card-title">Danh sách User</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr class="text-white">
										<th scope="col">#</th>
										<th scope="col">Tên</th>
										<th scope="col">Email</th>
										<th scope="col">Số điện thoại</th>
										<th scope="col">Username</th>
										<th scope="col">Ngày tạo</th>
										<th scope="col">Hành động</th>

									</tr>
								</thead>
								<tbody class="text-white">
									<c:forEach items="${users}" var="user">
											<c:if test="${user.vaiTro=='ROLE_USER'}">
												<c:url value="/admin/user/showFormEdit" var="edit">
													<c:param name="userId" value="${user.id}"></c:param>
												</c:url>
												<c:url value="/admin/user/delete" var="delete">
													<c:param name="userId" value="${user.id}"></c:param>
												</c:url>
												<tr>
													<td scope="row">${user.id}</td>
													<td>${user.tenNguoiDung}</td>
													<td>${user.email }</td>
													<td>${user.soDienThoai}</td>
													<td>${user.tenDangNhap}</td>
													<td>${user.ngayTao}</td>
													<td>
														<a href="${edit}"><i class="zmdi zmdi-border-color zmdi-hc-lg"></i> </a>	
													&emsp;&nbsp;																																	
													<a onclick="return confirm('Bạn có chắn chắn xóa không?')" href="${delete}"><i class="zmdi zmdi-delete zmdi-hc-lg"></i></a>
													</td>
												</tr>
											</c:if>
										</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="overlay toggle-menu"></div>
	</div>
</div>


