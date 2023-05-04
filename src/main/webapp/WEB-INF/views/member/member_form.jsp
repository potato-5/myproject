<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 폼</title>

<script src="http://code.jquery.com/jquery-latest.js"></script>
<!-- 외부 자바스크립트 파일 불러오기 -->
<script src="./js/member.js"></script>

</head>
<body>
<form method="post" action="member_join_ok.do" onSubmit="return check()">
<table border=1 width=500 align=center>
	<caption>회원 가입</caption>
	<tr><td>아이디</td>
		<td><input type="text" autofocus="autofocus" id="id" name="id">
			<input type="button" value="ID중복검사"  onClick="id_check()">
			<div id="idcheck"></div>
		</td>
	</tr>
	<tr><td>비밀번호</td>
		<td><input type="password" id="pass" name="pass"></td>
	</tr>
	<tr><td>비밀번호 확인</td>
    		<td><input type="password" id="pass2" name="pass2"></td>
    	</tr>

	<tr><td>이름</td>
		<td><input type="text" id="name" name="name"></td>
	</tr>

	<tr><td>닉네임</td>
		<td><input type="text" id="nick" name="nick">
		    <input type="button" value="닉네임중복검사" onClick="nick_check()">
		    <div id="nickcheck"></div>
		</td>
	</tr>

	<tr><td>생년월일</td>
		<td><input type=text size=6 maxlength=6 id="idno1" name="idno1">-
			<input type=text size=7 maxlength=7 id="idno2" name="idno2">
			<input type=text size=7 maxlength=7 id="idno2" name="idno3">
		</td>
	</tr>

	<tr><td>휴대폰번호</td>
    		<td> 010 -
    		    <input type=text size=15 id="tel" name="tel" maxlength=8>
    		<!--<select id="tel" name="tel">
    				<option value="">번호선택</option>
    				<option value="010">010</option>
    				<option value="011">011</option>
    				<option value="016">016</option>
    				<option value="018">018</option>
    				<option value="019">019</option>
    			</select>
    			<input type=text size=4 id="tel2" name="tel2" maxlength=4>
    			<input type=text size=4 id="tel3" name="tel3" maxlength=4>-->
    		</td>
    	</tr>

	<tr><td>E-Mail</td>
		<td><input type=text size=10 id="email" name="email" value="" placeholder="이메일 입력">@
		    <input type=text size=15 id="domain" name="domain" placeholder="이메일을 선택하세요">
		    <select id="mailid">
		    	<option value="">직접입력</option>
		    	<option value="naver.com">네이버</option>
		    	<option value="daum.net">다음</option>
		    	<option value="nate.com">네이트</option>
		    	<option value="gmail.com">gmail</option>
		    </select>
		 </td>
	</tr>

	<tr><td>성별</td>
		<td>
			<input type=radio id="male" name="gender" value="남자">남자
			<input type=radio id="female" name="gender" value="여자">여자
			<input type=radio id="none" name="gender" value="선택안함">선택안함
		</td>
	</tr>

    <tr><td>선호하는 지역</td>
		   <td><input type="text" id="region" name="region"></td>
	</tr>

    <tr><td>MBTI</td>
		   <td><input type="text" id="MBTI" name="MBTI"></td>
	</tr>

	<tr><td>관심사</td>
		<td>
			<input type="checkbox" id="h1" name="hobby" value="액티비티" checked>액티비티
			<input type="checkbox" id="h2" name="hobby" value="게임">게임
			<input type="checkbox" id="h3" name="hobby" value="등산">등산
			<input type="checkbox" id="h4" name="hobby" value="맛집">맛집
			<input type="checkbox" id="h5" name="hobby" value="쇼핑">쇼핑
		</td>
	</tr>
	<tr><td>자기소개</td>
		<td>gi

			<textarea id="intro" name="intro" rows="5" cols="50" placeholder="자기소개를 100자 이내로 입력하세요"></textarea>
		</td>
	</tr>
	<tr><td colspan=2 align=center>
			<input type=submit value="회원가입" class="input_button"/>
			<input type=reset value="취소" class="input_button" onClick="$('#id').focus();">
		</td>
	</tr>
</table>
</form>
</body>
</html>