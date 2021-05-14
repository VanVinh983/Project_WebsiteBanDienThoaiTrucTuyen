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