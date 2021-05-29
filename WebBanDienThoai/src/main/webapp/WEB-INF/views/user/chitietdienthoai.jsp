<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@taglib prefix='spring' uri='http://www.springframework.org/tags'%>
<c:url value="/resources" var="resources" />
<div class="container-fluid ">
	<div class="row ">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 mt-1 text-left ">
			<a href="${pageContext.request.contextPath}/dienthoai/danhsach"
				style="color: black; text-decoration: none;">
				<button class="btn btn-light border ">
					<b>Trang chủ</b>
				</button>
			</a> <span style="font-size: 18px;">-></span><a
				href="${pageContext.request.contextPath}/dienthoai/danhmuc"
				style="text-decoration: none;"><button
					class="btn btn-light border ">
					<b>Sản phẩm</b>
				</button> </a> <span style="font-size: 18px;">-></span><a href=""
				style="text-decoration: none;"><button
					class="btn btn-light border ">
					<b>${dt.tenDT}</b>
				</button> </a>
		</div>

	</div>
</div>
<!--------------------------------------------------CHI TIẾT SẢN PHẨM---------------------------------------------------------------->
<div class="container-fluid mt-1 border-bottom mb-2 pb-2">
	<div class="container-fluid ">
		<div class="row mt-3 " id="danhgiaiPhone ">
			<div class="col-xs-9 col-sm-9 col-md-9 col-lg-9 text-left pt-2 ">
				<h4 id="promax ">${dt.tenDT}${dt.thongSo.boNho}</h4>
			</div>
			<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 mt-1 text-right ">
				<button class="btn btn-primary btn-lg">
					<i class="fas fa-thumbs-up"></i>&nbsp; Like 814
				</button>
				&nbsp;&nbsp;
				<button class="btn btn-primary btn-lg">Share</button>
			</div>

		</div>
	</div>
</div>

