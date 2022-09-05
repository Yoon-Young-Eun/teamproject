//체크박스
$(function(){
	$("[type=checkbox][name=check]").on("change", function(){ //0
		var check = $(this).prop("checked"); //1
		//전체 체크
		if($(this).hasClass("allcheck")){ //2
			$("[type=checkbox][name=check]").prop("checked", check);

			//단일 체크
		}else{ //3
			var all = $("[type=checkbox][name=check].allcheck");
			var allcheck = all.prop("checked")
			if(check != allcheck){ //3-1
				var len = $("[type=checkbox][name=check]").not(".allcheck").length; //3-2
				var ckLen = $("[type=checkbox][name=check]:checked").not(".allcheck").length; //3-2
				if(len === ckLen){ //3-3
					all.prop("checked", true);
				}else{
					all.prop("checked", false);
				}
			}
		}
	});
});﻿
