<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>

<div class="content-wrapper">
	<div class="container-fluid">

		<div class="row mt-3">
			<div class="col-lg-8">
				<div class="card" style="background: transparent">
					<div class="card-body">
						<caption>
							<div class="card-title">
							<c:if test="${product.id != null}">
								Cập nhật sản phẩm
							</c:if>
							<c:if test="${product.id == null}">
								Thêm sản phẩm
							</c:if>	
							</div>
						</caption>
						<hr>
						<form:form
							action="${pageContext.request.contextPath}/admin/product/save"
							method="post" modelAttribute="product">
							<caption>
								<div class="form-group">
									<c:if test="${product.id != null}">
										<label>ID</label>
										<form:input path="id" cssClass="form-control" readonly="true"/>
									</c:if>
									<c:if test="${product.id == null}">
										<form:hidden path="id"/>
									</c:if>	
								</div>
							</caption>	
							<div class="form-group">
								<label>Tên sản phẩm</label>
								<form:input path="tenDT" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label>Danh mục</label>
								<div>
									<select class="form-control valid" name="cateId"
										aria-invalid="false">
										<c:forEach items="${cates}" var="cate">
											<c:choose>
													<c:when  test="${cate.id==id }">
														<option value="${cate.id}" selected>${cate.tenDanhMuc }</option>
													</c:when >
													<c:otherwise>
														<option value="${cate.id}">${cate.tenDanhMuc }</option>
													</c:otherwise>
											</c:choose>
										</c:forEach>
										
									</select>
								</div>
							</div>
							<%-- <div class="form-group">
								<label>Thương hiệu</label>
								<div>
	                   				 <select class="form-control valid" name="product-cate" aria-invalid="false">
	                   				 <c:forEach items="${cates}" var="cate">
	                       				 <option value="${cate.id}">${cate.tenDanhMuc }</option>
	                    			</c:forEach>
	                   				 </select>
	                  			</div>
							</div>
							<div class="form-group">
								<label>Thông số</label>
								<div>
	                   				 <select class="form-control valid" name="product-cate" aria-invalid="false">
	                   				 <c:forEach items="${cates}" var="cate">
	                       				 <option value="${cate.id}">${cate.tenDanhMuc }</option>
	                    			</c:forEach>
	                   				 </select>
	                  			</div>
							</div> --%>
							<div class="form-group">
								<label>Giá</label>
								<div class="input-group">
								<form:input path="giaDT" cssClass="form-control" />							
		              			  <button class="btn btn-light" type="button">VNĐ</button>
		               		 </div>
							</div>
							<div class="form-group">
								<label>Giảm giá (%)</label>
								<div class="input-group">
								<form:input path="giamGia" cssClass="form-control" />							
		              			  <button class="btn btn-light" type="button">%</button>
		               		 </div>
								
							</div>
							<div class="form-group">
								<label>Số lượng (Cái)</label>
								<div class="input-group">
								<form:input path="soLuongTon" cssClass="form-control" />							
		              			  <button class="btn btn-light" type="button">Cái</button>
		               		 </div>
							</div>
							<div class="form-group">
								<label>Thuế (%)</label>
							<div class="input-group">
								<form:input path="thue" cssClass="form-control" />							
		              			  <button class="btn btn-light" type="button">%</button>
		               		 </div>
							</div>
							<div class="form-group">
								<label>Trọng lượng (Gram)</label>
								<div class="input-group">
								<form:input path="trongLuong" cssClass="form-control" />							
		              			  <button class="btn btn-light" type="button">Gram</button>
		               		 </div>
							</div>
							<div class="form-group">
								<label>Kích thước (Inch)</label>
								<div class="input-group">
								<form:input path="kichThuoc" cssClass="form-control" />							
		              			  <button class="btn btn-light" type="button">Inch</button>
		               		 </div>
							</div>
							<div class="form-group">
								<label>Màu sắc</label>
								<form:input path="mauSac" cssClass="form-control" />
							</div>
							<div class="form-group">
								<label>Bảo hành (Tháng)</label>
								<form:input path="baoHanh" cssClass="form-control" />
							</div>
							<caption>
								<div class="form-group">
									<c:if test="${product.thongSo.id != null}">
										<label>Thông số</label> <br>
										<div class="input-group">	
										<a onClick="sua(${product.thongSo.id})" data-toggle="modal" data-target="#sua-modal"> 
										<button class="btn btn-light" type="button" >Sửa</button>
										</a>													
		              			 				 
		               					 </div>
									</c:if>
									<c:if test="${product.thongSo.id == null}">
										<label>Thông số</label> <br>
										<div class="input-group">														
		              			 				 <button class="btn btn-light" type="button" data-toggle="modal"
													data-target="#them-modal">Thêm</button>
		               					 </div>
									</c:if>	
								</div>
							</caption>					
										<div><input id="detail_id" type="hidden" name="detail_id"/></div>
							<div class="form-group">
								<label>Hình ảnh</label><br> 
								<input name="fileName" type="file" />
								<span id="result"></span>
							</div>							
							
							<div class="form-group">
								<button class="btn btn-danger">
									<a href="${pageContext.request.contextPath}/admin/product/list">Hủy</a>
								</button>
						<caption>
							<button type="submit" class="btn btn-success">
							<c:if test="${product.id != null}">
								Cập nhật
							</c:if>
							<c:if test="${product.id == null}">
								Thêm
							</c:if>	
							</button>
						</caption>
							</div>
						</form:form>

					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Modal thêm -->
	<div class="modal fade " id="them-modal" style="display: none; "
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<div class="scroll">
					<h4 class="text-center text-danger">
						Thông số kỹ thuật chi tiết
					</h4>
					
					<ul class="parameterfull">
					
						<li>
							<div><input type="hidden" id="id"/> </div>
						</li>					
						<li><span>Màn hình</span>
							<div><input id="manHinh" type="text" Class="form" /></div>
						</li>
						
						<li><span>Hệ điều hành</span>
							<div>
								<input id="heDieuHanh" type="text" Class="form"/> 
							</div>
						</li>
						<li><span>Độ phân giải Camera</span>
							<div>
								<select class="form" id="camera" >
									<option style="background-color: white;"selected>select</option>
									<option style="background-color: white;"value="12MP" >12MP</option>
									<option style="background-color: white;"value="16MP" >16MP</option>	
									<option style="background-color: white;"value="24MP" >24MP</option>	
									<option style="background-color: white;"value="36MP" >36MP</option>	
									<option style="background-color: white;"value="48MB" >48MB</option>		
								</select>
							</div>
						</li>
						<li><span>Ram</span>
							<div>
								<select class="form" id="ram">
									<option style="background-color: white;" value="4GB" selected>4GB</option>
									<option style="background-color: white;" value="8GB" >8GB</option>	
									<option style="background-color: white;" value="12GB" >12GB</option>	
									<option style="background-color: white;"value="16GB" >16GB</option>	
								</select>
							</div>
						</li>
						<li><span>Bộ nhớ trong</span>
							<div>
								<select class="form" id="boNho" >
									<option style="background-color: white;" value="16GB" selected>16GB</option>
									<option style="background-color: white;"value="32GB" >32GB</option>	
									<option style="background-color: white;"value="64GB" >64GB</option>	
									<option style="background-color: white;"value="128GB" >128GB</option>	
									<option style="background-color: white;"value="256GB" >256GB</option>	
									<option style="background-color: white;"value="512GB" >512GB</option>	
								</select>
							</div>
						</li>
						<li><span>Sim</span>
							<div>
								<input id="sim" type="text" Class="form"></input>
							</div>
						</li>
						<li><span>Pin</span>
							<div>
								<input id="pin" type="text" Class="form"></input>
							</div>
						</li>				
					</ul>

					<button type="button" class="btn btn-danger" data-dismiss="modal">Đóng</button>
					<button type="button" class="btn btn-success" id="btnThem">Thêm</button>

				</div>
			</div>

		</div>
	</div>
