document.getElementById("bizFile").addEventListener("change", function () {
	var filename = document.getElementById("fileName");
	if (this.files[0] == undefined) {
		filename.innerText = "선택된 파일없음";
		return;
	}
	var size = this.files[0].size;
	if (size > 1024 * 1024 * 5) {
		alert("첨부 파일은 5M를 초과 할 수 없습니다.");
		return false;
	}
	filename.innerText = this.files[0].name;
});

