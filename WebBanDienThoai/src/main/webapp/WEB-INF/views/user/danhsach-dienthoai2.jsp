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
	  <main class="mt-3">
            <div class="app-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-2">
                            <nav class="category">

                                <h3 class="category__heading">
                                    <i class="category__heading-icon fas fa-list"></i>
                                    Danh mục
                                </h3>
                                <ul class="category-list">
                                    <li class="category-item">
                                        <a href="#" class="category-item__link text-decoration-none">Product 1</a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-item__link text-decoration-none">Product 2</a>
                                    </li>
                                    <li class="category-item">
                                        <a href="#" class="category-item__link text-decoration-none">Product 3</a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <div class="col-10">
                            <div class="row">
                                <div class="col-12">
                                    <div class="home-filter hide-on-mobile-tablet">
                                        <span class="home-filter__label fs14">Sắp xếp theo</span>
                                        <button class="home-filter-btn btn fs14">Phổ biến</button>
                                        <button class="home-filter-btn btn btn--primary text-dark fs14">Mới
                                            nhất</button>
                                        <button class="home-filter-btn btn fs14">Bán chạy</button>

                                        <div class="select-input">
                                            <span class="select-input-price">
                                                Giá
                                            </span>
                                            <i class="select-input-icon fas fa-angle-down"></i>
                                            <ul class="select-input-list">
                                                <li class="select-input-item">
                                                    <a href="#" class="select-input-link text-decoration-none">Giá: Thấp
                                                        đến Cao <i
                                                            class="select-input-item-icon fas fa-arrow-up"></i></a>
                                                </li>
                                                <li class="select-input-item">
                                                    <a href="#" class="select-input-link">Giá: Cao đến Thấp <i
                                                            class="select-input-item-icon fas fa-arrow-down"></i></a>
                                                </li>

                                            </ul>
                                        </div>
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="home_product">
                                <div class="row">
                                <c:forEach var="dt" items="${dienthoais}">
                                    <div class="col-3 home-product-item-wrapper">
                                    
                                        <a class="home-product-item pb-3 text-deco 	" style="padding-top:15px;"
                                        href="${pageContext.request.contextPath}/dienthoai/laychitiet/${dt.id}">
                                            <div class="home-product-item-img"
                                                style="background-image: url(${resources}/user/images/SanPham/${dt.anhURL}); width: 90%;"></div>
                                            <h4 class="home-product-item__name">${dt.tenDT} ${dt.thongSo.boNho}</h4>
                                            <div class="home-product-item__price">
                                                <span class="home-product-item__price-old"><fmt:formatNumber type="number"
																	pattern="#,###,###.##" value="${dt.giaDT}" /> đ</span>
                                                <span class="home-product-item__price-current"><fmt:formatNumber
																type="number" pattern="#,###,###.##"
																value="${(dt.giaDT*(100-dt.giamGia))/100}" /> đ </span>
                                            </div>
                                            <div class="home-product-item__origin">
                                                <span class="home-product-item__brand">
                                                    Whoo
                                                </span>
                                                <span class="home-product-item__name-o">
                                                    ${dt.thuongHieu.xuatXu }
                                                </span>
                                            </div>
                                            <div class="home-product-item__favorite">
                                                <i class="fas fa-check"></i>
                                                <span>Yêu thích</span>
                                            </div>
                                            <div class="home-product-item__sale-off">
                                                <span class="home-product-item__percent">${dt.giamGia}</span>
                                                <span class="home-product-item__label">GIẢM</span>
                                            </div>
                                        </a>
                                        <a class="btn btn-success btn-block fs14"
													href="${pageContext.request.contextPath}/user/themvaogiohang/${dt.id}">
													Thêm vào giỏ hàng </a>
                                    </div>
	</c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
        </main>
</body>

</html>