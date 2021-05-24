<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
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
							<b><span class="fs16" style="color: red;"><fmt:formatNumber
										type="number" pattern="#,###,###.##"
										value="${(dt.giaDT*(100-dt.giamGia))/100}" /> ₫</span></b>&nbsp; &nbsp;<span
								style="font-size: 15px;"><strike><i> <fmt:formatNumber
											type="number" pattern="#,###,###.##" value="${dt.giaDT}" />
										đ
								</i></strike></span>
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
								<input class="form-check-input" style="color: red" type="checkbox" value=""
									id="defaultCheck1"> <label class="form-check-label"
									for="defaultCheck1"> <b>&nbsp;Yêu cầu nhân viên kỹ thuật
									giao hàng:</b> hỗ trợ copy danh bạ.
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
					<div
						class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-center btn btn-warning ">
						<a href="# " style="color: white; text-decoration: none;"> <b>MUA
								TRẢ GÓP 0%</b>
						</a> <br> <span>Thủ tục đơn giản</span>
					</div>
					<div class="col-xs-12 col-sm-2 col-md-2 col-lg-2 text-left ">

					</div>
					<div
						class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-center btn btn-warning ">
						<a href="# " style="color: white; text-decoration: none;"> <b>TRẢ
								GÓP 0% QUA THẺ</b>
						</a> <br> <span>Visa, Master, JCB</span>
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

			<div class="col-xs-12 col-sm-12 col-md-12 col-lg-3 text-left pt-2 fs14">
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
						<div class="col-xs-12 col-sm-11 col-md-11 col-lg-11 text-left">
							<div class="PRODUCTS">
								<a class="" target="_blank" href="thanhtoan.html"> Xem
									iPhone 11 Pro 64GB cũ
									<div>
										<span>Giá dưới: <strong>27.610.000₫</strong></span> <span
											style="color: black;">Bảo hành tới 11.5 tháng</span>
									</div>
								</a>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>
	</div>
</div>
<!------------------------------------------------------------------------------------------------------------------------------------------------>

<div class="container border mt-2">
       <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 text-left mt-3">

            <div class="row">
                <h4 style=" color: rgba(0, 0, 0, 0.616)">Đặc điểm nổi bật của iPhone 11 Pro Max 64GB</h4>
            </div>
            
            <div class="row mt-2 border" >
                <div class="carousel slide" id="carouselExampleControl" data-ride="carousel" style="width: 100%;">
                    <ol class="carousel-indicators">
                        <li class="active" data-target="#carouselExampleControl" data-slide-to="0"></li>
                        <li data-target="#carouselExampleControl" data-slide-to="1"></li>
                        <li data-target="#carouselExampleControl" data-slide-to="2"></li>
                        <li data-target="#carouselExampleControl" data-slide-to="3"></li>
                        <li data-target="#carouselExampleControl" data-slide-to="4"></li>
                        <li data-target="#carouselExampleControl" data-slide-to="5"></li>

                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active"><img src="${resources}/user/images/11pr.png" alt="First"
                                class="d-block w-100"> </div>
                        <div class="carousel-item "><img src="${resources}/user/images/apple.png" alt="Second"
                                class="d-block w-100">
                        </div>
                        <div class="carousel-item "><img src="${resources}/user/images/galaxy1.png" alt="Third"
                                class="d-block w-100">
                        </div>
                        <div class="carousel-item "><img src="${resources}/user/images/iphone.png" alt="Fourth"
                                class="d-block w-100">
                        </div>
                        <div class="carousel-item "><img src="${resources}/user/images/samsung.png" alt="Fifth"
                                class="d-block w-100">
                        </div>
                        <div class="carousel-item "><img src="${resources}/user/images/apple.png" alt="Fifth"
                                class="d-block w-100">
                        </div>

                    </div>
                    <a href="#carouselExampleControl" class="carousel-control-prev" role="button"
                        data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true">

                        </span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a href="#carouselExampleControl" class="carousel-control-next" role="button"
                        data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true">

                        </span>
                        <span class="sr-only">Next</span>
                    </a>

                </div>
            </div>
            <div class="row mt-2  mt-4">
                <div class="container">
                    <h4><b>Trong năm 2019 thì chiếc <a href="#">smartphone</a> được nhiều người mong muốn sở hữu trên tay và sử dụng nhất không ai khác chính là <a href="chitetsanpham.html" style="text-decoration: none;">iPhone 11 Pro Max 64GB </a> tới từ nhà Apple.</b></h4>
                </div>
            </div>
            <div class="row mt-2  mt-4">
                <div class="container">
                    <h4><b>Camera được cải tiến mạnh mẽ</b></h4>
                </div>
            </div>
            <div class="row mt-2  mt-1">
                <div class="container">
                    <p>Chắc chắn lý do lớn nhất mà bạn muốn nâng cấp lên iPhone 11 Pro Max chính là cụm camera mới được Apple nâng cấp rất nhiều.</p>
                </div>
            </div>
        </div>
        
