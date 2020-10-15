<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<%@ include file="/WEB-INF/views/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>board</title>

<script src="//cdn.ckeditor.com/4.15.0/standard/ckeditor.js"></script>
<!-- <script src="https://cdn.ckeditor.com/ckeditor5/12.0.0/classic/ckeditor.js"></script> -->
<%-- <script src="${pageContext.request.contextPath}/resources/common/js/ckeditor/ckeditor.js"></script> --%>
<script>
	$(document).ready(function(){
		var mode = '<c:out value="${mode}"/>';
		var htmls = "${boardContent.content}";
		
		if ( mode == 'edit'){
			//입력 폼 셋팅
			$("#reg_id").prop('readonly', true); //작성자는 수정 불가
			$("input:hidden[name='bid']").val('<c:out value="${boardContent.bid}"/>');
			$("input:hidden[name='mode']").val('<c:out value="${mode}"/>');
			$("#cate_cd").val('<c:out value="${boardContent.cate_cd}"/>');
			$("#reg_id").val('<c:out value="${boardContent.reg_id}"/>');
			$("#title").val('<c:out value="${boardContent.title}"/>');
			/* $("#content").val('<c:out value="${boardContent.content}"/>'); */ 
			$("#content").val(htmls); 
			$("#tag").val('<c:out value="${boardContent.tag}"/>');
		}	
	});

	$(document).on('click', '#btnSave', function(e){
		e.preventDefault();
		$("#form").submit();
	});
	
	$(document).on('click', '#btnList', function(e){
		e.preventDefault();
		
		location.href="${pageContext.request.contextPath}/board/getBoardList";
	});
</script>
</head>
<body>
	<article>
		<div class="container" role="main">
			<h2>board Form</h2>
			<form:form name="form" id="form" role="form" modelAttribute="boardVO" method="post" action="${pageContext.request.contextPath}/board/saveBoard">
			
				<form:hidden path="bid" />
				<input type="hidden" name="mode" /> <!-- boardVO는 mode라는 프로퍼티를 갖고있지 않기 때문에 일반적인 form 태그 사용 -->
				
				<div class="mb-3">
					<label for="cate_cd">카테고리</label>
					<form:select class="form-control" path="cate_cd" id="cate_cd">
						<form:option value="1" label="게시판"/>   
						<form:option value="2" label="FAQ"/>   
						<form:option value="3" label="Q&A"/>   
					</form:select>
				</div>

				<div class="mb-3">
					<label for="title">제목</label>
					<form:input type="text" class="form-control" path="title" id="title" placeholder="제목을 입력해 주세요"/>
				</div>
				
				<div class="mb-3">
					<label for="reg_id">작성자</label>
					<form:input type="text" class="form-control" path="reg_id" id="reg_id" placeholder="이름을 입력해 주세요"/>
				</div>
				
				<div class="mb-3">
					<label for="content">내용</label>
					<form:textarea class="form-control" rows="3" path="content" id="content" placeholder="내용을 입력해 주세요" />
					<script src="${pageContext.request.contextPath}/resources/common/js/ckeditor.js"></script>
				</div>
				
				<div class="mb-3">
					<label for="tag">TAG</label>
					<form:input type="text" class="form-control" path="tag" id="tag" placeholder="태그를 입력해 주세요"/>
				</div>
			
			</form:form>
			<div >
				<button type="button" class="btn btn-sm btn-primary" id="btnSave">저장</button>
				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button>
			</div>
		</div>
	</article>
</body>

</html>