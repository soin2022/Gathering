<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>���̵� �ߺ� üũ</title>
    <link href="CSS/subpage.css" rel="stylesheet">
    <style type="text/css"></style>
</head>

<body>
    <div id="wrap">
        <h1>ID �ߺ�Ȯ��</h1>
        <form method=post name=formm id="theform" style="margin-right:0 " action="id_check_form">
            User ID <input type=text name="user_id" value="${user_id}">
            <input type=submit value="�˻�" class="submit"><br>
            <div style="margin-top: 20px">
                <c:if test="${message == 1}">
                    <script type="text/javascript">
                        opener.document.getElementById("user_id").value="";
                    </script>
                    ${user_id}�� �̹� ������� ���̵��Դϴ�.
                </c:if>
                <c:if test="${message==-1}">
                    ${user_id}�� ��� ������ ID�Դϴ�.
                    <input type="button" value="���" onclick="idok()">
                </c:if>
            </div>
        </form>
    </div>
    
    
<!-- join ��ũ��Ʈ -->    
<script type="text/javascript" src="../js/join.js"></script>    
</body>

</html>