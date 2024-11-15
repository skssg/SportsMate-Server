<%--
  Created by IntelliJ IDEA.
  User: jun
  Date: 2024. 11. 5.
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member/enrollSelectForm.css">
    <title>SportsMate - 회원가입</title>
</head>
<body>
    <div class="wrap">
        <jsp:include page="../common/header.jsp" />
        <div class="select-wrap">
            <div class="user" onclick="location.href = 'memberEnrollForm.me'">
                <img src="${pageContext.request.contextPath}/resources/images/user.png" alt=""><br>
                <span>사용자 회원가입</span>
                <p>구단의 가입하거나 구단을 창설하여 플레이 해보세요!</p>
            </div>
            <div class="manager" onclick="location.href = 'managerEnrollForm.me'">
                <img src="${pageContext.request.contextPath}/resources/images/manager.png" alt=""> <br>
                <span>구장 관리자 회원가입</span>
                <p>구장을 저희 서비스에 등록 및 관리하실 수 있습니다.</p>
            </div>
        </div>
    </div>
</body>
</html>
