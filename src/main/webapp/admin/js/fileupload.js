$(document).ready(function(){
	  var fileTarget = $('.filebox .upload-hidden');

	  fileTarget.on('change', function(){  // 값이 변경되면
	    if(window.FileReader){  // modern browser
	      var filename = $(this)[0].files[0].name;
	    } 
	    else {  // old IE
	      var filename = $(this).val().split('/').pop().split('\\').pop();
	    }
	    
	    // 추출한 파일명 삽입
	    $(this).siblings('.upload-name').val(filename);
	  });
	}); 


	
	
function setThumbnail(event){
		var reader = new FileReader();
		
		reader.onload = function(event){
			var img = document.createElement("img");
			img.setAttribute("src", event.target.result);
			img.setAttribute("height", '100%');
			console.log(document.querySelector("div#image_container").childNodes.length);
			if(document.querySelector("div#image_container").childNodes.length!=0){
			removeAllchild(document.querySelector("div#image_container"));
			}
			document.querySelector("div#image_container").appendChild(img).setAttribute('width','100%');
		};
		reader.readAsDataURL(event.target.files[0]);
	}
	
	function removeAllchild(div) {
    while (div.hasChildNodes()) {
        div.removeChild(div.firstChild);
    }
}





function setThumbnail2(event2){
		var reader2 = new FileReader();
		
		reader2.onload = function(event2){
			var img2 = document.createElement("img");
			img2.setAttribute("src", event2.target.result);
			img2.setAttribute("height", '100%');
			console.log(document.querySelector("div#image_container2").childNodes.length);
			if(document.querySelector("div#image_container2").childNodes.length!=0){
			removeAllchild(document.querySelector("div#image_container2"));
			}
			document.querySelector("div#image_container2").appendChild(img2).setAttribute('width','100%');
		};
		reader2.readAsDataURL(event2.target.files[0]);
	}
	
	function removeAllchild(div) {
    while (div.hasChildNodes()) {
        div.removeChild(div.firstChild);
    }
}
