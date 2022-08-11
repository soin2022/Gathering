<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
	
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



	<!--사이드바-->
	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"> <span data-feather="home"></span>
								관심있는 모임
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="file"></span> 내가 가입한 모임
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#"> <span
								data-feather="shopping-cart"></span> 내가 만든 모임
						</a></li>
						<li class="nav-item"><a class="nav-link" href="/mypage/myInfo"> <span
								data-feather="users"></span> 내 정보 관리
						</a></li>
					</ul>
				</div>
			</nav>




			<!--메인구간 -->

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

				<h2 style="padding-top: 5%">${title}관심있는모임</h2>

				<!-- 상단 버튼 세개 -->
				<form>
					<div class="row mb-2">
						<div class="col">
							<button type="submit" class="btn btn-outline-primary"
								style="float: right">삭제</button>
							<button type="button" class="btn btn-outline-primary"
								style="float: right; margin-right: 10px">선택해제</button>
							<button type="button" class="btn btn-outline-primary"
								style="float: right; margin-right: 10px">모두선택</button>
						</div>
					</div>

					<!--블록-->

					<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
						<div class="feature col-lg-3 border rounded p-4 m-2">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id=""
									style="float: right;">
							</div>
							<h2>모임이름</h2>
							<p>간단소개우리는 헬창입니다. 각오하세요</p>
							<div class="text-muted">서울/강남구</div>
							<div class="row mb-3 text-center">
								<div class="col-3 text-muted ">30명</div>
								<div class="col-7 text-muted ">서울시/강남구</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-auto">
									<button class="btn btn-primary" type="button">모임가입</button>
								</div>
							</div>
						</div>
						<div class="feature col-lg-3 border rounded p-4 m-2">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id=""
									style="float: right;">
							</div>
							<h2>모임이름</h2>
							<p>간단소개우리는 헬창입니다. 각오하세요</p>
							<div class="text-muted">서울/강남구</div>
							<div class="row mb-3 text-center">
								<div class="col-3 text-muted ">30명</div>
								<div class="col-7 text-muted ">서울시/강남구</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-auto">
									<button class="btn btn-primary" type="button">모임가입</button>
								</div>
							</div>
						</div>
						<div class="feature col-lg-3 border rounded p-4 m-2">
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value="" id=""
									style="float: right;">
							</div>
							<h2>모임이름</h2>
							<p>간단소개우리는 헬창입니다. 각오하세요</p>
							<div class="text-muted">서울/강남구</div>
							<div class="row mb-3 text-center">
								<div class="col-3 text-muted ">30명</div>
								<div class="col-7 text-muted ">서울시/강남구</div>
							</div>
							<div class="row justify-content-center">
								<div class="col-auto">
									<button class="btn btn-primary" type="button">모임가입</button>
								</div>
							</div>
						</div>
					</div>
				</form>
				<hr>

				<!--페이징-->
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</main>

		</div>
	</div>



	<%@ include file="/WEB-INF/views/footer.jsp" %>



	
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>

</html>