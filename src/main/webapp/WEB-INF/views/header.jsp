<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>header</title>
<link
	href="https://fonts.googleapis.com/css2?family=Bebas+Neue&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/common/header.css" rel="stylesheet" >
<style>
</style>
</head>
<body>
	<!-- <div class="header-container">
		<div class="header-logo">
			<div>
				<a class="header-logo" href="index.jsp">
					<img src="${pageContext.request.contextPath}/resources/images/Logo.png" />
				</a>
			</div>
			<div>
				<p> SportMate </p>
			</div>
		</div>
		<div class="header-input">
			<form id="searchPlaceForm" action="List.sm" method="get">
				<input placeholder="구장명을 입력하시오." /> <img
					src="${pageContext.request.contextPath}/resources/images/search-btn.png" onclick="submitForm()" style="cursor: pointer;" />
			</form>
		</div>
		<div class="header-userImg">
			 <a href="login.me">
				<img src="${pageContext.request.contextPath}/resources/images/user_profile.png" />
			</a>
		</div>
	</div>

	<div class="additional-container">
		<div class="header-appTop">
			<div class="header-logo">
				<a class="header-logo" href="index.jsp">
					<img src="${pageContext.request.contextPath}/resources/images/Logo.png" />
				</a>
				<p> SportMate</p>
			</div>
			<div class="header-userImg">
				<a href="login.me">
					<img src="${pageContext.request.contextPath}/resources/images/user_profile.png" />
				</a>
			</div>
		</div>
		<div class="header-input">
			<form id="searchPlaceForm" action="List.sm" method="get">
				<input placeholder="구장명을 입력하시오." /> <img
					src="resources/img/search-btn.png" onclick="submitForm()" style="cursor: pointer;" />
			</form>
		</div>
	</div>
	
	<script>
	    function submitForm() {
	        document.getElementById("searchPlaceForm").submit(); // 폼 제출
	    }
	</script> -->

	<div class="header-div">
		<div class="logo-div">
			<img src="${pageContext.request.contextPath}/resources/images/Logo.png" class="logo-img" alt="">
			SportMate
		</div>

		<div class="search-bar">
			<form action="" id="search-bar-form">
				<input type="text" placeholder="구장명을 입력하세요.">
				<button><img src="${pageContext.request.contextPath}/resources/images/search-btn.png" class="search-btn"></button>
			</form>
		</div>

		<div class="user-icon">
			<img src="${pageContext.request.contextPath}/resources/images/user_profile.png" class="user-img" alt="">
		</div>
	</div>
	<div class="search-bar-m">
		<form action="" id="search-bar-form">
			<input type="text" placeholder="구장명을 입력하세요.">
			<button><img src="${pageContext.request.contextPath}/resources/images/search-btn.png" class="search-btn"></button>
		</form>
	</div>
</body>
</html>