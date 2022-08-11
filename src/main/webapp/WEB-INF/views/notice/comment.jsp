<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- link rel="stylesheet" href="css/bootstrap.min.css"> -->


</head>
<body>
	<div class="container">
		<form id="commentForm" name="commentForm" method="post">
			<br> <br>
			<div>
				<div>
					<span><h3>답변</h3></span> <span id="cCnt"></span>
				</div>
				<div id="reply">
					<table id="rep_input" style="width: 650px">
						<tr>
							<td style="width: 80%;"><textarea rows="3" cols="75"
									id="content" name="content" placeholder="댓글을 입력하세요">${noticeInfo.regdate}</textarea>
							</td>
							<td style="width: 10%;"><a href='#'
								onClick="save_comment('${noticeInfo.title }')" class="btn">등록</a>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<input type="hidden" id="pseq" name="pseq"
				value="${noticeInfo.notice_seq }" />
		</form>
	</div>
	<div class="container">
		<form id="commentListForm" name="commentListForm" method="post">
			<div id="commentList"></div>
		</form>
		<!-- 페이지 처리 영역 -->
		<div>
			<ul id="pagination">
			</ul>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			// 상품상세정보 로딩 시에 상품평 목록을 조회하여 출력
			getCommentList();
		});

	
		/*
		 ** 상품 등록
		 */
		function save_comment(pseq) {
			$.ajax({
				type : 'POST',
				url : 'comments/save',
				data : $("#commentForm").serialize(),
				success : function(data) {
					if (data == 'success') { // 상품평 등록 성공
						getCommentList(); // 상품평 목록 요청함수 호출
						$("#content").val("");
					} else if (data == 'fail') {
						alert("상품평 등록이 실패하였습니다. 다시 시도해 주세요.");
					} else if (data == 'not_logedin') {
						alert("상품평 등록은 로그인이 필요합니다.");
					}
				},
				error : function(request, status, error) {
					alert("error:" + error);
				}
			});
		}
	</script>
</body>
</html>



