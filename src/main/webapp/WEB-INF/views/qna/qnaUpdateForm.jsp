<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <link href="css/styles.css" rel="stylesheet" />

	<script type="text/javascript" src="../js/qna.js"></script>

</head>

<body id="page-top">
    <!-- Nav바 구간-->
       <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container ">
            <a class="navbar-brand" href="main">게더링(Gathering)</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span
                    class="navbar-toggler-icon"></span></button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ">
                    <li class="nav-item"><a class="nav-link" href="-모임만들기.html">모임 만들기</a></li>
                    <li class="nav-item"><a class="nav-link" href="-활동중인 모임.html">활동중인 모임</a></li>
                    <li class="nav-item"><a class="nav-link" href="qnaList">Q&A 게시판</a></li>
                    <li class="nav-item"><a class="nav-link" href="/notice/noticeList">공지사항</a></li>
                </ul>
                <ul class="navbar-nav ms-auto">
                <c:choose>
       				<c:when test="${empty sessionScope.user}">
	                    <li class="nav-item"><a class="nav-link" href="user/join">Sign Up</a></li>
	                    <li class="nav-item"><a class="nav-link" href="user/login">Log In</a></li>
                    </c:when>
                    <c:otherwise>
	                    <li class="nav-item"><a class="nav-link" href="user/join">Mypage </a></li>
	                    <li class="nav-item"><a class="nav-link" href="/logout">Log out</a></li>
	                </c:otherwise>
	             </c:choose>
                </ul>
            </div>
        </div>
    </nav>
    
    <!--사이드바 시작구간-->
    <div class="container-fluid">
        <div class="row">
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky pt-3">
                    <ul class="nav flex-column">
                        
                        <li class="nav-item">
                            <a class="nav-link"  href="/qna/frequentlyQna">
                                <span data-feather="file"></span>
                                자주 묻는 질문
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"  href="/qna/myQnaList">
                                <span data-feather="shopping-cart"></span>
                                나의 질문
                            </a>
                        </li>
                       
                    </ul>


                    </ul>
                </div>
            </nav>
            <!--메인구간 -->
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">




                <h2 style="padding-top:5%">질문수정</h2>


                <!-- 입력 폼-->

                <form class="container row" id="formm" name="formm" style="float: none; margin:100 auto;" action="/qna_update" method="post">
						<input type="hidden" id="formm" name="qna_seq" value="${qnaVO.qna_seq}"/> 
                        
                        <!--질문제목--> 
                        <div class="row mb-2">
                            <label for="input_crew_notice_title" class="col-sm-2 col-form-label">제목</label>
                            <div class="col-auto">
                                <input type="text" size="70" class="form-control" name="title" 
                                    id="title" placeholder="${qnaVO.title }">
                            </div>
                        </div>

                        

                        <!--상세내용-->
                        <div class="row mb-2">
                            <label for="input_crew_notice_detail" class="col-sm-2 col-form-label">상세내용</label>
                            <div class="col-auto">
                                <textarea type="text" class="form-control" id="content" name="content" cols="70"
                                    rows="5" placeholder="${qnaVO.content }" style="resize:none;"></textarea>
                            </div>
                        </div>

                        
                        <!--공개여부-->
                        <div class="row mb-2">

                            <label for="input_gender" class="col-sm-2 col-form-label">공개여부</label>
                            <div class="col-auto">
                                <div class="row" style="padding-left:10px;">
                                    <div class="form-check col-auto py-2">
                                    
                                        <input class="form-check-input" type="radio" name="security"
                                            id="security1" value="공개" onclick="onActive()"   />공개

                                    </div>

                                    <div class="form-check col-auto py-2">
                                    	
                                        <input class="form-check-input" type="radio" name="security"
                                            id="security2" value="비공개" onclick="onActive()" checked/>비공개
                                    
                                    </div>
                                    
                                </div>
                            </div>
                        </div>

                        

                        <!--비밀번호-->
                   
                      
                        <div class="row mb-2">
                            <label for="input_password" class="col-sm-2 col-form-label">비밀번호</label>
                            <div class="col-auto">
                                <input type="password" class="form-control" id="password" name="password" placeholder="비밀번호" >
                            </div>
                        </div>
                     
                      


                        <!--버튼-->
                        <div class="row">
                            <div class="col text-center">
                                <button class="btn btn-primary" type="button" id="qna_insert" onclick="qna_update()" >수정</button>
                                <button class="btn btn-primary" type="button" onclick="location.href='/qna/qnaList'">취소</button>
                            </div>
                        </div>

                </form>
            </main>

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