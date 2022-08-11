<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>One Page Wonder - Start Bootstrap Template</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/styles.css" rel="stylesheet" />


</head>

<body id="page-top">
	 <%@ include file="/WEB-INF/views/navibar.jsp" %>


	<!--메인구간 -->

	<div class="col-10">
		<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">




			<h2 style="padding-top: 5%">공지사항상세</h2>
			<div class="row mb-2">
				<div class="col">
					<c:choose>
					<c:when test="${user.user_type==0 }">
					<a href="javascript:void(0);" class="btn btn-outline-primary"
						onclick="deleteConfirm(); " style="float: right">삭제</a> <a
						class="btn" id="modify_btn" style="float: right">수정 하기</a>
						</c:when>
					</c:choose>
				</div>
				<form id="infoForm" action="/notice/noticeUpdate" method="get">
					<input type="hidden" id="notice_seq" name="notice_seq"
						value='<c:out value="${noticeInfo.notice_seq}"/>'> <input
						type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
					<input type="hidden" name="type" value="${cri.type }"> <input
						type="hidden" name="keyword" value="${cri.keyword }">
				</form>
			</div>


			<div class="table-responsive">

				<table class="table table-sm">
					<thead>
						<tr>

							<th scope="col"><input name="notice_seq" readonly="readonly"
								value='<c:out value="${noticeInfo.notice_seq}"/>'></th>
							<th scope="col"><input name="title" readonly="readonly"
								value='<c:out value="${noticeInfo.title}"/>'></th>
							<th scope="col"><input name="cnt" readonly="readonly"
								value='<c:out value="${noticeInfo.cnt}"/>'>
								</th>
							<th scope="col"><input name="cnt" readonly="readonly"
								value='<c:out value="${noticeInfo.regdate}"/>'></th>
						</tr>
					</thead>
					<tbody>
						<tr style="height: auto;">
							<td colspan="4">
								<div class="container my-5 mx-2">
									<p>${noticeInfo.content}
							
								</div>
							</td>

						</tr>
					</tbody>
				</table>
			<%@ include file="comment.jsp"%>
			</div>
			
			<div class="row my-3">
				<div class="col text-center">
					<button class="btn btn-primary" type="button"
						onclick="location='/notice/noticeList';">공지목록</button>
				</div>
			</div>


		</main>

	</div>


	<%@ include file="/WEB-INF/views/footer.jsp" %>


	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!--  ajax -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>



	<!-- 수정완료 / 삭제완료 스크립트  -->
	<script>
		$(document).ready(function() {

			var msg = "${msg}";

			if (msg != "") {
				alert(msg);
			}

		});

		function deleteConfirm() {

			if (!confirm("삭제 하시겠습니까?")) {
				return false;
			} else {
				location.href = "${pageContext.request.contextPath }/notice/delete?notice_seq=${noticeInfo.notice_seq}";
			}
		}
	</script>
	<!-- 수정 스크립트 -->
	<script>
		let form = $("#infoForm");

		$("#list_btn").on("click", function(e) {
			form.find("#bno").remove();
			form.attr("action", "/notice/noticelist");
			form.submit();
		});

		$("#modify_btn").on("click", function(e) {
			form.attr("action", "/notice/noticeUpdate");
			form.submit();
		});
	</script>


</body>
</html>