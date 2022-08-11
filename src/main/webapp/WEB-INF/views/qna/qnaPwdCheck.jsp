<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>One Page Wonder - Start Bootstrap Template</title>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
        rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
        rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="../css/styles.css" rel="stylesheet" />

</head>

<body id="page-top">
    <!-- Nav바 구간-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container ">
            <a class="navbar-brand" href="#page-top">게더링(Gathering)</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>

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
            <div class="col-12">
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                <h2 style="padding-top:5%">게시글 비밀번호를 입력해주세요.</h2>

            		<div class="container my-3 mx-2">
						  <!--Q&A비밀번호 확인-->
						  <form action="/qnaPwdCheck?qna_seq=${qnaVO.qna_seq}" method="post">
						  <div class="row mb-2">
						 	  <label for="input_user_id" class="col-sm-2 col-form-label">비밀번호</label>
						    <div class="col-auto">
						        <input type="password" class="form-control" id="qnaPwd" name="qnaPwd" placeholder="비밀번호">
						    </div>
						    <div class="col-auto">
						        <button type="submit" class="btn btn-primary">확인</button>
						    </div>
						</div>
						</form>
						<span style="color:red">${message}</span>
					</div>
            </main>
        </div>
        </div>
    </div>

      <!-- Footer-->
   <footer class="py-5 bg-light" >
    <div class="container px-5">
        <p class="m-0 text-center text-black small">Copyright &copy; Your Website 2022</p>
    </div>
   </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>