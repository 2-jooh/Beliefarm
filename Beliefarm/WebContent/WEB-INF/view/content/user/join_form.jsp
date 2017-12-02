<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Beliefarm</title>
</head>

<style type="text/css">
.error{
	font-size:8px;
	color : red;
}

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>

var pwdChk = false; //비밀번호 값 검사 체크값
var pwdCheckChk = false; //비밀번호확인 검사 체크값 

$(document).ready(function(){
	/////////////////////입력 중에 값 검사//////////////////////
	/* 이름 : 필수값
	   이메일 : 필수값 
	   비밀번호 : 필수값 & 길이검사 & 비밀번호확인 일치 검사 
	   핸드폰번호 : 선택값 (빈 값 가능), 숫자값만 오게 */
	//이름 비었는지 체크 
	 $("#userName").blur(function(){
		 if($("#userName").val()==""){
			$("#nameMsg").empty();
			$("#nameMsg").append("이름을 입력하세요.");
			$("#nameMsg").show();
		 }else{
			 $("#nameMsg").hide();
		 }
	 });	
	//이메일 비었는지 체크 
	 $("#userEmail").blur(function(){
		 if($("#userEmail").val()==""){
			$("#emailMsg").empty();
			$("#emailMsg").append("이메일을 입력하세요.");
			$("#emailMsg").show();
		 }else{
			 $("#emailMsg").hide();
		 }
	 });
	//비밀번호 값 검사 
	$("#userPwd").blur(function(){
		if($("#userPwd").val().length<8 || $("#userPwd").val().length>12){
			$("#pwdMsg").empty();
			$("#pwdMsg").append("8-12자의 영문대소문자, 숫자, 특수문자만 가능.");
			$("#pwdMsg").show();
		}else{
			$("#pwdMsg").hide();
			pwdChk = true;
		}
	});	
	//비밀번호확인 검사 
	$("#userPwdCheck").blur(function(){
		if($("#userPwd").val() != $("#userPwdCheck").val()){
			$("#pwdChkMsg").empty();
			$("#pwdChkMsg").append("비밀번호를 다시 확인해주세요."); 
			$("#pwdChkMsg").show();		
		}else{
			$("#pwdChkMsg").hide();
			pwdCheckChk = true;
		}
	});	
	//핸드폰번호 숫자만 받게
	 $("#userPhone").keyup(function(event){
        if (!(event.keyCode >=37 && event.keyCode<=40)) {
            var inputVal = $(this).val();
            $(this).val(inputVal.replace(/[^0-9]/gi,''));
        }
    });	
	/////////////////////입력 중에 값 검사 끝//////////////////////
});//ready function 끝


function formChk(){
	///////////////////가입 버튼 누르면 값 유효성 검사///////////////////
	if($("#userName").val()==""){
		$("#nameMsg").empty();
		$("#nameMsg").append("이름을 입력하세요.");
		$("#nameMsg").show();
		$("#userName").focus();
		result = false;		
	}else if($("#userEmail").val()==""){
		$("#emailMsg").empty();
		$("#emailMsg").append("이메일을 입력하세요.");
		$("#emailMsg").show();
		$("#userEmail").focus();
		result = false;
	}else if(pwdChk==false){
		$("#pwdMsg").empty();
		$("#pwdMsg").append("8-12자의 영문대소문자, 숫자, 특수문자만 가능.");
		$("#pwdMsg").show();
		$("#memberPwd").focus();
		result = false;		
	}else if(pwdCheckChk==false){
		$("#pwdMsg").empty();
		$("#pwdChkMsg").empty();
		$("#pwdChkMsg").append("비밀번호를 다시 확인해주세요.");
		$("#pwdChkMsg").show();
		$("#memberPwd").focus();
		result = false;		
	}else{
		result = true;
	}
	return result;
	///////////////////가입 버튼 누르면 값 유효성 검사 끝///////////////////
}//formChk 함수 끝 

function formSubmit(){
	alert(formChk());
    if(formChk()){ // formChk 값이 true일경우만 submit
   	 	$("#join").submit();
    }
}

</script>



<body>

<h3>회원가입</h3>

		
<div id="join_form">	
<form name="join" id="join" action="/Beliefarm/user/join.do" method="post">

	<table>		
	
		<tr>
			<td><input placeholder="이름" type="text" id="userName" name="name" value="${param.memberName }"></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td class="error">
				<div id="nameMsg" style="display:none"></div>
			</td>
			<td></td>
		</tr>
		
		

		<tr>
			<td><input placeholder="이메일" type="text" id="userEmail" name="email" value="${param.memberEmail }"></td>
		</tr>
		<tr>
			<td></td>
			<td class="error">
				<div id="emailMsg" style="display:none"></div>
			</td>
			<td></td>
		</tr>
		
		
		
		<tr>
			<td><input placeholder="패스워드" type="password" id="userPwd" name="password" value="${param['user.userPwd'] }"></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td class="error">
				<div id="pwdMsg" style="display:none"></div> 
			</td>
			<td></td>
		</tr>
	
	
				
		<tr>
			<td><input placeholder="패스워드 확인" type="password" id="userPwdCheck"></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td class="error">
				<div id="pwdChkMsg" style="display:none"></div>
			</td>
			<td></td>
		</tr>

	
		<tr>
			<td><input placeholder="휴대전화 번호" type="text" id="userPhone" name="phone" value="${param.phone }" maxlength="13"></td>
			<td></td>
		</tr>				

		
		<tr>
			<td>
				<input type="button" value="가입" onClick="formSubmit(); return false;"/>
			</td>
			<td></td>
		</tr>		
		
	</table>

</form>
</div>

</body>
</html>