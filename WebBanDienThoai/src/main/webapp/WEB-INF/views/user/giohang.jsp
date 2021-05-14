<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:url value="/resources/user/images" var="img" />
	<br>
	<div class="container" style="50%">
		<table class="table table-hover table-condensed">
			<tbody>
				<c:forEach var="ds" items="${dsctgh}">
					<tr>
						<td>
							<div class="row ">
								<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3 ">
									<img src="${img}/11pr.png" alt="" class="" style="width: 100%">
									<div style="text-align: center; margin-top: 10%">
										<button class="btn btn-danger btn-sm">
											<i class="fa fa-trash"></i>
										</button>
									</div>
								</div>
								<div class="col-xs-1 col-sm-1 col-md-1 col-lg-1 t"></div>
								<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8 mt-2">
									<h4>${ds.tenDT}</h4>
									<div>Màu : ${ds.mauSac}</div>
								</div>
							</div>
						</td>
						<td>
							<div style="text-align: center;">
								<fmt:formatNumber type="number" pattern="#,###,###.## ₫"
									value="${ds.giaDT}" />
							</div>
							<div>
								<input class="form-control text-center" value="1" type="number">
							</div>
						</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td style="text-align: left;"><a href="index_1.html">
							<button type="button" class="btn btn-success">
								<i class="fa fa-angle-left"></i> Tiếp tục mua hàng
							</button>
					</a></td>
					<td>
						<button type="button" class="btn btn-success">
							<a href="#" style="text-decoration: none; color: white;">Thanh
								toán</a></i>
						</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>