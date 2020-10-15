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
<div id="docMenuWrapper" style="margin-right:7%; margin-top:1%; text-align:right;">
        <input type="button" style="width:80px; height:30px;border-radius:5px; font-weight:bold;" value="목록">
        <input type="button" style="width:80px; height:30px;border-radius:5px; font-weight:bold;" value="수정">
    <input type="button" style="width:80px; height:30px;border-radius:5px; font-weight:bold;" value="삭제"></div><div id="qnaBoardUiWrapper" style="width:100%; margin-top:1%; margin-bottom:2%; text-align:center;">
    <div id="docDetail" style="width:96%; margin-left:30px;">
    <table>
        <tbody><tr>
            <td style="width:350px; height:25px; background-color:#D8C6E4; font-weight:bold;">제목</td>
            <td>문의글1</td>
        </tr>
    <tr>
            <td style="width:350px; height:25px; background-color:#D8C6E4; font-weight:bold;">작성자</td>
            <td>토토로</td>
        </tr><tr>
            <td style="width:350px; height:25px; background-color:#D8C6E4; font-weight:bold;">작성일</td>
            <td>2020-09-26</td>
        </tr><tr>
            <td style="width:350px; height:25px; background-color:#D8C6E4; font-weight:bold;" colspan="2">내용</td>
            
        </tr><tr>
            <td style="width:350px; height:200px;text-align:left;" colspan="2">문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다,문의내용입니다</td>
            
        </tr></tbody></table>
</div>
      

        

        

        
<div id="docDetailAnswer" style="width:96%; margin-left:30px; margin-top:2%; text-align:left;">
    <h2>** 답변작성</h2>
    <table>
        <tbody>
    <tr>
            <td style="width:350px; height:25px; background-color:#D8C6E4; font-weight:bold;" colspan="2">답변 내용</td>
            
        </tr><tr>
            <td style="width:350px; height:200px;text-align:left;" colspan="2">
    <textarea style="width:100%; height:100%;"></textarea>
</td>
            
        </tr>
</tbody></table>
</div><div id="docMenuWrapper" style="width:96%; margin-top:1%; text-align:center;">
        <input type="button" style="width:80px; height:30px;border-radius:5px; font-weight:bold;" value="등록">
        <input type="button" style="width:80px; height:30px;border-radius:5px; font-weight:bold;" value="수정">
    <input type="button" style="width:80px; height:30px;border-radius:5px; font-weight:bold;" value="삭제"></div></div>
</div></div>

    <div style="width:100%; height:150px; background-color:;" id="footer"></div>
</body></html>