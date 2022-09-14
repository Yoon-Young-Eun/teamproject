

//bar 차트
  $(document).ready(function(){
  	getGraph();
  	console.log("getGraph");
  });

  function getGraph(){  
	  console.log("getGraph");
	 let store =[]
	 let price=[]
	 let color=["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850", "yellow", "silver"]
	 
  	$.ajax({
  		url :"/getBarChart.mdo",
  		type :"get",
  		data : $("#barChart").serialize(),
  		dataType:"json",
  		success:function(data){
  			console.log("success"+data);
  			
  			for(let i=0; i < data.length; i++){
  				store.push(data[i].order_store_name);
  				price.push(data[i].order_price);
  			}
  			console.log(store);
  			console.log(price);  		
  		

  new Chart(document.getElementById("bar-chart"), {

      type: 'bar',
      data: {
        labels: store, // x축
        datasets: [{
        	label: "StorebarChart",
        	backgroundColor: color,
        	data: price //y축
          }
        ]
      },
      options: {
    	  legend : {display : false},
          title: {
          display: true,
          text: '세모 직영별 매출 현황'
        }
      }
  }); //그래프
  
  	}, error:function(){
  		alert("실패");
  	}
  	
  	});//ajax
  } //get그래프



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
