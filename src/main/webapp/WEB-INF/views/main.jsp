<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="ko">

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
    <link href="/css/styles.css" rel="stylesheet" />
</head>

<body id="page-top">

    
    <%@ include file="/WEB-INF/views/navibar.jsp" %>
    

    <!-- Header-->
    <header class="masthead text-start text-white">
        <div class="masthead-content">
            <div class="container px-5" id="box1">
                <h1 class="masthead-heading mb-0 ">새로운 모임을 만들어보세요!</h1>

                <a class="btn btn-primary btn-xl rounded-pill mt-3" href="-모임만들기.html">모임만들기</a>
            </div>

        </div>

    </header>
    <!-- Content section 1-->
    <section id="scroll">
        <div class="container px-5">
            <div class="row gx-5 align-items-center">
                <div class="col-lg-6 order-lg-2">
                    <div class="p-5"><img class="img-fluid rounded-circle"
                            src="/images/main2.jpg"/></div>
                </div>
                <div class="col-lg-6 order-lg-1">
                    <div class="p-5">
                        <h2 class="display-4">현재 활동중인 모임을 둘러보세요!</h2>
                        
                        <a class="btn btn-primary btn-xl rounded-pill mt-3" href="-활동중인 모임.html">활동중인 모임</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Content section 2-->
    <section>
        <div class="container px-5">
            <div class="row gx-5 align-items-center">
                <div class="col-lg-6">
                    <div class="p-5"><img class="img-fluid rounded-circle" src="images/main3.png" /></div>
                </div>
                <div class="col-lg-6">
                    <div class="p-5">
                        <h2 class="display-4">무엇이든 물어보세요</h2>
                       
                        <a class="btn btn-primary btn-xl rounded-pill mt-3" href="/qna/qnaList">Q&A게시판</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Content section 3-->
    <section>
        <div class="container px-5">
            <div class="row gx-5 align-items-center">
                <div class="col-lg-6 order-lg-2">
                    <div class="p-5"><img class="img-fluid rounded-circle"
                            src="images/main4.jpg" /></div>
                </div>
                <div class="col-lg-6 order-lg-1">
                    <div class="p-5">
                        <h2 class="display-4">확인해주세요</h2>
                        
                        <a class="btn btn-primary btn-xl rounded-pill mt-3" href="/notice/noticeList">공지사항</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
    <%@ include file="/WEB-INF/views/footer.jsp" %>
   
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>