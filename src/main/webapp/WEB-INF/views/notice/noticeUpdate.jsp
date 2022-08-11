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
	<!-- Nav바 구간-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container ">
			<a class="navbar-brand" href="#page-top">게더링(Gathering)</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ">
					<li class="nav-item"><a class="nav-link" href="#!">모임 만들기</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">활동중인 모임</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Q&A 게시판</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">공지사항</a></li>
				</ul>
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#!">Sign Up</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">Log In</a></li>
				</ul>
			</div>
		</div>
	</nav>


	<!--메인구간 -->
	<form id="modifyForm" action="/notice/update_action" method="post">
		<input type="hidden" id="notice_seq" name="notice_seq"
			value="${noticeInfo.notice_seq }" /> <input type="hidden"
			id="notice_seq" name="notice_seq" value="${noticeInfo.user_id }" />
		<input type="hidden" id="notice_seq" name="notice_seq"
			value="${noticeInfo.regdate }" />

		<div class="col-10">
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

				<h2 style="padding-top: 5%">공지사항수정</h2>


				<!-- 공지사항 입력 -->


				<div class="mb-3">
					<!--공지사항 제목-->
					<div class="row mb-2">
						<label for="input_notice_title" class="col-sm-2 col-form-label">제목</label>

						<div class="col-7">
							<input type="text" class="form-control" id="title" name="title"
								value="${noticeInfo.title}">

						</div>
					</div>
					<hr>
					<!--공지사항 내용-->
					<div class="row mb-2">
						<label for="input_notice_content" class="col-sm-2 col-form-label">내용</label>

						<div class="col-7">
							<textarea class="form-control" id="content" name="content"
								rows="5" style="resize: none;">${noticeInfo.content}</textarea>
						</div>

					</div>
					<hr>
					<!--첨부파일-->
					<div class="row mb-2">
						<label for="input_notice_file" class="col-sm-2 col-form-label">파일첨부</label>
						<div class="col-7">
							<input class="form-control" type="file" id="input_notice_file"
								multiple>
						</div>
					</div>
					<hr>
					<!--서밋버튼-->
					<div class="row">
						<div class="col text-center">


							<a class="btn btn-primary" id="modify_btn">수정 완료</a> <a
								class="btn btn-primary" id="cancel_btn">수정 취소</a>


						</div>
					</div>

				</div>
			</main>
		</div>
	</form>
	<form id="infoForm" action="/notice/update_action" method="get">
		<input type="hidden" id="notice_seq" name="notice_seq" value='<c:out value="${noticeInfo.notice_seq}"/>'>
		<!-- 정보 저장용 히든 -->
		<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
		<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
		
		 
	</form>




	<!-- Footer-->
	<footer class="py-5 bg-light">
		<div class="container px-5">
			<p class="m-0 text-center text-black small">Copyright &copy; Your
				Website 2022</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- jquery -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- 수정확인 스크립트  -->
	<script>
		let form = $("#infoForm"); // 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
		let mForm = $("#modifyForm"); // 페이지 데이터 수정 from

		/* 수정 하기 버튼 */
		$("#modify_btn").on("click", function(e) {
			mForm.submit();
		});

		/* 취소 버튼 */
		$("#cancel_btn").on("click", function(e) {
			form.attr("action", "/notice/noticeList");
			form.submit();
		});
	</script>

</body>

</html>