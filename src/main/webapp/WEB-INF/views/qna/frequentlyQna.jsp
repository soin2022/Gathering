<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                            <a class="nav-link" href="/qna/myQnaList">
                                <span data-feather="shopping-cart"></span>
                                나의 질문
                            </a>
                        </li>
                       
                    </ul>


                    </ul>
                </div>
            </nav>
    
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

                <h2 style="padding-top:5%">자주 묻는 질문</h2> 

                <div class="row mb-5">

                </div>
                    
                <!--아코디언-->                   
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                          가입은 어떻게 하나요
                        </button>
                      </h2>
                      <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">활동중인 모임에서 모임을 찾아보세요</div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingTwo">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                          비용이 드나요
                        </button>
                      </h2>
                      <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">누구나 무료로 이용할 수 있습니다.</div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingThree">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                          탈퇴는 어떻게 하나요
                        </button>
                      </h2>
                      <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">마이페이지에 내정보관리로 가면 있습니다.</div>
                      </div>
                    </div>
                  </div>
         
            </main>

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