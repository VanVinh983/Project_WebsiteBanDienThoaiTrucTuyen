function xemChiTiet(id) {

	const url = `api/products/${id}`;
	console.log('url: ', url);

	$.get(url, function(data, status) {

		const {trongLuong,kichThuoc, mauSac, anhURL,thuongHieu, thongSo} = data;

		if (status === 'success') {
			$("#xem-modal #anh").attr("src","/WebBanDienThoai/resources/admin/images/product/"+anhURL);	
			$("#xem-modal #manHinh").html(`<label>${thongSo.manHinh}</label>`);
			$("#xem-modal #heDieuHanh").html(`<label>${thongSo.heDieuHanh}</label>`);
			$("#xem-modal #camera").html(`<label>${thongSo.camera}</label>`);
			$("#xem-modal #ram").html(`<label>${thongSo.ram}</label>`);
			$("#xem-modal #boNho").html(`<label>${thongSo.boNho}</label>`);
			$("#xem-modal #sim").html(`<label>${thongSo.sim}</label>`);
			$("#xem-modal #pin").html(`<label>${thongSo.pin}</label>`);
			$("#xem-modal #trongLuong").html(`<label>${trongLuong}</label>`);
			$("#xem-modal #kichThuoc").html(`<label>${kichThuoc}</label>`);
			$("#xem-modal #mauSac").html(`<label>${mauSac}</label>`);
			$("#xem-modal #thuongHieu").html(`<label>${thuongHieu.tenTH}</label>`);
			$("#xem-modal #xuatXu").html(`<label>${thuongHieu.xuatXu}</label>`);
		}
	});
}


//themChiTietDienThoai
$('#btnThem').click(function() {

	const manHinh = $('#them-modal #manHinh').val();
	const heDieuHanh = $('#them-modal #heDieuHanh').val();
	const camera = $('#them-modal #camera').val();
	const ram = $('#them-modal #ram').val();
	const boNho = $('#them-modal #boNho').val();
	const sim = $('#them-modal #sim').val();
	const pin = $('#them-modal #pin').val();

	const url = "api/details";
	var person = {
          manHinh:manHinh,
          boNho:boNho,
          camera:camera,
          heDieuHanh:heDieuHanh,
          pin:pin,
          ram:ram,
          sim:sim
       };

	$.ajax({
		url: url,
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(person),
		success: function() {
			$('#them-modal').modal('hide');
			toastr.success('Thêm thành công')

		},
		error: function() {
			toastr.error('a')
			
		}
	});
	
});
$('#btnThem').click(function() {
	$.get(`api/details`, function(data, status) {
		var detail = data;
		const id=detail[detail.length-1].id;
		if (status === 'success') {
			$("#detail_id").val((id+1));
		}
	});
});

function sua(id) {

	const url = `api/details/${id}`;
	console.log('url: ', url);

	$.get(url, function(data, status) {

		const {id,manHinh, heDieuHanh,camera,ram ,boNho, sim, pin} = data;

		if (status === 'success') {
			$("#detail_id").val(id);
			$("#sua-modal #idSua").val(id);
			$("#sua-modal #manHinhSua").val(manHinh);
			$("#sua-modal #heDieuHanhSua").val(heDieuHanh);
			$("#sua-modal #cameraSua").val(camera);
			$("#sua-modal #ramSua").val(ram);
			$("#sua-modal #boNhoSua").val(boNho);
			$("#sua-modal #simSua").val(sim);
			$("#sua-modal #pinSua").val(pin);
		}
	});
}
$('#btnSua').click(function() {
	
	// lấy dữ liệu từ modal
	const id = $('#sua-modal #idSua').val();
	const manHinh = $('#sua-modal #manHinhSua').val();
	const heDieuHanh = $('#sua-modal #heDieuHanhSua').val();
	const camera = $('#sua-modal #cameraSua').val();
	const ram= $('#sua-modal #ramSua').val();
	const boNho = $('#sua-modal #boNhoSua').val();
	const sim= $('#sua-modal #simSua').val();
	const pin= $('#sua-modal #pinSua').val();
	
	const url = "api/details";

	//cập nhật dữ liệu
	$.ajax({
		url: url,
		type: 'PUT',
		data: JSON.stringify({id, manHinh,heDieuHanh,camera,ram,boNho,sim,pin}),
		contentType: 'application/json',
		success: function() {

			$('#sua-modal').modal('hide');
			toastr.success('Cập nhật thành công')

		},
		error: function() {
			toastr.error('a')
		},

	});
	
});

// nhập vào ô tìm kiếm
$("#timKiemTendienThoai").on("keyup", function() {
	capNhatDuLieu(this.value);

});



// hiển thị dữ liệu khi tìm
function renderDuLieu(data) {

	// xóa dữ liệu trong table
	$("#tableBody").html("");

	// lặp qua dữ liệu
	$.each(data, (index, dt) => {

		const { id, tenDT, giaDT,soLuongTon,giamGia } = dt;
		console.log(JSON.stringify(dt));

		// tạo tr trong table
		$("<tr>").appendTo($("#tableBody"))
			// thêm td vào tr
			.append($("<td>").text(id))
			.append($("<td>").text(tenDT))
			.append($("<td>").text(giaDT))
			.append($("<td>").text(soLuongTon))
			.append($("<td>").text(giamGia))
			.append($("<td>").html(` 
				<a onClick="xemChiTiet('${id}')" class="btn btn-success" data-toggle="modal" data-target="#xem-modal"> Xem </a>
				`))
			.append($("<td>").html(` 
				<a onClick="xoa(${product.id})" class="text-white"><button class="btn btn-danger">Xóa</button></a>																					
				<a href="showFormEdit?productId=${id}"><button class="btn btn-success">Sửa</button></a>		
				`))	;
			
	});
}
function xoa(id) {

	if (confirm("Bạn có chắc chắn xóa không ?")) {
		$.ajax({
			url: `api/products/${id}`,
			type: 'DELETE',
			contentType: 'application/json',
			success: function() {
				toastr.success('Xóa thành công')		
			},
			error: function() {
				toastr.error('Không xóa được, vì đã có sản phẩm dùng')
			},

		});

	}
}
//tìm kiếm theo tên điện thoại
function capNhatDuLieu(tenDT) {

	const url = `api/products?tenDT=${tenDT}`;
	$.get(url, function(data, status) {
		if (status === 'success') {
			renderDuLieu(data);
		}
	})
}