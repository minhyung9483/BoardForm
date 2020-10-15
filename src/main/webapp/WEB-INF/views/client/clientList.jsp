<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!-- saved from url=(0085)file:///C:/Users/phh_9/Desktop/%ED%94%84%EB%A6%AC%EB%9E%9C%EC%84%9C/parther_page.html -->
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
   
    <p style="margin-left:30px; font-family:verdana; font-size:20px; font-weight:bold;">회원 목록</p>
        
        <div id="menuWrapper" style="margin-left:30px;">
        <input type="button" style="width:80px; height:30px; background-color:#B791E3; color:white; border-radius:5px; font-weight:bold;" value="회원 목록">
        <input type="button" style="width:110px; height:30px; background-color:#B791E3; color:white; border-radius:5px; font-weight:bold;" value="1:1 문의게시판">
    </div>
        <div id="memberListUiWrapper" style="width:100%; margin-top:1%; margin-bottom:1%; text-align:center;"><div id="memberListSearchDiv" style="width:100%; margin-top:1%; margin-bottom:1%; text-align:left; padding-left:30px;">
        <select style="width:100px; height:30px;">
            <option value="id">아이디</option>
            <option value="name">이름</option>
            <option value="phone">전화번호</option>
        </select>
        <input type="text" id="searchWord" style="width:150px; height:25px;">
    <input type="button" id="btnSearch" style="width:80px; height:30px;" value="검색"></div>
    
    <table>
        <tbody><tr>
            <th style="width:150px; background-color:#CCCCE3;">회원명</th>
            <th style="width:150px; background-color:#CCCCE3;">하위</th>
            <th style="width:250px; background-color:#CCCCE3;">전화번호</th>
            <th style="width:100px; background-color:#CCCCE3;">상태</th>
            <th style="width:250px; background-color:#CCCCE3;">등록일</th>
        </tr><tr style="border:1px solid black">
        <td style="width:150px;">토토로</td>
        <td style="width:150px;"></td>
        <td style="width:250px;">010-1111-2222</td>
        <td style="width:100px;">회원가입완료</td>
        <td style="width:250px;">2020-09-26</td>
    </tr>
    
    <tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">가입 승인 대기중</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">가입 승인 대기중</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">가입 승인 대기중</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">회원가입완료</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">가입 승인 대기중</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">가입 승인 대기중</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">가입 승인 대기중</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;"></td>
        <td style="width:150px;">토토로_추천인_가입</td>
        <td style="width:250px;">010-1111-3333</td>
        <td style="width:100px;">가입 승인 대기중</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;">토토로2</td>
        <td style="width:150px;"></td>
        <td style="width:250px;">010-1111-2222</td>
        <td style="width:100px;">회원가입완료</td>
        <td style="width:250px;">2020-09-26</td>
    </tr><tr style="border:1px solid black">
        <td style="width:150px;">토토로3</td>
        <td style="width:150px;"></td>
        <td style="width:250px;">010-1111-2222</td>
        <td style="width:100px;">회원가입완료</td>
        <td style="width:250px;">2020-09-26</td>
    </tr></tbody></table>  

        

        

        
</div>
</div></div>

    <div style="width:100%; height:150px; background-color:;" id="footer"></div>
</body></html>