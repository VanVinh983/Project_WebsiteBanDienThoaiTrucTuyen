<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<%-- <div class="col-lg-12">
            <button class="add-catalog"><a href="${pageContext.request.contextPath}/admin/user/showFormAdd">Thêm User</a></button>
          </div> --%>
			<div class="col-lg-12">
				<div class="card" style="background: transparent">
					<div class="card-body">
						<h5 class="card-title">Danh sách Admin</h5>
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
									<c:forEach items="${admin}" var="admin">
									<c:if test="${admin.vaiTro=='ROLE_ADMIN'}">
											<c:url value="/admin/admin/showFormEdit" var="edit">
												<c:param name="adminId" value="${admin.id}"></c:param>
											</c:url>
											<tr>
												<td scope="row">${admin.id}</td>
												<td>${admin.tenNguoiDung}</td>
												<td>${admin.email }</td>
												<td>${admin.soDienThoai}</td>
												<td>${admin.tenDangNhap}</td>
												<td>${admin.ngayTao}</td>
												<td>											
														<a href="${edit}"><i class="zmdi zmdi-border-color zmdi-hc-lg"></i> </a>	
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


