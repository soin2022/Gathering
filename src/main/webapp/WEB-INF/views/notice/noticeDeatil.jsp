<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     
     
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

            <!--메인구간 -->
            
            <div class="col-10">
            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">



                
                <h2 style="padding-top:5%">공지사항상세</h2>
                    <div class="row mb-2">
                        <div class="col">
                            <a href="javascript:void(0);" class="btn btn-danger" onclick="deleteConfirm();">삭제</a>
                            <a href="/notice/noticeUpdate?notice_seq=${noticeInfo.notice_seq }" class="btn btn-outline-primary" style="float:right">수정</a> 
                        </div>       
                    </div>
                    
                


                <div class="table-responsive">
                    <table class="table table-sm">
                        <thead>
                            <tr>

							<th scope="col"><input name="notice_seq" readonly="readonly"
								value='<c:out value="${noticeInfo.notice_seq}"/>'></th>
							 <th scope="col"><input name="title" readonly="readonly" value='<c:out value="${noticeInfo.title}"/>' ></th>
                                 <th scope="col"><input name="cnt" readonly="readonly" value='<c:out value="${noticeInfo.cnt}"/>' ></th>
                                 <th scope="col"><input name="cnt" readonly="readonly" value='<c:out value="${noticeInfo.regdate}"/>' ></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style="height: auto;">
                                <td colspan="4">
                                    <div class="container my-5 mx-2">
                                        <p>${noticeInfo.content}
                                        <img src="logo/공지사항2_shop1_114752 (1).jpg" style="width: 625px; height:auto;">
                                    </div>
                                </td>
                                
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr></tr>
                        </tfoot>   
                            
                                <table class="table table-sm">
                                    <tbody>
                                        <tr>
                                            <th scope="col" style="text-align:center"></th>
                                            <th scope="col" style="width:50%;"></th>
                                            <th scope="col" style="text-align:center"></th>
                                        </tr>
                                        <tr>
                                            <th scope="col" style="text-align:center"></th>
                                            <th scope="col" style="width:50%;">}</th>
                                            <th scope="col" style="text-align:center"></th>
                                        </tr>
                                        <tr>
                                            <th scope="col" style="text-align:center">이순신</th>
                                            <th scope="col" style="width:50%;">원균 개싫음</th>
                                            <th scope="col" style="text-align:center">1592.10.08</th>
                                        </tr>
                                        <!--댓글입력-->
                                        <tr>
                                            <td colspan="3">
                                                <div class="row my-3 align-items-center justify-content-center">
                                                    <div class="col-2" style="text-align:right;">
                                                        <label for="comments" class="form-label">댓글작성</label>
                                                    </div>    
                                                    <div class="col-6">
                                                        <textarea class="form-control" id="comments" rows="1" style="resize:none;"></textarea>
                                                    </div>
                                                    <div class="col-2">    
                                                        <input class="btn btn-primary" type="button" value="댓글등록">
                                                    </div>    
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                       
                                        
                                    </tbody>
                                    
                                    <tfoot>
                                        
                                        <tr></tr>
                                    </tfoot>
                                </table>    
                                                          
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
                            
                        
                    </table>
                </div>

                <div class="row my-3">
                    <div class="col text-center">
                        <button class="btn btn-primary" type="button" onclick="location='/notice/noticeLi';">공지목록</button>
                    </div>
                </div>
                
                
                
                


            </main>
          
        </div>
        </div>
    </div>
 <%@ include file="/WEB-INF/views/footer.jsp" %>
    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">


$(document).ready(function() {
	
	var msg = "${msg}";
	
	if(msg != ""){
		alert(msg);	
	}
	
});


function deleteConfirm(){
	
	if(!confirm("삭제 하시겠습니까?")){
		return false;
	}else{
		location.href="/notice/noticeList";
	}
}

</script>
</body>
<!-- Footer-->
<footer class="py-5 bg-light" >
    <div class="container px-5">
        <p class="m-0 text-center text-black small">Copyright &copy; Your Website 2022</p>
    </div>
   </footer>

</html>