<!---------------------------------------------------------------------THÔNG SỐ KỸ THUẬT------------------------------------------------------------------->
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 text-left mt-3 fs14">
            <div class="row">
                <h4 style=" color: rgba(0, 0, 0, 0.616)">Thông số kỹ thuật</h4>
            </div>
            
            <div class="row border-top mt-2">
                    <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                        <label>Màn hình: </label>
                    </div>
                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                        <label>  <a href="javascript:void(0)" style="text-decoration: none;">OLED</a> , 6.5", <a href="javascript:void(0)" style="text-decoration: none;">Super Retina XDR</a></label>
                    </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>Hệ điều hành:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>  <a href="javascript:void(0)" style="text-decoration: none;">iOS 13</a> </label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>Camera sau:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>  	3 camera 12 MP</label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>Camera trước:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>12 MP</label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>CPU:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>  <a href="javascript:void(0)" style="text-decoration: none;">Apple A13 Bionic 6 nhân</a> </label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>RAM:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>4 GB</label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>Bộ nhớ trong:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>64 GB </label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>Thẻ SIM:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>  <a href="javascript:void(0)" style="text-decoration: none;">1 eSIM & 1 Nano SIM, Hỗ trợ 4G</a> </label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label></label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>  <button class="btn btn-danger" style="font-size: 50%;">HOT</button><a href="javascript:void(0)" style="text-decoration: none;"> &nbsp; SIM VNMB Sieu sim (5GB/ngày)</a> </label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 text-left mt-2">
                    <label>Dung lượng pin:</label>
                </div>
                <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 text-left mt-2">
                    <label>3969 mAh, có sạc nhanh </label>
                </div>
            </div>
            <div class="row border-top mt-2">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center mt-2 " id="xemThemCauHinhChiTiet" > <a href="javascript:void(0)"> <input type="button" class="btn btn-primary form-control" value="Xem thêm cấu hình chi tiết" name="" id="" data-target="#exampleModalLong_ChiTiet" data-toggle="modal"> </a>
                </div>
            </div>
            <div class="row  mt-5 ">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center mt-2" > 
                    <h4>Hướng dẫn về iPhone 11 Pro Max 64GB</h4>
                </div>
            </div>
            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p>iPhone SE 2020 và iPhone 11 Điều gì làm nên sự khác biệt?<br>
                        <i class='fas fa-comment-alt'></i> 69 bình luận
                    </p>
                    
                </div>
            </div>

            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p>Cách tải cài đặt bộ hình nền iPhone 11, iPhone 11 Pro mới nhất<br>
                        <i class='fas fa-comment-alt'></i> 222 bình luận
                    </p>
                    
                </div>
            </div>

            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p>Cách tìm lại tài khoản iCloud Apple ID đơn giản, nhanh chóng<br>
                        <i class='fas fa-comment-alt'></i> 52 bình luận
                    </p>
                    
                </div>
            </div>
            <div class="row mt-2 ">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center mt-2 " > 
                    <a href="#"><b>Xem thêm hướng dẫn</b></a>
                </div>
                
            </div>

            <div class="row  mt-5 ">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center mt-2" > 
                    <h4>Phụ kiện iPhone 11 Pro Max 64GB</h4>
                </div>
            </div>
            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p><b>Tai nghe EP Mozard DS509-WB Xám </b>                       <br>
                        <span style="color: red"><b>116.000₫ </b></span><span>&emsp;<strike>  299.000₫</strike></span>
                    </p>
                    
                </div>
            </div>
            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p><b>Adapter Sạc 1A AVA JC62</b> <br>
                        <span style="color: red"><b>99.000₫ </b></span><span>&emsp;<strike>  199.000₫</strike></span>
                    </p>
                    
                </div>
            </div>
            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p><b>Cáp Lightning 20 cm AVA Speed II Trắng
                    </b>                       <br>
                        <span style="color: red"><b>50.000₫  </b></span>
                    </p>
                    
                </div>
            </div>
            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p><b>Dây cáp Lightning 20 cm e.VALU LTL-02
                    </b>                       <br>
                        <span style="color: red"><b>70.000₫</b></span>
                    </p>
                    
                </div>
            </div>
            <div class="row border-top mt-2 ">
                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-center mt-2 " > 
                    <img src="${resources}/user/images/11pr.png" alt="" class="src" width="100%">
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 text-left mt-2 " > 
                    <p><b>Ốp lưng iPhone 11 Pro Max nhựa dẻo Luggage Nake Slim JM Nude
                    </b>                       <br>
                        <span style="color: red"><b>35.000₫ </b></span><span>&emsp;<strike>  70.000₫</strike></span><br>
                        <button class="btn btn-danger" style="height: 10%;">Giảm 50%</button>
                    </p>
                    
                </div>
            </div>
            <div class="row mt-2 ">
                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center mt-2 " > 
                    <a href="#"><b>Xem tất cả phụ kiện iPhone 11 Pro Max 64GB</b></a>
                </div>
                
            </div>
            
            
         
        </div>
       </div>
    </div>

