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
    <link href="..css/styles.css" rel="stylesheet" />

</head>

<body id="page-top">
    
     <%@ include file="/WEB-INF/views/navibar.jsp" %>
    
    <!--메인시작구간-->
    <div class="container-fluid">
      
      
            

            <!--메인구간 -->
            <div class="col-10">
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

                <h2 style="padding-top:5%">${모임리스트}</h2>




                    <!--카테고리 검색창-->
                    <form>
                    <div class="row mt-3">
                        <div class="col-10">
                        <div class="input-group">
                            <select name="job" class="btn btn-outline-success ">
                                <option value="">카테고리1</option>
                                <option value="학생">학생</option>
                                <option value="회사원">회사원</option>
                                <option value="기타">기타</option>
                            </select>
                            <select name="job" class="btn btn-outline-success mx-2">
                                <option value="">카테고리2</option>
                                <option value="학생">학생</option>
                                <option value="회사원">회사원</option>
                                <option value="기타">기타</option>
                            </select>
                           
                                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            
                                <button class="btn btn-outline-success" type="submit">Search</button>
                            
                        </div>
                        </div>

                    </div>
                    </form>  
                


                <!--모임 만들기 버튼-->
                <div class="row mb-2 pt-5">
                    <div class="col">
                          
                        <button type="button" class="btn btn-primary" style="float:right">모임만들기</button>
                    </div>       
                </div>





                <!--모임리스트-->
               
                <div class="row g-4 pb-5 pt-2 row-cols-1 row-cols-lg-3">
                    <!--<블록-->
                    <div class="feature col-lg-3 border rounded py-4 m-2" style="cursor: pointer" onclick="location.href='https://www.Google.com'"> <!--누르면 모임상세로-->
                        <div class="form-check">
                           
                        </div>
                        <h2>${모임이름}</h2>
                        <p>${간단소개} 우리는 헬창입니다. 각오하세요</p>
                        <div class="text-muted">서울/강남구</div>
                        <div class="row mb-3 text-center">
                            <div class="col-4 text-muted ">30명</div>    
                        </div>
                        
                    </div>
                    <!--블록>-->
                    <!--<블록-->
                    <div class="feature col-lg-3 border rounded py-4 m-2" style="cursor: pointer" onclick="location.href='https://www.Google.com'"> <!--누르면 모임상세로-->
                        <div class="form-check">
                           
                        </div>
                        <h2>${모임이름}</h2>
                        <p>${간단소개} 우리는 헬창입니다. 각오하세요</p>
                        <div class="text-muted">서울/강남구</div>
                        <div class="row mb-3 text-center">
                            <div class="col-4 text-muted ">30명</div>    
                        </div>
                        
                    </div>
                    <!--블록>-->
                    
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
    </div>
    </div>
    
    </div>
    </div>
    
    </section>
    
</main>
</div> 
    </div>
    </div>

     <%@ include file="/WEB-INF/views/footer.jsp" %>
     
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>

</html>