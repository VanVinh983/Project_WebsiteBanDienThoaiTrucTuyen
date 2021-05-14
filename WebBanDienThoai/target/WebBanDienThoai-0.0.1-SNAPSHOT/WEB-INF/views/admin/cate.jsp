<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="content-wrapper">
	<div class="container-fluid">
		<!--End Row-->


		<div class="row">
			<div class="col-lg-12">
				<button class="add-catalog">
					<a href="${pageContext.request.contextPath}/admin/cate/showFormAdd">Thêm
						danh mục</a>
				</button>
			</div>
			<div class="col-lg-12">
				<div class="card" style="background: transparent">
					<div class="card-body">
						<h5 class="card-title">Danh sách danh mục</h5>
						<div class="table-responsive">
							<table class="table table-striped">
								<thead>
									<tr class="text-white">
										<th scope="col">#</th>
										<th colspan="2"></th>
										<th scope="col">Tên danh mục</th>
										<th scope="col">Hành động</th>

									</tr>
								</thead>
								<tbody class="text-white">
									<c:forEach items="${cates}" var="cate">
										<c:url value="/admin/cate/showFormEdit" var="edit">
											<c:param name="cateId" value="${cate.id}"></c:param>
										</c:url>
										<c:url value="/admin/cate/delete" var="delete">
											<c:param name="cateId" value="${cate.id}"></c:param>
										</c:url>
										<tr>
											<td scope="row">${cate.id}</td>
											<td></td>
											<td></td>
											<td>${cate.tenDanhMuc}</td>
											<td>	
													<button class="btn btn-danger">
														<a href="${delete}" onclick="return confirm('Bạn có chắc chắn xóa không?');" class="text-white">Xóa</a>
													</button>
													
													<button class="btn btn-success">
														<a href="${edit}" class="text-white">Sửa</a>
													</button>
											
											</td>
										</tr>
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
