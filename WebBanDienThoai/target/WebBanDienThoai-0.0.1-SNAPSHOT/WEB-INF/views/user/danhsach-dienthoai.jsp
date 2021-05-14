<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
	<c:url value="/resources/user/images" var="img" />
	<div class="container-fluid">
		<br>
		<div class="container-fluid ">
			<div class="container-fluid ">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 border-danger">
						<div class="carousel slide" id="carouselExampleControl"
							data-ride="carousel">
							<ol class="carousel-indicators">
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
			<div class="container-fluid mt-3 mb-3 col1_2">
				<div class="row">
					<c:forEach var="dt" items="${dts}">
						<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
							<div class="card text-center">
								<div class="dt">
									<div class="tragop">
										<label class="installment">Trả góp <b>0%</b></label>
									</div>
									<a href="chitetsanpham.html"
										style="text-decoration: none; color: black;"> <img
										class="card-img-top"
										src="${img}/iPhone/iphone-11-pro-max-black-400x460.png"
										alt="Card image" style="width: 50%">
										<div class="card-body">
											<h4 class="card-title"><c:out value="${dt.tenDT}" /></h4>
											<p class="card-text">
												<span style="color: red;"> <b><c:out value="${dt.giaDT}" />
												</b> &nbsp;<strike><i>33.990.000₫</i></strike>
												</span><br>
											</p>
										</div>
									</a>
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