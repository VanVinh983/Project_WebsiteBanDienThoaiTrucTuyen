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
	  <div class="app__container">
            <div class="grid wide">
                <div class="row sm-gutter app__content">
                    <div class="col l-2 m-0 c-0">
                        <nav class="category">

                            <h3 class="category__heading">
                                <i class="category__heading-icon fas fa-list"></i>
                                Danh mục
                            </h3>
                            <ul class="category-list">
                                <li class="category-item category-item-active">
                                    <a href="#" class="category-item__link">IPHONE</a>
                                </li>
                                <li class="category-item">
                                    <a href="#" class="category-item__link">SAMSUNG</a>
                                </li>
                                <li class="category-item">
                                    <a href="#" class="category-item__link">VSMART</a>
                                </li>
                                 <li class="category-item">
                                    <a href="#" class="category-item__link">OPPO</a>
                                </li>
                                 <li class="category-item">
                                    <a href="#" class="category-item__link">XIAOMI</a>
                                </li>
                                 <li class="category-item">
                                    <a href="#" class="category-item__link">HUAWEI</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col l-10 m-12 c-12">

                        <div class="home-filter hide-on-mobile-tablet">
                            <span class="home-filter__label">Sắp xếp theo</span>
                            <button class="home-filter-btn btn">Phổ biến</button>
                            <button class="home-filter-btn btn btn--primary">Mới nhất</button>
                            <button class="home-filter-btn btn">Bán chạy</button>

                            <div class="select-input">
                                <span class="select-input-price">
                                    Giá
                                </span>
                                <i class="select-input-icon fas fa-angle-down"></i>
                                <ul class="select-input-list">
                                    <li class="select-input-item">
                                        <a href="#" class="select-input-link">Giá: Thấp đến Cao <i
                                                class="select-input-item-icon fas fa-arrow-up"></i></a>
                                    </li>
                                    <li class="select-input-item">
                                        <a href="#" class="select-input-link">Giá: Cao đến Thấp <i
                                                class="select-input-item-icon fas fa-arrow-down"></i></a>
                                    </li>

                                </ul>
                            </div>

                        </div>

                      
                        <div class="home_product">
                            <div class="row sm-gutter">
                            <c:forEach var="dt" items="${dienthoais}">
                                <div class="col l-2-4 m-4 c-4 home-product-item-wrapper">
                                    <a class="home-product-item" style="padding-top: 20px;">
                                        <div class="home-product-item-img"
                                            style="background-image: url(${resources}/user/images/SanPham/${dt.anhURL}); background-size: 180px 170px;">
                                            </div>
                                        <h4 class="home-product-item__name">${dt.tenDT} (${dt.thongSo.boNho})</h4>
                                        <div class="home-product-item__price">
                                            <span class="home-product-item__price-old"><fmt:formatNumber type="number"
																	pattern="#,###,###.##" value="${dt.giaDT}" /> đ</span>
                                            <span class="home-product-item__price-current"><fmt:formatNumber
																type="number" pattern="#,###,###.##"
																value="${(dt.giaDT*(100-dt.giamGia))/100}" /> đ </span>
                                        </div>
                                        <div class="home-product-item__action">
                                            <span class="home-product-item__like home-product-item__liked">
                                                <i class="home-product-item__like-icon-empty far fa-heart"></i>
                                                <i class="home-product-item__like-icon-full fas fa-heart"></i>
                                            </span>                                                                            
                                        </div>
                                        <div class="home-product-item__origin">                                        
                                            <span class="home-product-item__name-o">
                                               ${dt.thuongHieu.xuatXu}
                                            </span>
                                        </div>
                                        <div class="home-product-item__favorite">
                                            <i class="fas fa-check"></i>
                                            <span>Yêu thích</span>
                                        </div>
                                        <div class="home-product-item__sale-off">
                                            <span class="home-product-item__percent">${dt.giamGia}%</span>
                                            <span class="home-product-item__label">GIẢM</span>
                                        </div>
                                    </a>
                                </div>
							</c:forEach>

                            </div>

                        </div>

                        
                    </div>

                </div>
            </div>
        </div>
</body>

</html>