<div class="container-fluid mt-3">
	<div class="container-fluid ">
		<div class="row ">
			<!------------------------------------------------------------------------------------------------------------------------------------------------>
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-5 text-left pt-2 ">
				<div class="row ">
					<div class="tab-content col-xs-12 col-sm-12 col-md-12 col-lg-12 "
						style="margin-top: 40px;">
						<div class="tab-pane active " id="anh1 "
							value="${resources}/user/images/SanPham/${dt.anhURL}">
							<img src="${resources}/user/images/SanPham/${dt.anhURL}"
								style="width: 100%" />
						</div>
						<div class="tab-pane " id="anh2 ">
							<img src="" style="width: 100%" />
						</div>
					</div>
					<span style="color: rgba(24, 22, 19, 0.384);" class="pt-2 mb-2 "><b>
							Xem hình thực tế sản phẩm</b></span>
				</div>
				<div class="row ">
					<div class=" col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
						<ul class="nav nav-tabs " id="anh ">
							<li class="active "><a data-target="#anh1 "
								data-toggle="tab "><img
									src="${resources}/user/images/SanPham/${dt.anhURL}"
									width="100px " /></a></li>
							<li><a data-target="#anh2 " data-toggle="tab "><img
									src="" width="100px " /></a></li>
						</ul>
					</div>

				</div>

			</div>

			<!------------------------------------------------------------------------------------------------------------------------------------------------>

			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 text-left fs14">
				<div class="row ">
					<div
						class="col-xs-12 col-sm-9 col-md-9 col-lg-9 text-left pt-2 text-center ">
						<h4>
							<c:if test="${dt.giamGia>0}">
								<b><span class="fs16" style="color: red;"><fmt:formatNumber
											type="number" pattern="#,###,###.##"
											value="${(dt.giaDT*(100-dt.giamGia))/100}" /> ₫</span></b>&nbsp; &nbsp;
								<span style="font-size: 15px;"><strike><i> <fmt:formatNumber
												type="number" pattern="#,###,###.##" value="${dt.giaDT}" />
											đ
									</i></strike></span>
							</c:if>
							<c:if test="${dt.giamGia<=0}">
								<b><span class="fs16" style="color: red;"><fmt:formatNumber
											type="number" pattern="#,###,###.##" value="${dt.giaDT}" />
										₫</span></b>
							</c:if>

						</h4>
						<span class="text-left ">Bạn đang xem phiên bản:
							${dt.thongSo.boNho}</span>
					</div>
					<div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 text-left mt-1 ">
						<input type="button"
							class="btn btn-danger btn-lg text-white font-weight-bold"
							value="Trả góp 0%" readonly><br>
					</div>

				</div>
				<div class="row mt-2 border">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left pt-3">
						<h6 class="text-left ">KHUYẾN MÃI</h6>
						<c:if test="${dt.giamGia>0}">
							<span><i class="far fa-check-circle text-left border "></i>
								&nbsp;Giảm ngay ${dt.giamGia}% (đã trừ vào giá) <label
								for="sao " id="sao " style="color: red;"><b>*</b></label></span>
							<br>
						</c:if>
						<span><i class="far fa-check-circle text-left"></i>
							&nbsp;Tặng 2 suất mua Đồng hồ thời trang giảm 40% &emsp; &ensp;
							&emsp; (không áp dụng thêm khuyến mãi khác) <a href="# ">(click
								xem chi tiết)</a></span>
						<form class="border border-danger mt-3">
							<button class="btn btn-danger border border-danger ">
								<i class="fa fa-gift " aria-hidden="true "></i> Mua online tặng
								thêm quà
							</button>
							<br> <span><i
								class="far fa-check-circle text-left border pt-3"></i>
								&nbsp;Giảm ngay 1.5 triệu (áp dụng đặt và nhận hàng <br>&emsp;
								&ensp;từ 15 - 25/7) (đã trừ vào giá) <label for="sao "
								id="sao " style="color: red;"><b>*</b></label></span><br>
						</form>
						<span style="color: red;"><label
							class="font-weight-bold mt-2" style="color: red;">*
								&nbsp;</label>Không áp dụng khi mua trả góp 0%</span>
					</div>
				</div>

				<div class="row mt-2 ">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left ">
						<button class="btn btn-warning pb-4" style="width: 100%">
							<div class="form-check ">
								<input class="form-check-input" style="color: red"
									type="checkbox" value="" id="defaultCheck1"> <label
									class="form-check-label" for="defaultCheck1"> <b>&nbsp;Yêu
										cầu nhân viên kỹ thuật giao hàng:</b> hỗ trợ copy danh bạ.
								</label>
							</div>
						</button>
					</div>
				</div>
				<div class="row mt-2 ">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center ">
						<a
							href="${pageContext.request.contextPath}/user/themvaogiohang/${dt.id}">
							<button class="btn btn-success form-control mt-2">
								<b>THÊM VÀO GIỎ HÀNG</b>
							</button>
						</a>
						<c:if test="${tenDangNhap==null}">
							<a
								href="${pageContext.request.contextPath }/user/showFormNguoiNhan"
								onclick="return confirm('Bạn phải đăng nhập mới đặt hàng được!');"><button
									style="width: 100%" type="button" class="btn btn-danger mt-3">
									<b>MUA NGAY</b>
								</button></a>
						</c:if>
						<c:if test="${tenDangNhap!=null}">
							<a
								href="${pageContext.request.contextPath }/user/showFormNguoiNhan">
								<button style="width: 100%" type="button" class="btn btn-danger">
									<b>MUA NGAY</b>
								</button>
							</a>
						</c:if>
					</div>
				</div>


				<div class="row mt-2 ">
					<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1 text-left ">

					</div>
					<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1 text-left ">

					</div>
				</div>
				<div class="row mt-2 ">

					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center ">
						<label>Gọi đặt mua: <a href="# " target="_blank ">1800.1060</a>
							(miễn phí - 7:30-22:00)
						</label>
					</div>

				</div>

			</div>
			<!------------------------------------------------------------------------------------------------------------------------------------------------>

			<div
				class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-left pt-2 fs14">
				<div class="row ">
					<div
						class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left text-center ">
						<a href="javascript:void(0) target="
							_blank" rel="noopener noreferrer"
							style="text-decoration: none; font-size: 15px;"><span
							class="material-icons pb-3"> edit_location </span> Kiểm tra có
							hàng tại nơi bạn không? </a>
					</div>

				</div>
				<div class="container border">
					<div class="row mt-2 ">
						<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1 text-left   ">

						</div>
						<div class="col-xs-12 col-sm-11 col-md-11 col-lg-11 text-left">
							<span><i class='fab fa-product-hunt btn-danger mt-2'></i>
								Bộ sản phẩm gồm:<a href="javascript:void(0)"
								style="text-decoration: none;"> Sạc, Tai nghe, Hộp, Cáp, Cây
									lấy sim, Sách hướng dẫn</a></span><br>
						</div>
					</div>
					<div class="row mt-2 ">
						<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1 text-left   ">

						</div>
						<div
							class="col-xs-12 col-sm-11 col-md-11 col-lg-11 text-left border-top">
							<span><i class="material-icons btn-danger border-top mt-2"
								style="font-size: 18px">error</i> Bảo hành chính hãng 12 tháng.</span><br>
						</div>
					</div>
					<div class="row mt-2">
						<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1 text-left   ">
						</div>
						<div
							class="col-xs-12 col-sm-11 col-md-11 col-lg-11 text-left border-top">
							<span><i
								class="fa fa-clock-o btn-danger btn-md border-top"></i><span
								style="padding-top: 12px">Lỗi là đổi mới trong 1 tháng
									tại hơn 2025 siêu thị toàn quốc Xem chi tiết</span><br>&nbsp;</span>
						</div>
					</div>
				</div>
				<div class="container border mt-2">
					<div class="row mt-2 pb-2">
						<div class="col-xs-12 col-sm-1 col-md-1 col-lg-1 text-left   ">

						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
