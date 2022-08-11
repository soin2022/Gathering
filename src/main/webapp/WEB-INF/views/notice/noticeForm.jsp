<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>One Page Wonder - Start Bootstrap Template</title>
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../css/styles.css" rel="stylesheet" />
<style type="text/css">
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}
	
</style>
</head>

<body id="page-top">
	 <%@ include file="/WEB-INF/views/navibar.jsp" %>


	<!--메인구간 -->

	<div class="col-10">
		<form class="container row mt-3" action="/insertNotice" method="post"
			enctype="multipart/form-data">
			<div class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<!-- 공지사항 입력 -->
				<h2 style="padding-top: 5%">공지사항등록</h2>





				<div class="mb-3">

					<!--공지사항 제목-->
					<div class="row mb-2">
						<label for="input_notice_title" class="col-sm-2 col-form-label">제목</label>

						<div class="col-7">
							<input type="text" class="form-control" id="input_notice_title"
								name="title">
						</div>
					</div>
					<hr>
					<!--공지사항 내용-->
					<div class="row mb-2">
						<label for="input_notice_content" class="col-sm-2 col-form-label">내용</label>

						<div class="col-7">
							<textarea class="form-control" id="comments" rows="5"
								style="resize: none;" name="content"></textarea>
						</div>
					</div>
					<hr>
					<!--첨부파일-->
					<div class="row mb-2">
						<label for="input_notice_file" class="col-sm-2 col-form-label">파일첨부</label>

						<div class="col-7">

							<input type="file" id="fileItem" name='uploadFile' multiple
								style="height: 30px;">
							<div id="uploadResult">
								  
								<div id="result_card">
									<div class="imgDeleteBtn">x</div>
									<img src="/display?fileName=test.png">
									
								</div>
								
							</div>
						</div>
					</div>
				</div>
				<hr>
				<!--서밋버튼-->
				<div class="row">
					<div class="col text-center">

						<input class="btn btn-primary" style="margin-right: 10px;"
							type="submit" value="등록">
						<button class="btn btn-primary" type="button" id="cancel_btn">취소</button>
					</div>
				</div>
			</div>
		</form>
		<form id="infoForm" action="/notice/noticeUpdate" method="get">
			<input type="hidden" id="notice_seq" name="notice_seq"
				value='<c:out value="${noticeInfo.notice_seq}"/>'>
		</form>
	</div>




	 <%@ include file="/WEB-INF/views/footer.jsp" %>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	
	<!--  ajax -->
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script>
		/* 이미지 업로드 */
		$("input[type='file']").on("change", function(e) {

			let formData = new FormData();
			let fileInput = $('input[name="uploadFile"]');
			let fileList = fileInput[0].files;
			let fileObj = fileList[0];

			console.log("fileList : " + fileList);
			console.log("fileObj : " + fileObj);
			console.log("fileName : " + fileObj.name);
			console.log("fileSize : " + fileObj.size);
			console.log("fileType(MimeType) : " + fileObj.type);

			for (let i = 0; i < fileList.length; i++) {
				formData.append("uploadFile", fileList[i]);
			}
			$.ajax({
				url : '/uploadAjaxAction',
				processData : false,
				contentType : false,
				data : formData,
				type : 'POST',
				dataType : 'json',
				success : function(result) {
					console.log(result);
					showUploadImage(result);
				},
				error : function(result) {
					alert("이미지 파일이 아닙니다.");
				}
			});

		});

		/* var, method related with attachFile */
		let regex = new RegExp("(.*?)\.(jpg|png)$");
		let maxSize = 10485760; //10MB	

		
		function fileCheck(fileName, fileSize){

			if(fileSize >= maxSize){
				alert("파일 사이즈 초과");
				return false;
			}
				  
			if(!regex.test(fileName)){
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			
			return true;		
			
		}
		 
		
		 

		
	</script>


</body>

</html>