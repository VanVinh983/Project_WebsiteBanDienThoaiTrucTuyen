function xoa(id) {

	if (confirm("Bạn có chắc chắn xóa không ?")) {

		$.ajax({
			url: `api/cates/${id}`,
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
// khi nhập vào ô tìm kiếm
$("#timKiemTenDanhMuc").on("keyup", function() {

	capNhatDuLieu(this.value);

});


// hàm thay đổi dữ liệu table
function renderDuLieu(data) {

	// xóa dữ liệu table đã có
	$("#tableBody").html("");

	// lặp qua dữ liệu
	$.each(data, (index, danhMuc) => {

		const { id, tenDanhMuc} = danhMuc;

		// tạo tr trong #tableBody
		$("<tr>").appendTo($("#tableBody"))
			// thêm td vào tr
			.append($("<td>").text(id))
			.append($("<td>").text(null))
			.append($("<td>").text(null))
			.append($("<td>").text(tenDanhMuc))
			.append($("<td>").html(` 
				&nbsp;
				<a href="showFormEdit?cateId=${id}"><i class="zmdi zmdi-border-color zmdi-hc-lg"></i> </a>	
				&emsp;&nbsp;																																	
				<a onClick="xoa(${id})" class="text-white"><i class="zmdi zmdi-delete zmdi-hc-lg"></i></a>																													
				`));
	});
}

// hàm tìm kiếm theo tên màu
function capNhatDuLieu(tenDanhMuc) {

	const url = `api/cates?tenDanhMuc=${tenDanhMuc}`;
	$.get(url, function(data, status) {

		if (status === 'success') {

			renderDuLieu(data);
		}
	})
}