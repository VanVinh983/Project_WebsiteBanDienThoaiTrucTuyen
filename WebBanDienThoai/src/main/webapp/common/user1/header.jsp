<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<c:url value="/resources" var="resources" />
<header class="header">
	<div class="container-fluid">
		<nav class="header__navbar hide-on-mobile-tablet">
			<ul class="header__navbar-list">
				<li class="header__navbar-item"><i class="fas fa-store fs-150"></i>&nbsp;
					<span class=" text-dark font-weight-bold">Cửa hàng</span></li>
				<li
					class="header__navbar-item header__navbar-item--has-qr header__navbar-item-separate font-weight-bold">
					<i class="fas fa-mobile-alt"></i>&nbsp; Tải ứng dụng <!-- HEADER QR CODE -->

				</li>
				<li class="header__navbar-item"><span
					class="header__navbar-title--no-pointer text-dark font-weight-bold">Kết
						nối</span> <a href="#" class="header__navbar_icon-link"> <i
						class="header_navbar-icon fab fa-facebook text-dark"></i>
				</a> <a href="#" class="header__navbar_icon-link"> <i
						class="header_navbar-icon fab fa-instagram text-dark font-weight-bold"></i>
				</a></li>
			</ul>

			<ul class="header__navbar-list">


				<li
					class="header__navbar-item header__navbar-item-bold header__navbar-item-separate">
					Đăng ký</li>
				<class class="header__navbar-item header__navbar-item-bold">
				Đăng nhập </class>
				<!-- <li class="header__navbar-item header__navbar-user">
                            <img src="./assets/img/user.jpg" alt="" class="header__navbar-user-img">
                            <span class="header__navbar-user-name">Trung Vinh</span>
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
				<i class="fas fa-search" sstyle="color: black;"></i>
			</label>
			<div class="header__logo hide-on-tablet">
				<a href="${pageContext.request.contextPath}/dienthoai/danhsach"
					class="head_logo-link"> <img
					src="${resources}/user1/img/qmobile.png"
					class="header__logo-img ml-24" alt="Qmobile">
				</a>
			</div>
			<input type="checkbox" hidden name="" id="mobile-search-checkbox"
				class="mobile__check-header">
			<div class="header__search">
				<div class="header__search-input-wrap">
					<input type="text" class="header__search-input"
						placeholder="Tìm sản phẩm, thương hiệu và tên shop">

				</div>

				<button class="header__search-btn">
					<i class="header__search-btn-icon fas fa-search"></i>
				</button>
			</div>
			<!-- Cart Layout -->
			<div class="header__cart">
				<div class="header__cart-wrap">
					<i class="header__cart-icon fas fa-shopping-cart"
						style="color: black;"></i>
					<!-- No cart: header__cart-list-none-cart-->

				</div>
			</div>

		</div>

	</div>

	<ul class="header__sort-list">
		<li class="header__sort-item"><a href="#"
			class="header__sort-link">Liên quan</a></li>
		<li class="header__sort-item"><a href="#"
			class="header__sort-link header__sort-link-active text-dark">Mới
				nhất</a></li>
		<li class="header__sort-item"><a href="#"
			class="header__sort-link">Bán chạy</a></li>
		<li class="header__sort-item"><a href="#"
			class="header__sort-link">Giá</a></li>
	</ul>
</header>
<div class="text-center" style="background: #ffd93a">
	<ul class="list-inline pb-3">
		<li class="list-inline-item"><a class="text-decoration-none fs14 mr-3 text-deco text-dark text-uppercase opacity05 px-3 py-2 font-weight-bold" href="#">Trang chủ</a></li>
		<li class="list-inline-item"><a class="text-decoration-none fs14 mr-3 text-deco text-dark text-uppercase opacity05 px-3 py-2 font-weight-bold" href="#">Sản phẩm</a></li>
		<li class="list-inline-item"><a class="text-decoration-none fs14 mr-3 text-deco text-dark text-uppercase opacity05 px-3 py-2 font-weight-bold" href="#">Giỏ hàng</a></li>
		<li class="list-inline-item"><a class="text-decoration-none fs14 mr-3 text-deco text-dark text-uppercase opacity05 px-3 py-2 font-weight-bold" href="#">Chi tiết</a></li>
	</ul>
</div>