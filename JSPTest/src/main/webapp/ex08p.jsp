<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK" />
	<script src="https://kit.fontawesome.com/3d6aabb553.js"></script>
	<style>
		
	</style>
</head>
<body>

	<h1>버튼 만들기</h1>
	
	<form method="POST" action="ex08pok.jsp">
		<table id="tbl1" class="vertical">
			<tr> 
				<th>너비(px)</th>
				<td><input type="text" name="width" value="100"></td>
			</tr>
			<tr> 
				<th>높이(px)</th>
				<td><input type="text" name="height" value="100"></td>
			</tr>
			<tr> 
				<th>텍스트</th>
				<td><input type="text" name="txt" value="button"></td>
			</tr>
			<tr> 
				<th>배경색</th>
				<td><input type="color" name="bgColor" value="#FFFFFF"></td>
			</tr>
			<tr> 
				<th>글자색</th>
				<td><input type="color" name="fontColor" value="#000000"></td>
			</tr>
			<tr> 
				<th>글자 크기(px)</th>
				<td><input type="number" name="fontSize" value="16" min="8" max="36"></td>
			</tr>
			<tr> 
				<th>버튼 개수(ea)</th>
				<td><input type="number" name="buttonNum" value="1" min="1" max="10"></td>
			</tr>
			<tr> 
				<th>버튼 간격</th>
				<td>좌우 간격: <input type="range" name="margin1" value="1" min="1" max="20"><br>
				상하 간격:<input type="range" name="margin2" value="1" min="1" max="20"></td>
			</tr>
			<tr> 
				<th>아이콘</th>
				<td>
				<input type="radio" name="icon" checked value="none"> 없음
				<input type="radio" name="icon" value="fa-solid fa-house"> <i class="fa-solid fa-house"></i>&nbsp;&nbsp;
				<input type="radio" name="icon" value="fa-solid fa-image"> <i class="fa-solid fa-image"></i>&nbsp;&nbsp;
				<input type="radio" name="icon" value="fa-solid fa-location-dot"> <i class="fa-solid fa-location-dot"></i>&nbsp;&nbsp;
				<input type="radio" name="icon" value="fa-brands fa-github"> <i class="fa-brands fa-github"></i>&nbsp;&nbsp;
				<input type="radio" name="icon" value="fa-solid fa-paperclip"> <i class="fa-solid fa-paperclip"></i>
				</td>
			</tr>
			<tr>
				<th>테두리</th>
				<td>
					<div>
						<select name="sel1" id="sel1">
							<option value="n">감추기</option>
							<option value="y">보이기</option>
						</select>
					</div>
					<div id="div1" style="display:none">
						두께(px): <input type="number" name="borderWidth" value="1"><br>
						색상: <input type="color" name="borderColor"><br>
						스타일: <select name="borderStyle">
							<option value="solid">실선</option>
							<option value="dashed">쇄선</option>
							<option value="dotted">점선</option>
							</select><br>
						모서리(px): <input type="number" name="radius" value="0">
					</div>
				</td>
			</tr>
		</table>
		<input type="submit" value="만들기">
	</form>
	
	<script src="https://code.jquery.com/jquery-4.0.0.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
		$('#sel1').on('change', () => {
			if($('#sel1').val() == 'y'){
				$('#div1').show();
			} else {
				$('#div1').hide();
			}
		});
	
	</script>
</body>
</html>










