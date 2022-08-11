<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
  <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>로그인화면</title>
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
    <link rel="stylesheet" href="../css/login.css" />
</head>

<body id="page-top">
 <!-- Navigation-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container ">
            <a class="navbar-brand" href="/main">게더링(Gathering)</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ">
                    <li class="nav-item"><a class="nav-link" href="#!">모임 만들기</a></li>
                    <li class="nav-item"><a class="nav-link" href="#!">활동중인 모임</a></li>
                    <li class="nav-item"><a class="nav-link" href="/qna/qnaList">Q&A 게시판</a></li>
                    <li class="nav-item"><a class="nav-link" href="/notice/noticeList">공지사항</a></li>
                </ul>
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="/user/join">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="/user/login">Log In</a></li>
                </ul>
            </div>
        </div>
    </nav>

 
    <div class="login-wrap">
        <div class="login-html">
            <h1>로그인</h1>
            <form action="loginForm" name="loginForm" id="loginForm" method="post">
            <div class="login-form">
                <div class="sign-up-htm">
                    <div class="group">

                        <label for="user_id" class="label">아이디</label>
                        <input type="text" id="user_id" name="user_id" class="input" placeholder="아이디" autocomplete="off">
                    </div>
                    <div class="group">
                        <label for="password" class="label">비밀번호</label>
                        <input type="password" id="password" name="password" class="input" placeholder="비밀번호">

                    </div>
                    <div class="buttonEx">
                        <div class="group">
                            <input type="button" class="button" value="로그인" onclick="login()"><br>
							<div style="text-align: center; color:red"><span>${message}</span></div>
                        </div>
					                       
                        <div style="text-align:center;">
                            <input type="button" class="find" onclick="findUserInfoView()" value="아이디 | 비밀번호 찾기" style="border:none; background:none;">
                        </div>
                    </div>  
                </div>
                <div class="group">
                    <div class="under">
                       
                        <div>
                        <input type="button" class="button" onclick="location.href='/user/join'" value="회원가입">
                        </div>
                    </div>
                </div>
            </div>
            </form>
        </div>
    </div>

   <!-- Footer-->
   <footer class="py-2 bg-light" >
    <div class="container px-5">
        <p class="m-0 text-center text-black small">Copyright &copy; Your Website 2022</p>
    </div>
   </footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- login 스크립트 -->
<script type="text/javascript" src="../js/login.js" charset="UTF-8"></script>
    
</body>
</html>