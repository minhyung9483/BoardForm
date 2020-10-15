<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0133)https://www.google.com/search?q=andblank&rlz=1C1CHBD_koKR880KR880&oq=anblank&aqs=chrome.1.69i57j0l7.9769j0j9&sourceid=chrome&ie=UTF-8 -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style>
        table {
          border-collapse: collapse;
          width: 96%;
          border:1px solid black; 
          margin-left:30px;
        }

        th, td {
          text-align: center;
          padding: 8px;
          border:1px solid gray;
        }
        
        tr:nth-child(even) {background-color: #f2f2f2;}</style>
</head>
    
 <body>
    <div style="width:100%; height:130px; text-align:center;" id="header">
    <br>
<h1>A boardform Club</h1></div>

    <div id="uiWrapper" style="width:100%; margin-top:10px; margin-bottom:10px; display:flex; justify-content:center;">
        
    <div style="width:98%; float:left; margin-right:10px; text-align:left; border:1px solid black; border-radius:20px; background-color:#F8FAF0;" id="memberListUi">
   
    <p style="margin-left:30px; font-family:verdana; font-size:20px; font-weight:bold;">1:1 문의게시판</p>
    <div id="menuWrapper" style="margin-left:30px;">
        <input type="button" style="width:80px; height:30px; background-color:#B791E3; color:white; border-radius:5px; font-weight:bold;" value="회원 목록">
        <input type="button" style="width:110px; height:30px; background-color:#B791E3; color:white; border-radius:5px; font-weight:bold;" value="1:1 문의게시판">
    </div>    
<div id="memberListUiWrapper" style="width:100%; margin-bottom:2%; text-align:center;"><div id="memberListSearchDiv" style="width:100%; margin-top:1%; margin-bottom:1%; text-align:left; padding-left:30px;">
        <select style="width:100px; height:30px;">
            <option value="id">작성자</option>
            <option value="name">제목</option>
            <option value="phone">전화번호</option>
        </select>
        <input type="text" id="searchWord" style="width:150px; height:25px;">
    <input type="button" id="btnSearch" style="width:80px; height:30px;" value="검색"></div>
    
    <table>
        <tbody><tr>
            <th style="width:50px; background-color:#CCCCE3;">No</th>
            <th style="width:550px; background-color:#CCCCE3;">제목</th>
            <th style="width:100px; background-color:#CCCCE3;">등록일</th>
            <th style="width:110px; background-color:#CCCCE3;">작성자</th>
            <th style="width:80px; background-color:#CCCCE3;">답변여부</th>
        </tr><tr style="border:1px solid black">
        <td style="width:150px;">1</td>
        <td style="width:150px;">문의글1</td>
        <td style="width:250px;">2020-09-26</td>
        <td style="width:100px;">토토로 하위 가입</td>
        <td style="width:250px;">답변완료</td>
    </tr>
    
    <tr style="border:1px solid black">
        <td style="width:150px;">2</td>
        <td style="width:150px;">문의글2</td>
        <td style="width:250px;">2020-09-26</td>
        <td style="width:100px;">토토로 하위 가입2</td>
        <td style="width:250px;"></td>
    </tr></tbody></table>  

        

        

        
</div>
</div></div>

    <div style="width:100%; height:150px; background-color:;" id="footer"></div>
</body></html>