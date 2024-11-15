<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>네비게이션 바</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/nav.css">

</head>
<body>
 
    <div class="nav-bar"> 
        <a href="#" class="nav-item">
            <img src="${pageContext.request.contextPath}/resources/images/grount-btn.png" 
                 alt="구장검색">구장</a>

        <a href="teamMenu.tm" class="nav-item">
            <img src="${pageContext.request.contextPath}/resources/images/team-btn.png"
                 alt="구단메뉴">구단메뉴</a>

        <a href="#" class="nav-item">
            <img src="${pageContext.request.contextPath}/resources/images/home-btn.png"
                 alt="홈">홈</a>

        <a href="boardList.bd" class="nav-item">
            <img src="${pageContext.request.contextPath}/resources/images/community-btn.png"
                 alt="커뮤니티">커뮤니티</a>

        <a href="#" class="nav-item">
            <img src="${pageContext.request.contextPath}/resources/images/rank-btn.png"
                 alt="랭킹">랭킹</a>
    </div>

</body>
</html>
