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
    <script type="text/javascript" src="../js/qna.js"></script>

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
       			
       			<form id="moveForm" method="get">
					<!-- 정보 저장용 히든 -->
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
				</form>
       				
                <h2 style="padding-top:5%">Q&A게시판</h2>
                    <div class="row mb-2">
                        <div class="col">      
                        
                        	<!--  로그인가정, 세션값 id와 모델에 담은 id값 비교, 동일하면 버튼노출( 본인작성한것)  -->
                        	<c:if test="${sessionScope.user.user_id eq qnaVO.user_id}"  >        
                            <button type="button" class="btn btn-outline-primary" style="float:right" onclick="location.href='/qnaDeleteForm?qna_seq=${qnaVO.qna_seq}'">삭제</button>
                            <button type="button" class="btn btn-outline-primary" style="float:right; margin-right:10px" onclick="location.href='/qnaUpdateForm?qna_seq=${qnaVO.qna_seq}'">수정</button>  
                        </div>
                        </c:if>         
                    </div>

                <div class="table-responsive">
                    <table class="table table-sm">
                        <thead>
                            <tr>
                                <th scope="col">${qnaVO.qna_seq}</th>
                                <th scope="col" style="width:50%;">${qnaVO.title}</th>
                                <th scope="col" style="text-align:center">${qnaVO.cnt}</th>
                                <th scope="col" style="text-align:center"><fmt:formatDate value="${qnaVO.regDate}" type="date"/></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style="height: auto;">
                                <td colspan="4">
                                    <div class="container my-5 mx-2">
                                        <p>${qnaVO.content}</p>
                                    </div>
                                </td>
                                
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr></tr>
                        </tfoot>   
                            
                                <table class="table table-sm">
                                    <tbody>
                                        <c:forEach items="${commentsList}"  var="commentsList">
                                        <tr>
                                            <th scope="col" style="text-align:center">운영자(${commentsList.user_id })</th>
                                            <th scope="col" style="width:50%;">${commentsList.content }</th>
                                            <th scope="col" style="text-align:center">${commentsList.regDate}</th>
                                        </tr>
                                        </c:forEach>
                                        <!--관리자한테만 보이는 답변입력 칸-->
                                        <c:if test="${sessionScope.user.user_type == 0 }">
                                        <tr>
                                            <td colspan="3">
                                                <div class="row my-3 align-items-center justify-content-center">
                                                    <div class="col-2" style="text-align:right;">
                                                        <label for="comments" class="form-label">답변작성</label>
                                                    </div>   
                                                    <form id="commentForm">
                                                    <div class="col-6">
                                                        <textarea class="form-control" id="comments" rows="4" style="resize:none;"></textarea>
                                                    </div>
                                                    <div class="col-2">    
                                                        <input class="btn btn-primary" type="button" value="등록" id="insert">
                                                    </div>
                                                    </form>     
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                       </c:if>             
                                    </tbody>                                 
                                    <tfoot>                             
                                        <tr></tr>
                                    </tfoot>
                                </table>    
                                
                                <!--페이징-->
				                <nav aria-label="Page navigation example">
				                    <ul class="pagination justify-content-center">
				                    <c:if test="${pageMaker.prev}">
				                      <li class="page-item">
				                        <a class="page-link" href="${pageMaker.startPage-1}" aria-label="Previous">
				                          <span aria-hidden="true">&laquo;</span>
				                        </a>
				                      </li>
				                      </c:if>
				                      <c:forEach var="num" begin="${pageMaker.startPage}"
													end="${pageMaker.endPage}">
				                      <li class="page-item" ${pageMaker.cri.pageNum == num ? "active":"" }><a class="page-link" href="${num}">${num}</a></li>
				                      </c:forEach>
				                      <c:if test="${pageMaker.next}">
				                      <li class="page-item">
				                        <a class="page-link" href="${pageMaker.endPage + 1 }" aria-label="Next">
				                          <span aria-hidden="true">&raquo;</span>
				                        </a>
				                      </li>
				                      </c:if>
				                    </ul>
				                </nav>
				                    </table>
				                </div>

                <div class="row my-3">
                    <div class="col text-center">
                        <button class="btn btn-primary" type="button" onclick="location.href='/qna/qnaList'">문의목록</button>
                    </div>
                </div>
            </main>
        </div>
    </div>

    
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
<!-- Footer-->
<footer class="py-5 bg-light" >
    <div class="container px-5">
        <p class="m-0 text-center text-black small">Copyright &copy; Your Website 2022</p>
    </div>
   </footer>
   
   
   <script type="text/javascript">
	   
		$(document).ready(function() {
	
			var msg = "${msg}";
	
			if (msg != "") {
				alert(msg);
			}
	
		});

   
   
   
		let moveForm = $("#moveForm");

		$(".pagination a").on("click", function(e) {

			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.attr("action", "/commnets_list");
			moveForm.submit();
		});

			moveForm.find("input[name='pageNum']").val(1);
			moveForm.submit();
		});
		
		
		/*
		** 댓글등록
		*/
		$(".btn btn-primary").on("click", function(e) {
			e.preventDefault();
			
			$.ajax({
				type:'POST',
				url:'/comments_insert',
				data:$("#commentForm").serialize(), 	//아이디가 #아래인 폼을 읽어서 그안의 파라메타id들을 읽어서 위에 url로 보내겠다.
				success: function(data) {
					if (data=='success') {	// 상품평 등록 성공
							// 상품평 목록 요청함수 호출
						$("#comments").val("");
					} else if (data=='fail') {
						alert("상품평 등록이 실패하였습니다. 다시 시도해 주세요.");
					} else if (data=='not_logedin') {
						alert("상품평 등록은 로그인이 필요합니다.");
					}
				},
				error: function(request, status, error) {
					alert("error:" + error);
				}
			});
		}
	
		
		
		
		
	</script>
   

</html>