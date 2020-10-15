<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html><head></head>
    
 <body>
    <div style="width:100%; height:150px; background-color:;" id="header"></div>

    <div id="uiWrapper" style="width:100%; margin-top:10px; margin-bottom:10px; display:flex; justify-content:center;">
        <div style="width:500px; height:500px; float:left; margin-right:10px; text-align:center; border:1px solid black; border-radius:20px; background-color:#F8FAF0" id="loginUi">
   
    <div id="eleWrapper" style="width:100%; margin-top:15%;">
        <h2>로그인</h2>

        <div name="loginIdSection" style="width:100%; text-align:center; margin-bottom:50px;">
            <span>ID</span>&nbsp;
            <input type="text" style="width:80%; height:50px; margin-left:10px;">
        </div>

        <div name="loginPwSection" style="width:100%; text-align:center; margin-bottom:50px;">
            <span>PW</span>
            <input type="text" style="width:80%; height:50px; margin-left:10px;">
        </div>

        <input type="button" style="width:90%; height:50px; font-fammily:verdana; font-size:20px; background-color:#CCCCE3; color:white; font-weight:bold; border-radius:10px;" value="LogIn">
    </div>
</div>
    <div style="width:500px; float:left; margin-right:10px; text-align:center; border:1px solid black; border-radius:20px; background-color:#F8FAF0;" id="enrollUi">
   
    <div id="eleWrapperEnroll" style="width:100%; margin-top:5%;">
        <h2>회원가입</h2>

        <div name="enrollIdSection" style="width:100%; text-align:center; margin-bottom:10px;">
            <p>ID</p><input type="text" style="width:80%; height:30px; margin-left:10px;">
        </div>

        <div name="enrollPwSection" style="width:100%; text-align:center; margin-bottom:10px;">
            <p>PW</p>
            <input type="text" style="width:80%; height:30px; margin-left:10px;">
        </div>

        <div name="enrollPwConfirmSection" style="width:100%; text-align:center; margin-bottom:10px;">
            <p>PW Confirm</p>
            <input type="text" style="width:80%; height:30px; margin-left:10px;">
        </div><div name="enrollNameSection" style="width:100%; text-align:center; margin-bottom:10px;">
            <p>Name</p>
            <input type="text" style="width:80%; height:30px; margin-left:10px;">
        </div><div name="enrollRecommandSection" style="width:100%; text-align:center; margin-bottom:50px;">
            <p>* 추천인</p>
            <input type="text" style="width:80%; height:30px; margin-left:10px;">
        </div><input type="button" style="width:90%; height:50px; font-fammily:verdana; font-size:20px; margin-bottom:30px; background-color:#CCCCE3; color:white; font-weight:bold; border-radius:10px;" value="회원가입 요청">
    </div>
</div></div>

    <div style="width:100%; height:150px; background-color:;" id="footer"></div>
</body></html>