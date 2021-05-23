<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/resources" var="resources" />
<header class="header">
            <div class="grid wide">
                <nav class="header__navbar hide-on-mobile-tablet">
                    <ul class="header__navbar-list">
                        <li class="header__navbar-item">
                            <i class="fas fa-store fs-150 text-dark"></i>&nbsp;
                            <span class="header__navbar-title--no-pointer header__navbar-item-separate text-dark">Cửa
                                hàng</span>
                        </li>
                        <li class="header__navbar-item header__navbar-item--has-qr header__navbar-item-separate">
                            <i class="fas fa-mobile-alt text-dark"></i>&nbsp;
                            <span class="text-dark">Tải ứng dụng</span> 
                        </li>
                        <li class="header__navbar-item">
                            <span class="header__navbar-title--no-pointer text-dark">Kết nối</span>
                            <a href="#" class="header__navbar_icon-link">
                                <i class="header_navbar-icon fab fa-facebook text-dark"></i>
                            </a>

                            <a href="#" class="header__navbar_icon-link">
                                <i class="header_navbar-icon fab fa-instagram text-dark"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="header__navbar-list">
                        

                       <li class="header__navbar-item header__navbar-item-bold header__navbar-item-separate" 
                       style="color: black;">
                            Đăng ký
                        </li>
                        <class class="header__navbar-item header__navbar-item-bold"  style="color: black;">
                            Đăng nhập
                        </class>
                        <!-- <li class="header__navbar-item header__navbar-user">
                            <img src="./assets/img/user.jpg" alt="" class="header__navbar-user-img">
                            <span class="header__navbar-user-name text-dark">Trung Vinh</span>
                            <ul class="header__navbar-user-menu">
                                <li class="header__navbar-user-item">
                                    <a href="#">Tài khoản của tôi</a>
                                </li>
                                <li class="header__navbar-user-item">
                                    <a href="#">Địa chỉ của tôi</a>
                                </li>
                                <li class="header__navbar-user-item">
                                    <a href="#">Đơn mua</a>
                                </li>
                                <li class="header__navbar-user-item header__navbar-user-item-separate">
                                    <a href="#">Đăng xuất</a>
                                </li>
                            </ul>
                        </li> -->

                    </ul>


                </nav>

                <div class="header-with-search ">
                    <label for="mobile-search-checkbox" class="header__mobile-search">
                        <i class="header-mobile-search-icon fas fa-search"></i>
                    </label>
                    <div class="header__logo hide-on-tablet">
                        <a href="">
                            <img src="${resources}/user1/img/logo.png" style="width: 75%;
                            padding-left: 35px;">
                        </a>
                    </div>
                    <input type="checkbox" hidden name="" id="mobile-search-checkbox" class="mobile__check-header">
                    <div class="header__search">
                        <div class="header__search-input-wrap">
                            <input type="text" class="header__search-input"
                                placeholder="Tìm sản phẩm">
                        </div>
                        
                        <button class="header__search-btn">
                            <i class="header__search-btn-icon fas fa-search"></i>
                        </button>
                    </div>
                    <div class="header__cart">
                        <div class="header__cart-wrap">
                            <i class="header__cart-icon fas fa-shopping-cart" style="color: black;"></i>
                            <span class="header__cart-notice">3</span>

                        </div>
                    </div>

                </div>

            </div>

            <ul class="header__sort-list">
                <li class="header__sort-item">
                    <a href="#" class="header__sort-link">Liên quan</a>
                </li>
                <li class="header__sort-item">
                    <a href="#" class="header__sort-link header__sort-link-active">Mới nhất</a>
                </li>
                <li class="header__sort-item">
                    <a href="#" class="header__sort-link">Bán chạy</a>
                </li>
                <li class="header__sort-item">
                    <a href="#" class="header__sort-link">Giá</a>
                </li>
            </ul>
        </header>