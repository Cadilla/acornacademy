<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/footer.css" type="text/css" media="screen">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/navbar.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" />
<script src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<style>
	table, th, td{
		border:1px solid #000;
	}
	img{
		height:100px;
		width:160px;
	}
	.imgBox{
		width:160px;
	}
	.productsCud {
		padding : 20px;
		margin-left: 400px;
	}
	.productsCud a{
		margin-right:30px;
		
	}

	.deleteBox, .updateBox{
		display: none;
	}
	#buttons{
		margin-left:300px;
		margin-bottom:30px;
		position: absolute;
	}
	#listForm{
		width:90%;
		float:left;
		margin-left:320px;
		
	}
	#listForm table{
		width:90%;
		margin-top:50px;
	}
	
</style>
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../nav/m_nav.jsp"></jsp:include>
<jsp:include page="../nav/sidebar.jsp"></jsp:include>
<div class="productsCud">
	<a href="../../m_home.do">돌아가기</a>
	<a href="p_insertform.do">상품 등록</a>
	<a href="javascript:showubox()">상품 수정</a>
	<a href="javascript:showdbox()" id="delete">상품 삭제</a>
</div>

<form action="p_delete.do" id="listForm">
<div id="buttons">
	<button type="submit" id="deleteBtn" class="deleteBox">삭제</button>
	<button type="reset" id="canselBtn" class="deleteBox">취소</button>
</div>
	<table>
		<thead>
			<tr>
				<th class="updateBox">수정</th>
				<th class="deleteBox">삭제</th>
			<!-- 상품 -->
				<th>상품코드</th>
				<th>분류코드</th>
				<th>상품명</th>
				<th>제조사</th>
				<th>판매가</th>
				<th>마일리지</th>
				<th>등록일자</th>
				<th>상품간단설명</th>
				<th>상품상세설명</th>
				<th>상품 이미지</th>
			<!-- 상품 상세 -->
				<th>상품번호</th>
				<th>사이즈</th>
				<th>재고수량</th>
			</tr>
		</thead>
		<tbody>
		<c:choose>
			<c:when test="${empty list }">
				<td colspan="13" style="text-align: center;"><h3>상품이 없습니다.</h3></td>
			</c:when>	
			<c:otherwise>
				<c:forEach var="tmp" items="${list}">
					<tr>
					<!-- 상품 -->
						<td class="updateBox"><a href="p_updateform.do?p_code=${tmp.p_code }">수정</a></td>
						<td class="deleteBox">
							<input type="checkbox" name="chname" value="${tmp.p_code }:${tmp.p_main_img }"/>
							<input type="hidden" name="p_code" value="${tmp.p_code }" />
						</td>
						<td>${tmp.p_code}</td>
						<td>${tmp.p_kind_code }</td>
						<td>${tmp.p_name }</td>
						<td>${tmp.p_brand }</td>
						<td>${tmp.p_price }</td>
						<td>${tmp.point }</td>
						<td>${tmp.p_regdate }</td>
						<td>${tmp.p_comment }</td>
						<td>${tmp.p_detail_comment }</td>
						<td class="imgBox">
							<a href="${pageContext.request.contextPath }/products/products_detail.do?p_code=${tmp.p_code }">
								<img src="${pageContext.request.contextPath }/resources/img/productImgs/${tmp.p_main_img }" />
							</a>
						</td>
						<td>상품번호(상품 상세)</td>
						<td>사이즈(상품 상세)</td>
						<td>수량(상품 상세)</td>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		</tbody>
	</table>
</form>
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.2.0.js"></script>
<script>
	function showdbox(){
		$(".updateBox").hide();
		$(".deleteBox").show();
		
	}
	
	function showubox(){
		$(".deleteBox").hide();
		$(".updateBox").show();
		$("#canselBtn").show();
	}
	
	$("#listForm").submit(function(){
		var isDel=confirm("정말로 삭제 하시겠습니까?");
		if(isDel){
			return true;	
		}else{
			return false;
		}
		
	});
	
	$("#canselBtn").click(function(){
		$(".deleteBox").hide();
		$(".updateBox").hide();
	});
	

	


	
</script>
</body>
</html>