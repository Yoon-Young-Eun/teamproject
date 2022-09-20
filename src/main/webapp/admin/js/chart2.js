




//도넛 주석(구글차트)
     function drawChart() {
   		let category =[['Task', 'Hours per Day']]
   		$.ajax({

   			url : "/getDoughnutChart.mdo",
   			type : "get",
   			data : $("#doughnutChart").serialize(),
   			dataType : "json",
   			success:function(data){
   				console.log("success"+data);

   				for(let i=0; i < data.length; i++){
   				let num= Number(data[i].order_mt_price);
   				category.push([data[i].order_mt_category1,num]);
   			} 
   			console.log(category);  
   	  
       var data= google.visualization.arrayToDataTable(category);
   	
       var options = {
         title: 'My Daily Activities',
         pieHole: 0.4,
       };

       var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
       chart.draw(data, options);
       
       
   			}  
     });
     }