</div>
<!------------------------------------------------------------------------------------------------------------------------------------------------>
<c:url var="manhinh" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thongSo.manHinh}" />
</c:url>
<c:url var="hedieuhanh" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thongSo.heDieuHanh}" />
</c:url>
<c:url var="camera" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thongSo.camera}" />
</c:url>
<c:url var="ram" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thongSo.ram}" />
</c:url>
<c:url var="bonho" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thongSo.boNho}" />
</c:url>
<c:url var="sim" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thongSo.sim}" />
</c:url>
<c:url var="pin" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thongSo.pin}" />
</c:url>
<c:url var="kichthuoc" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.kichThuoc}" />
</c:url>
<c:url var="trongluong" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.trongLuong}" />
</c:url>
<c:url var="baohanh" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.baoHanh}" />
</c:url>
<c:url var="thuonghieu" value="/dienthoai/search">
	<c:param name="searchName" value="${dt.thuongHieu.tenTH}" />
</c:url>
<div class="container border mt-2">
	<div class="row">

		<!---------------------------------------------------------------------THÔNG SỐ KỸ THUẬT------------------------------------------------------------------->
		<div
			class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-left mt-3 fs14">
			<div class="row">
				<h4 style="color: rgba(0, 0, 0, 0.616)">Thông số kỹ thuật</h4>
			</div>

			<div class="row border-top mt-2">
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
					<label>Màn hình</label>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
					<label><a href="${manhinh}"> ${dt.thongSo.manHinh}</a></label>
				</div>
			</div>
			<div class="row border-top mt-2">
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
					<label>Hệ điều hành</label>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
					<label> <a href="${hedieuhanh}"
						style="text-decoration: none;">${dt.thongSo.heDieuHanh}</a>
					</label>
				</div>
			</div>
			<div class="row border-top mt-2">
				<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
					<label>Camera</label>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
					<label><a href="${camera}" style="text-decoration: none;">${dt.thongSo.camera}</a></label>
				</div>
			</div>
			<div class="chitietcauhinh">
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2 ">
						<label>RAM</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label><a href="${ram}" style="text-decoration: none;">${dt.thongSo.ram}</a></label>
					</div>
				</div>
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
						<label>Bộ nhớ</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label> <a href="${bonho}" style="text-decoration: none;">${dt.thongSo.boNho}</a></label>
					</div>
				</div>
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
						<label>Thẻ SIM</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label> <a href="${sim }" style="text-decoration: none;">${dt.thongSo.sim}</a>
						</label>
					</div>
				</div>
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
						<label>Dung lượng pin</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label><a href="${pin }" style="text-decoration: none;">${dt.thongSo.pin}</a></label>
					</div>
				</div>
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
						<label>Kích thước</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label><a href="${kichthuoc }"
							style="text-decoration: none;">${dt.kichThuoc}</a></label>
					</div>
				</div>
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
						<label>Trọng lượng</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label><a href="${trongluong }"
							style="text-decoration: none;">${dt.trongLuong}</a></label>
					</div>
				</div>
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
						<label>Bảo hành</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label><a href="${baohanh }"
							style="text-decoration: none;">${dt.baoHanh}</a></label>
					</div>
				</div>
				<div class="row border-top mt-2">
					<div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
						<label>Thương hiệu</label>
					</div>
					<div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
						<label><a href="${thuonghieu }"
							style="text-decoration: none;">${dt.thuongHieu.tenTH}</a></label>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- -----------------------------------------------Binh Luan ----------------------------------------------------------- -->
