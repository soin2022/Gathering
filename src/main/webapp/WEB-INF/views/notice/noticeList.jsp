<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
            <a class="navbar-brand" href="/main">게더링(Gathering)</a>
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
            <div class="col-10">
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">


                
                
                <h2 style="padding-top:5%">운영자공지사항</h2> 
                    
                    <div class="row mb-2 align-items-center">
                        <div class="col-2">
                            <select class="form-select form-select-md">
                                <option selected value="1">최신순</option>
                                <option value="2">오래된순</option>
                                <option value="3">조회수순</option>
                            </select>
                        </div>  
                        <div class="col">
                        <button type="button" class="btn btn-outline-primary" style="float:right; margin-right:10px">등록</button>
                        </div>    
                    </div>
                    
                


                <div class="table-responsive">
                    <table class="table table-striped table-sm">
                        <thead>
                            <tr>
                                <th scope="col" style="text-align:center">번호</th>
                                <th scope="col" style="width:50%; text-align: center;">제목</th>
                                <th scope="col" style="text-align:center">작성일</th>
                                <th scope="col" style="text-align:center">조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1,001</td>
                                <td>random</td>
                                <td>data</td>                                
                                <td>text</td>
                            </tr>
                            <tr>
                                <td>1,002</td>
                                <td>placeholder</td>
                                <td>irrelevant</td>                                
                                <td>layout</td>
                            </tr>
                            <tr>
                                <td>1,003</td>
                                <td>data</td>
                                <td>rich</td>                                
                                <td>tabular</td>
                            </tr>
                            <tr>
                                <td>1,003</td>
                                <td>information</td>
                                <td>placeholder</td>                               
                                <td>data</td>
                            </tr>
                            <tr>
                                <td>1,004</td>
                                <td>text</td>
                                <td>random</td>
                                <td>layout</td>                              
                            </tr>
                            
                        </tbody>
                    </table>
                </div>

                <div class="row mb-3 align-items-center justify-content-center">
                    
                        <div class="col-2" style="margin-left: 10%;">
                            <select class="form-select form-select-md">
                                <option selected value="1">제목</option>
                                <option value="2">내용</option>
                            </select>
                        </div>
                        <div class="col-2">
                            <input type="text" class="form-control" id="머라적냐아이디">
                        </div>
                        <div class="col-2">
                            <button class="btn btn-primary" type="button">검색</button>
                        </div>
                    
                </div>
                
                <!--페이징-->
                <nav aria-label="Page navigation example">
                    <ul class="pagination justify-content-center">
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                          <span aria-hidden="true">&laquo;</span>
                        </a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                          <span aria-hidden="true">&raquo;</span>
                        </a>
                      </li>
                    </ul>
                </nav>
                

            </div>
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