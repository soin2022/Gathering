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
   
   <%@ include file="/WEB-INF/views/navibar.jsp" %>
    
    <div class="container-fluid">
        <div class="row">
            
            <!--사이드바 시작구간-->
            <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                <div class="position-sticky pt-3">
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">
                                <span data-feather="home"></span>
                                모임상세
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="file"></span>
                                모임공지
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="shopping-cart"></span>
                                모임앨범
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                <span data-feather="users"></span>
                                모임수다
                            </a>
                        </li>
                    </ul>


                    </ul>
                </div>
            </nav>

            <!--메인구간 -->

            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                
                <h2 style="padding-top:5%">{헬창모임}</h2>

                
                <div class="row mb-2">
                    <div class="col">
                        <button type="button" class="btn btn-outline-primary" style="float:right">가입하기</button>
                        <button type="button" class="btn btn-outline-primary" style="float:right; margin-right:10px">찜하기</button>  
                    </div>       
                </div>
                
                
                    
                    
                    <!--해당 공지리스트 양식으로 한줄 요약-->
                <div class="table-responsive">
                   

                    <!-- 모임공지 상세 내용-->

                    <div class="col-8" style="padding-top: 10px; line-height: 3;">
                      <p>{서울/강남}<br>{운동/쇠질}</p>
                      <hr>
                      <p>간단소개 블라블라</p>
                      <hr>
                      
                      <p>상세소개상세소개
                         상세소개상세소개상세소개상세소개
                         상세소개 
                         상세소개상세소개
                         상세소개상세소개상세소개상세소개
                         상세소개
                         상세소개상세소개
                         상세소개상세소개상세소개상세소개
                         상세소개</p>
                      <br>
                      <hr>
                      

                      <!--클릭하면 해당 공지 상세로 이동하게-->
                      <h4>정모현황</h4>
                      <table class="table table-hover">
                        
                        <tbody>
                          <tr>
                            <td>{수요일 19:00}</td>
                            <td>{정모제목}</td>
                            <td>{모임지역}</td>
                            <td>{참석자수: 10/30명}</td>
                          </tr>
                          <tr>
                            <td>수요일 19:00</td>
                            <td>하체조지는날</td>
                            <td>서울/강남</td>
                            <td>참석자수: 10/30명</td>
                          </tr>
                          <tr>
                            <td>{수요일 19:00}</td>
                            <td>{정모제목}</td>
                            <td>{모임지역}</td>
                            <td>{참석자수: 10/30명}</td>
                          </tr>
                        </tbody>
                      </table>
                      
                      <h4>모임멤버</h4>  
                      <table class="table">
                        
                        <tbody>
                          <tr>
                            <td><img class="img-fluid rounded-circle" src="images/profile.jpg" style="width: 70px; height: 70px; margin-right:10px">{김종국(김헬창)}</td>
                            
                          </tr>
                          
                        </tbody>
                      </table>    
                   
                

                   
                   
                    <div class="col-12">
                      <button type="submit" class="btn btn-primary">모임수정</button><!--모임장만-->
                      <button type="submit" class="btn btn-primary">모임삭제</button><!--모임장만-->
                    </div>
                
                 

            </main>

        </div>
    </div>

     <%@ include file="/WEB-INF/views/footer.jsp" %>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>