</div>

	<!-- End modal thêm -->
	
	<!-- Modal sửa -->
	<div class="modal fade " id="sua-modal" style="display: none; "
	aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<div class="scroll">
					<h4 class="text-center text-danger">
						Thông số kỹ thuật chi tiết
					</h4>
					
					<ul class="parameterfull">
					<li><span>ID</span>
							<div><input id="idSua" type="text" Class="form" readonly="readonly"/></div>
						</li>
					
						<li><span>Màn hình</span>
							<div><input id="manHinhSua" type="text" Class="form" /></div>
						</li>
						
						<li><span>Hệ điều hành</span>
							<div>
								<input id="heDieuHanhSua" type="text" Class="form"/> 
							</div>
						</li>
						<li><span>Độ phân giải Camera</span>
							<div>
							<input id="cameraSua" type="text" Class="form"/> 
							</div>
						</li>
						<li><span>Ram</span>
							<div>
								<input id="ramSua" type="text" Class="form"/> 
							</div>
						</li>
						<li><span>Bộ nhớ trong</span>
							<div>
								<input id="boNhoSua" type="text" Class="form"/> 
							</div>
						</li>
						<li><span>Sim</span>
							<div>
								<input id="simSua" type="text" Class="form"></input>
							</div>
						</li>
						<li><span>Pin</span>
							<div>
								<input id="pinSua" type="text" Class="form"></input>
							</div>
						</li>			
					</ul>
					<button type="button" class="btn btn-danger" data-dismiss="modal" style="float: right;">Đóng</button>
					<button type="button" class="btn btn-success" id="btnSua" style="float: right;">Cập nhập</button>
				</div>
			</div>

		</div>
	</div>
</div>
<c:url value="/resources" var="resources"></c:url>
<script src="${resources}/admin/js/jquery.min.js"></script>
<script type="text/javascript" src="${resources}/admin/js/product/product.js"></script>