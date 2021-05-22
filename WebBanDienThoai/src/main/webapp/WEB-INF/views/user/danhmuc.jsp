<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/resources" var="resources" />
	<div class="container-fluid">
		<!-- Page Content-->
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-md-12">
                    <ul class="nav nav-pills list-group my-4 col-12" role="tablist">
						<li class="btn nav-item list-group-item col-12" style="padding: 1px;border: none;">
							<a class="nav-link active btn btn-outline-info col-12" data-toggle="pill" href="#allSP">Tất cả sản phẩm</a>
						</li>
						<li class="btn nav-item list-group-item col-12" style="padding: 1px;border: none;">
							<a class="nav-link btn btn-outline-info col-12" data-toggle="pill" href="#GiamGia">Đang giảm giá</a>
						</li>
						<li class="btn nav-item list-group-item col-12" style="padding: 1px;border: none;">
							<a class="nav-link btn btn-outline-info col-12" data-toggle="pill" href="#${th.tenTH}">Đang bán chạy</a>
						</li>
						<li class="btn nav-item list-group-item col-12" style="padding: 1px;border: none;" onclick="actionsubmenudanhmuc()">
							<a class="nav-link btn btn-outline-info col-12" data-toggle="pill" href="#${th.tenTH}">Thương hiệu</a>
						</li>
						<div style="width: 100%; display: none;" id="dropdown-container">
							<c:forEach var="th" items="${ths}">
								<li class="btn nav-item list-group-item col-12" style="padding: 1px;border: none;">
									<a class="nav-link btn btn-secondary text-white col-12" data-toggle="pill" href="#${th.tenTH}">${th.tenTH}</a>
								</li>
							</c:forEach>
						</div>
					</ul>
                </div>
                <!-- -------Quảng Cáo----------------------------------------------------------------------- -->
                <div class="col-lg-9">
                    <div class="carousel slide my-4" id="carouselExampleIndicators" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li class="active" data-target="#carouselExampleIndicators" data-slide-to="0"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active"><img class="d-block img-fluid" src="https://via.placeholder.com/900x350" alt="First slide" /></div>
                            <div class="carousel-item"><img class="d-block img-fluid" src="https://via.placeholder.com/900x350" alt="Second slide" /></div>
                            <div class="carousel-item"><img class="d-block img-fluid" src="https://via.placeholder.com/900x350" alt="Third slide" /></div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!---------------------------Điện Thoại-------------------------------------------- -->
                    <div class="row">
                    	<div class="tab-content">
                    		<div id="allSP" class="tab-pane active">
                    			<c:forEach var="dt" items="${dts}">
									<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 float-left">
										<div class="card text-center">
											<div class="dt">
												<div class="tragop">
													<label class="installment">Trả góp <b>0%</b></label>
												</div>
												<form:form method="get"
													action="${pageContext.request.contextPath}/user/chitietdt"
													modelAttribute="dt">
													<button class="btn " type="submit"
														style="text-decoration: none; color: black;">
														<img class="card-img-top"
															src="${resources}/user/images/SanPham/${dt.anhURL}"
															alt="Card image" style="width: 50%">
														<div class="card-body">
															<h4 class="card-title">
																<c:out value="${dt.tenDT} ${dt.thongSo.boNho}" />
															</h4>
															<p class="card-text">
																<span style="color: red;"> <b><fmt:formatNumber
																			type="number" pattern="#,###,###.##"
																			value="${(dt.giaDT*(100-dt.giamGia))/100}" /> đ </b> &nbsp;
																	<strike><i> <fmt:formatNumber type="number"
																				pattern="#,###,###.##" value="${dt.giaDT}" /> đ
																	</i></strike>
																</span><br>
															</p>
														</div>
														<div class="card-footer"
															style="bottom: 0; position: absolute; width: 90%; float: center; background-color: white;">
															<a class="btn btn-success btn-block"
																href="${pageContext.request.contextPath}/user/themvaogiohang/${dt.id}">
																Thêm vào gỏi hàng </a>
														</div>
													</button>
												</form:form>
											</div>
										</div>
									</div>
								</c:forEach>
                    		</div>
                    		<div id="GiamGia" class="tab-pane fade">
                    			<c:forEach var="dt" items="${dts}">
                    				<c:if test="${dt.giamGia > 0}">
                    					<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 float-left">
											<div class="card text-center">
												<div class="dt">
													<div class="tragop">
														<label class="installment">Trả góp <b>0%</b></label>
													</div>
													<form:form method="get"
														action="${pageContext.request.contextPath}/user/chitietdt"
														modelAttribute="dt">
														<button class="btn " type="submit"
															style="text-decoration: none; color: black;">
															<img class="card-img-top"
																src="${resources}/user/images/SanPham/${dt.anhURL}"
																alt="Card image" style="width: 50%">
															<div class="card-body">
																<h4 class="card-title">
																	<c:out value="${dt.tenDT} ${dt.thongSo.boNho}" />
																</h4>
																<p class="card-text">
																	<span style="color: red;"> <b><fmt:formatNumber
																				type="number" pattern="#,###,###.##"
																				value="${(dt.giaDT*(100-dt.giamGia))/100}" /> đ </b> &nbsp;
																		<strike><i> <fmt:formatNumber type="number"
																					pattern="#,###,###.##" value="${dt.giaDT}" /> đ
																		</i></strike>
																	</span><br>
																</p>
															</div>
															<div class="card-footer"
																style="bottom: 0; position: absolute; width: 90%; float: center; background-color: white;">
																<a class="btn btn-success btn-block"
																	href="${pageContext.request.contextPath}/user/themvaogiohang/${dt.id}">
																	Thêm vào gỏi hàng </a>
															</div>
														</button>
													</form:form>
												</div>
											</div>
										</div>
                    				</c:if>
                    			</c:forEach>
                    		</div>
                    	</div >
                    </div>
                </div>
            </div>
        </div>
	</div>
</body>
</html>