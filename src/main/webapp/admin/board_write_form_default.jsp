<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/banner_new_form.css" rel="stylesheet" />
<script src="js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="js/fileupload.js"></script>
</head>
<body>
<div class="wrapper">
<div class="write_wrapper">
<div class="write_form">
<div class="write_title">
<h1>배너 등록</h1>
</div>
<div class="write_head">
<div class="write_title_default">제목</div>
<div class="write_content_default"><input type="text" class="write_input"></div>
</div>
<div class="write_content">
<div class="write_title_default">내용</div>
<div class="write_content_default">
<textarea class="write_textarea"></textarea>
</div>
</div>
<div class="write_body">

<div class="filebox">
	<label for="ex_filename">파일 선택</label> 
	<input type="file" id="ex_filename" class="upload-hidden" name="upImgPath" accept="image/*" onchange="setThumbnail(event);"/> 
	<input class="upload-name" value="" disabled="disabled">
</div>

<div id="image_container"></div>

</div>
<div class="write_end">
<div class="write_title_default">태그</div>
<div class="write_content_default"><input type="text" class="write_input"></div>
</div>
<div class="write_btn">

<div class="end">
	<a href="#">저장</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">취소</a>
</div>


</div>
</div>
</div>
</div>
</body>
</html>