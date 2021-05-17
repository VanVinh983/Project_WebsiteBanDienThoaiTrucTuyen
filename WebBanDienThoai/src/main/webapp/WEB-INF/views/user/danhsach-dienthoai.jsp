<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<c:url value="/resources" var="resources" />
	<div class="container-fluid">
		<br>
		<div class="container-fluid ">
			<div class="container-fluid ">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 border-danger">
						<div class="carousel slide" id="carouselExampleControl"
							data-ride="carousel">
							<ol class="carousel-indicators ">
								<li class="active" data-target="#carouselExampleControl"
									data-slide-to="0"></li>
								<li data-target="#carouselExampleControl" data-slide-to="1"></li>
								<li data-target="#carouselExampleControl" data-slide-to="2"></li>
								<li data-target="#carouselExampleControl" data-slide-to="3"></li>
								<li data-target="#carouselExampleControl" data-slide-to="4"></li>
								<li data-target="#carouselExampleControl" data-slide-to="5"></li>

							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="${img}/apple.png" alt="First" class="d-block w-100">
								</div>
								<div class="carousel-item ">
									<img src="${img}/galaxy1.png" alt="Second"
										class="d-block w-100">
								</div>
								<div class="carousel-item ">
									<img src="${img}/iphone.png" alt="Third" class="d-block w-100">
								</div>
								<div class="carousel-item ">
									<img src="${img}/phukien.png" alt="Fourth"
										class="d-block w-100">
								</div>
								<div class="carousel-item ">
									<img src="${img}/samsung.png" alt="Fifth" class="d-block w-100">
								</div>
								<div class="carousel-item ">
									<img src="${img}/vivo.png" alt="Fifth" class="d-block w-100">
								</div>

							</div>
							<a href="#carouselExampleControl" class="carousel-control-prev"
								role="button" data-slide="prev"> <span
								class="carousel-control-prev-icon" aria-hidden="true"> </span> <span
								class="sr-only">Previous</span>
							</a> <a href="#carouselExampleControl" class="carousel-control-next"
								role="button" data-slide="next"> <span
								class="carousel-control-next-icon" aria-hidden="true"> </span> <span
								class="sr-only">Next</span>
							</a>

						</div>

					</div>
				</div>

			</div>
		</div>

		<div class="container-fluid ">
			<div class="container-fluid "
				style="overflow: hidden; margin-top: 1%">
				<h3 style="float: left;">${countGiamGia} ĐIỆN THOẠI ĐANG GIẢM GIÁ</h3>
				<button class="btn btn-light" type="submit" style="float: right;">
					<h3>Xem tất cả ></h3>
				</button>
			</div>
			<div class="container-fluid mt-3 mb-3 col1_2 ">
				<div class="row">
					<c:forEach var="dt" items="${dts}">
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
							<div class="card text-center">
								<div class="dt">
									<div class="tragop">
										<label class="installment">Trả góp <b>0%</b></label>
									</div>
									<form:form method="get"
										action="${pageContext.request.contextPath}/user/chitietdt" modelAttribute="dt">
										<button class="btn " type="submit" style="text-decoration: none; color: black;"> <img
											class="card-img-top" src="${resources}/user/images/SanPham/${dt.anhURL}"
											alt="Card image" style="width: 50%">
											<div class="card-body">
												<h4 class="card-title">
													<c:out value="${dt.tenDT}" />
												</h4>
												<p class="card-text">
													<span style="color: red;"> 
													<b><fmt:formatNumber type="number" pattern="#,###,###.##" value="${(dt.giaDT*(100-dt.giamGia))/100}" /> đ
												</b> &nbsp;
												<strike><i>
												<fmt:formatNumber type="number" pattern="#,###,###.##" value="${dt.giaDT}" /> đ
												 </i></strike>													
													</span><br>
												</p>
											</div>
										</button>
										<a href="${pageContext.request.contextPath}/user/themvaogiohang/${dt.id}">Thêm tạm vào giỏ hàng</a>
									</form:form>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="container-fluid ">
			<div class="container-fluid "
				style="overflow: hidden; margin-top: 1%">
				<h3 style="float: left;">${countBanChay} ĐIỆN THOẠI BÁN CHẠY NHẤT</h3>
				<button class="btn btn-light" type="submit" style="float: right;">
					<h3>Xem tất cả ></h3>
				</button>
			</div>
			<div class="container-fluid mt-3 mb-3 col1_2 ">
				<div class="row">
					<c:forEach var="dt" items="${dtsbc}">
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
							<div class="card text-center">
								<div class="dt">
									<div class="tragop">
										<label class="installment">Trả góp <b>0%</b></label>
									</div>
									<form:form method="get"
										action="${pageContext.request.contextPath}/user/chitietdt" modelAttribute="dt">
										<button class="btn " type="submit" style="text-decoration: none; color: black;"> <img
											class="card-img-top" src="${resources}/user/images/SanPham/${dt.anhURL}"
											alt="Card image" style="width: 50%">
											<div class="card-body">
												<h4 class="card-title">
													<c:out value="${dt.tenDT}" />
												</h4>
												<p class="card-text">
													<span style="color: red;"> 
													<b><fmt:formatNumber type="number" pattern="#,###,###.##" value="${(dt.giaDT*(100-dt.giamGia))/100}" /> đ
												</b> &nbsp;
												<strike><i>
												<fmt:formatNumber type="number" pattern="#,###,###.##" value="${dt.giaDT}" /> đ
												 </i></strike>													
													</span><br>
												</p>
											</div>
										</button>
									</form:form>
								</div>
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
		<!--------------------------------------------------FOOOTER----------------------------------------------------------------->
	</div>
	</div>

</body>

</html>