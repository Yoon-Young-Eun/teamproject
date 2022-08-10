<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/banner.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/fileupload.js"></script>
</head>



<body>
<!-- <input type="file"> -->
<!-- <div class="filebox"> -->
<!-- <label for="ex_file">파일선택</label> -->
<!-- <input type="file" id="ex_file">  -->
<!-- </div> -->


<div class="popup_wrapper">
<div class="popup_head"><h1>배너 수정/삭제</h1>
<div class="popup_head_index">
등록된 배너를 수정하거나 삭제합니다
</div>
</div>
<div class="popup_title">
<input type="text" placeholder="제목">
</div>

<div class="popup_content">
<input type="text" placeholder="내용">
</div>

<div class="popup_upload">
<div class="filebox">
	<label for="ex_filename">파일 선택</label> 
	<input type="file" id="ex_filename" class="upload-hidden" name="upImgPath" accept="image/*" onchange="setThumbnail(event);"/> 
	<input class="upload-name" value="" disabled="disabled">
</div>
</div>
<div class="popup_thum">

<div id="image_container"></div>

</div>

<div class="popup_btn">
<div class="end">
	<a href="#">저장</a>&nbsp;&nbsp;&nbsp;<a href="#">수정</a>&nbsp;&nbsp;&nbsp;
	<a href="#">삭제</a>&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>
</div>

</div>




</body>
</html>