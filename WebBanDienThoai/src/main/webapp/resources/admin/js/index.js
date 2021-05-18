$(function() {
    "use strict";
		
    // chart 2

		var ctx = document.getElementById("chart2").getContext('2d');
		const url = `api/products`;
		$.get(url, function(data, status) {
		
			if (status === 'success') {
			$("#top1").html(`<span>${data[0].tenDT+data[0].thongSo.boNho}</span>`);
			$("#top2").html(`<span>${data[1].tenDT+data[1].thongSo.boNho}</span>`);
			$("#top3").html(`<spand>${data[2].tenDT+data[2].thongSo.boNho}</span>`);
			$("#top4").html(`<tspand>${data[3].tenDT+data[3].thongSo.boNho}</span>`);
			
			var gia1=new Intl.NumberFormat('vn-VN', { maximumSignificantDigits: 3 }).format(data[0].giaDT);
			var gia2=new Intl.NumberFormat('vn-VN', { maximumSignificantDigits: 3 }).format(data[1].giaDT);
			var gia3=new Intl.NumberFormat('vn-VN', { maximumSignificantDigits: 3 }).format(data[2].giaDT);
			var gia4=new Intl.NumberFormat('vn-VN', { maximumSignificantDigits: 3 }).format(data[3].giaDT);
			$("#gia1").html(`<span>${gia1}</span>`);
			$("#gia2").html(`<span>${gia2}</span>`);
			$("#gia3").html(`<span>${gia3}</span>`);
			$("#gia4").html(`<span>${gia4}</span>`);
			
			}
						
			var myChart = new Chart(ctx, {
				type: 'doughnut',
				data: {
					labels: [data[0].tenDT+data[0].thongSo.boNho,data[1].tenDT+data[1].thongSo.boNho,data[2].tenDT+data[2].thongSo.boNho,data[3].tenDT+data[3].thongSo.boNho],
					datasets: [{
						backgroundColor: [
							"#ffffff",
							"rgba(255, 255, 255, 0.70)",
							"rgba(255, 255, 255, 0.50)",
							"rgba(255, 255, 255, 0.20)"
						],
						data: [data[0].soLuongTon,12,12,12],
						borderWidth: [0, 0, 0, 0]
					}]
				},
			options: {
				maintainAspectRatio: false,
			   legend: {
				 position :"bottom",	
				 display: false,
				    labels: {
					  fontColor: '#ddd',  
					  boxWidth:15
				   }
				}
				,
				tooltips: {
				  displayColors:false
				}
			   }
			   });
			});
   });	 
   