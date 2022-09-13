<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup</title>
<link href="/admin/css/popup.css" rel="stylesheet" />
</head>
<body>
	<div class="wrap">
		<div class="pop_btn">
			<div class="cont">정말로 탈퇴하시겠습니까?</div>
			<div class="end">
				<div class="board_btn">
					<a onclick="pop()">네</a>
				</div>
				<div class="board_btn">
					<a onclick="self.close();">아니요</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function pop(){
			window.opener.document.getElementById('insert').submit();
			self.close();
		}
	</script>
</body>
</html>