<!--------------------------------------------------FOOOTER----------------------------------------------------------------->
<div class="container-fluid">
	<div class="row fs14">
		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12  text-left mt-2"
			style="background-color: rgba(255, 255, 255, 0.5);">
			<h4 for=" " style="">SẢN PHẨM LIÊN QUAN</h4>
		</div>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
			<div class="card text-center" style="">
				<a href="chitetsanpham.html"
					style="text-decoration: none; color: black;"> <img
					class="card-img-top"
					src="${resources}/user/images/11pr.png"
					alt="Card image" style="width: 50%">
					<div class="card-body">
						<h4 class="card-title">iPhone 11 Pro 64GB</h4>
						<p class="card-text">
							<span style="color: red;"> <b>30.490.000₫</b> &nbsp;<strike><i>33.990.000₫</i></strike></span><br>
							<span>Tặng 2 suất mua tai nghe cực xịn (không áp dụng thêm
								khuyến mãi khác) </span>
						</p>
					</div>
				</a>
			</div>

		</div>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
			<div class="card text-center" style="">
				<a href="chitetsanpham.html"
					style="text-decoration: none; color: black;"> <img
					class="card-img-top"
					src="${resources}/user/images/11pr.png"
					alt="Card image" style="width: 50%">
					<div class="card-body">
						<h4 class="card-title">iPhone Xs Max 256GB</h4>
						<p class="card-text">
							<span style="color: red;"> <b>8.810.000₫</b> &nbsp;<strike><i>9.500.000₫</i></strike></span><br>
							<span>Tặng 2 suất mua Đồng hồ thời trang giảm 40% (không
								áp dụng thêm khuyến mãi khác) </span>
						</p>
					</div>
				</a>
			</div>

		</div>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
			<div class="card text-center" style="">
				<a href="chitetsanpham.html"
					style="text-decoration: none; color: black;"> <img
					class="card-img-top"
					src="${resources}/user/images/11pr.png"
					alt="Card image" style="width: 50%">
					<div class="card-body">
						<h4 class="card-title">iPhone 11 64GB New</h4>
						<p class="card-text">
							<span style="color: red;"> <b>20.990.000₫</b> &nbsp;<strike><i>21.990.000₫</i></strike></span><br>
							<span>Giảm ngay 16% (5.6 triệu) (áp dụng đặt và nhận hàng
								từ 11 - 14/7) (đã trừ vào giá) * </span>
						</p>
					</div>
				</a>
			</div>

		</div>
		<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3 ">
			<div class="card text-center" style="">
				<a href="chitetsanpham.html"
					style="text-decoration: none; color: black;"> <img
					class="card-img-top"
					src="${resources}/user/images/11pr.png"
					alt="Card image" style="width: 50%">
					<div class="card-body">
						<h4 class="card-title">iPhone SE 128GB (2020)</h4>
						<p class="card-text">
							<span style="color: red;"> <b>8.810.000₫</b> &nbsp;<strike><i>9.500.000₫</i></strike></span><br>
							<span>Giảm ngay 500.000đ (đã trừ vào giá) Tặng 2 suất
								mua Đồng hồ thời trang giảm 40% </span>
						</p>
					</div>
				</a>
			</div>

		</div>
	</div>
</div>