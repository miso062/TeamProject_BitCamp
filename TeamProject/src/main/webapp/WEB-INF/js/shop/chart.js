	var ctx = document.getElementById('shoeChart');
	  
	var config = {
		type: 'line',
		data: {
			labels: [ // Date Objects
				'data1',
				'data2',
				'data3',
				'data4',
				'data5',
				'data6',
				'data7'
			],
			datasets: [{
				label: '',
				backgroundColor: 'rgba(75, 192, 192, 1)',
				borderColor: 'rgba(75, 192, 192, 1)',
				fill: false,
				data: [
					Math.floor(Math.random() * 100000),
					Math.floor(Math.random() * 100000),
					Math.floor(Math.random() * 100000),
					Math.floor(Math.random() * 100000),
					Math.floor(Math.random() * 100000),
					Math.floor(Math.random() * 100000),
					Math.floor(Math.random() * 100000)
				],
			}]
		},
		options: {
			legend: {
                display: false
            },
			maintainAspectRatio: false,
			title: {
				text: 'Chart.js Time Scale'
			},
			tooltips: {
	            mode: 'index',
	            callbacks: {
	            	label: function(tooltipItem, data) {
	                    return tooltipItem.yLabel.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + "원"; 
	                }
	            }
	        },
			scales: {
				yAxes: [{
					position: 'right',
					scaleLabel: {
		                suggestedMin: 0,
		                suggestedMax: 10000000,
						display: true,
					}
				}]
			},
		}
	};
	 
	//차트 그리기
	var myChart = new Chart(ctx, config);
	  
	
	//데이터 추가
	document.getElementById('addData').onclick = function(){
		
		//라벨추가
		config.data.labels.push('data'+config.data.labels.length)
		
		//데이터셋 수 만큼 반복
		var dataset = config.data.datasets;
		for(var i=0; i<dataset.length; i++){
			//데이터셋의 데이터 추가
			dataset[i].data.push(Math.floor(Math.random() * 50));
		}
		myChart.update();	//차트 업데이트
	}
	
	//데이터 변경
	document.getElementById('reData').onclick = function(){
		
		//데이터셋 수 만큼 반복
		var dataset = config.data.datasets;
		for(var i=0; i<dataset.length; i++){
			console.log(dataset);
			//데이터 갯수 만큼 반복
			var data = dataset[i].data;
			for(var j=0 ; j < data.length ; j++){
				data[j] = Math.floor(Math.random() * 50);
			}
		}
		
		myChart.update();	//차트 업데이트
	}
	
	//데이터 삭제
	document.getElementById('delData').onclick = function(){
		
		config.data.labels.splice(-1,1);//라벨 삭제
		
		//데이터 삭제
		config.data.datasets.forEach(function(dataset) {
			dataset.data.pop();
		});
		
		myChart.update();	//차트 업데이트
	}