<div class="container-fluid">
	<div class="row fs14 border mx-1 mt-4 rounded">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12  text-left">
			<h4>ĐÁNH GIÁ ĐIỆN THOẠI ${dt.tenDT}</h4>
			<div
				class="col-xs-12 col-sm-12 col-md-12 col-lg-12  text-left mt-2 border-bottom">
				<c:if test="${binhluans.size()>0}">
					<span>Có tất cả ${binhluans.size()} đánh giá</span>
				</c:if>
				<c:if test="${binhluans.size()<=0}">
					<span>Chưa có đánh giá nào</span>
				</c:if>
			</div>
			<div
				class="col-xs-12 col-sm-12 col-md-12 col-lg-12  text-left mt-2 border-bottom"
				style="height: auto; overflow: auto;">
				<form:form
					action="${pageContext.request.contextPath}/dienthoai/savebinhluan/${dt.id}"
					method="post" modelAttribute="binhluan">
					<form:textarea path="noiDung" cssClass="col-12"
						cssStyle="height:200px; border-radius: 10px;"
						placeholder='Mời bạn bình luận về điện thoại ${dt.tenDT}...' />
					<c:if test="${pageContext.request.userPrincipal.name==null}">
						<form:input path="tenBinhLuan"
							cssClass="col-lg-6 col-md-6 col-sm-12 col-xs-12 float-left"
							placeholder="Tên của bạn...." />
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name!=null}">
						<form:input path="tenBinhLuan"
							cssClass="col-lg-6 col-md-6 col-sm-12 col-xs-12 float-left"
							placeholder="Tên của bạn...."
							value="${pageContext.request.userPrincipal.name}" />
					</c:if>
					<form:input path="email"
						cssClass="col-lg-6 col-md-6 col-sm-12 col-xs-12 float-right"
						placeholder="Email của bạn....(không bắt buộc)" />
					<br>
					<br>
					<div class="col-12" style="display: inline;">
						<button type="submit"
							class="btn btn-success col-3 mt-2 mb-2 float-right">
							<b>GỬI</b>
						</button>
					</div>
				</form:form>
			</div>
			<c:forEach var="binhluan" items="${binhluans}">
				<div
					class="col-xs-12 col-sm-12 col-md-12 col-lg-12  text-left mt-2 border-bottom">
					<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 float-left">
						<img alt="avatar"
							src="https://cdn2.iconfinder.com/data/icons/gaming-and-beyond-part-2-1/80/User_gray-512.png"
							width="30px">
					</div>
					<div class="col-xs-10 col-sm-10 col-md-10 col-lg-10">
						<span class="float-left"><b>${binhluan.tenBinhLuan}</b></span> <br />
						<br /> <span>${binhluan.noiDung}</span> <br /> <span>${binhluan.ngay}</span>
					</div>
				</div>
			</c:forEach>

		</div>

	</div>
</div>

<!--------------------------------------------------FOOOTER----------------------------------------------------------------->
<div class="container-fluid">
	<div class="row fs14">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12  text-left mt-4"
			style="background-color: rgba(255, 255, 255, 0.5);">
			<h4 style="float: left;">SẢN PHẨM LIÊN QUAN</h4>
			<a class="btn btn-info float-right text-white"><span style="font-size: 15px;">Xem tất cả ></span></a>
		</div>
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12  text-left mt-2">
			<c:forEach items="${dtbythuonghieu}" var="dt" begin="0" end="3">
				<div class="col-3 home-product-item-wrapper float-left">
					<a class="home-product-item pb-3 text-deco"
						style="padding-top: 15px;"
						href="${pageContext.request.contextPath}/dienthoai/laychitiet/${dt.id}">
						<div class="home-product-item-img"
							style="background-image: url(${resources}/user/images/SanPham/${dt.anhURL}); width: 90%;"></div>
						<h4 class="home-product-item__name">${dt.tenDT}
							${dt.thongSo.boNho}</h4> <c:if test="${dt.giamGia>0}">
							<div class="home-product-item__price">
								<span class="home-product-item__price-old"><fmt:formatNumber
										type="number" pattern="#,###,###.##" value="${dt.giaDT}" /> đ</span>
								<span class="home-product-item__price-current"><fmt:formatNumber
										type="number" pattern="#,###,###.##"
										value="${(dt.giaDT*(100-dt.giamGia))/100}" /> đ </span>
							</div>
						</c:if> <c:if test="${dt.giamGia<=0}">
							<div class="home-product-item__price">
								<span class="home-product-item__price-current float-right"><fmt:formatNumber
										type="number" pattern="#,###,###.##" value="${dt.giaDT}" /> đ
								</span>
							</div>
						</c:if>
						<div class="home-product-item__origin">
							<span class="home-product-item__brand"> Whoo </span> <span
								class="home-product-item__name-o"> ${dt.thuongHieu.xuatXu }
							</span>
						</div>
						<div class="home-product-item__favorite">
							<i class="fas fa-check"></i> <span>Yêu thích</span>
						</div> <c:if test="${dt.giamGia>0}">
							<div class="home-product-item__sale-off">
								<span class="home-product-item__percent">${dt.giamGia}</span> <span
									class="home-product-item__label">GIẢM</span>
							</div>
						</c:if>
					</a> <a class="btn btn-success btn-block fs14"
						href="${pageContext.request.contextPath}/user/themvaogiohang/${dt.id}">
						Thêm vào giỏ hàng </a>
				</div>
			</c:forEach>
		</div>
	</div>
</div>