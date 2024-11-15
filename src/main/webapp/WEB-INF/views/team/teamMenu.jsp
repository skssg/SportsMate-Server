<%--
  Created by IntelliJ IDEA.
  User: jun
  Date: 2024. 11. 14.
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/team/teamMenu.css">
    <title>SportsMate - 구단 메뉴</title>
</head>
<body>
    <div class="wrap">
        <jsp:include page="../common/header.jsp"/>
        <jsp:include page="../common/nav.jsp"/>
        <div class="select-wrap">
            <div class="btn-wrap">
                <div class="btn-title">구단 창설</div>
                <div class="user" onclick="location.href = 'teamEnrollForm.tm'">
                    <img src="${pageContext.request.contextPath}/resources/images/team_create_btn.png" alt="">
                </div>
            </div>
            <div class="btn-wrap">
                <div class="btn-title">단원 모집</div>
                <div class="manager" onclick="location.href = 'memberRecruit.tm'">
                    <img src="${pageContext.request.contextPath}/resources/images/team_ recruit_btn.png" alt="">
                </div>
            </div>
        </div>
        <jsp:include page="../common/footer.jsp"/>
    </div>
</body>
</html>
단원 모집