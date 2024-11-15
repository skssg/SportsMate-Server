<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>구단 정보 수정</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/teamBoard/teamModify.css?after">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/default.css">
<style>
</style>
</head>
<body>
	<div class="wrap">
		<jsp:include page="/WEB-INF/views/common/header.jsp" />
		<br>
		<jsp:include page="/WEB-INF/views/common/nav.jsp" />
		<div id="login-wrap">
			<form action="" class="enroll-form" method="post"
				enctype="multipart/form-data">
				<div class="user-profile-wrap">
					<img
						src="${pageContext.request.contextPath}/resources/images/user_default_profile.png"
						alt="" id="profileImg"> <input type="file"
						name="userProfile" id="userProfile" style="display: none">
				</div>
				<div class="input-wrap">
					<span class="form-title">구단명</span> <br> <input type="text"
						name="teamName" placeholder="구단명을 입력해주세요.">
				</div>
				<div class="day-input-wrap">
				    <span class="form-title">활동 요일</span> <div class="day-select-wrap">
				    <div class="day-box" data-day="월">월</div>
				    <div class="day-box" data-day="화">화</div>
				    <div class="day-box" data-day="수">수</div>
				    <div class="day-box" data-day="목">목</div>
				    <div class="day-box" data-day="금">금</div>
				    <div class="day-box" data-day="토">토</div>
				    <div class="day-box" data-day="일">일</div>
				</div>
				</div>


				<div class="day-input-wrap">
				    <span class="form-title">활동 시간대</span> <div class="day-select-wrap">
				    <div class="time-box" data-time="아침">
				        <span class="time-label">아침</span>
				        <span class="time-range">06 ~ 10시</span>
				    </div>
				    <div class="time-box" data-time="낮">
				        <span class="time-label">낮</span>
				        <span class="time-range">10 ~ 18시</span>
				    </div>
				    <div class="time-box" data-time="저녁">
				        <span class="time-label">저녁</span>
				        <span class="time-range">18 ~ 24시</span>
				    </div>
				    <div class="time-box" data-time="심야">
				        <span class="time-label">심야</span>
				        <span class="time-range">24 ~ 06시</span>
				    </div>
				     </div>
				</div>

				<div class="input-wrap">
					<span class="form-title">활동 지역</span><br> <select
							name="activityRegion" id="activityRegion">
							<option disabled hidden selected>활동 지역을 선택해 주세요.</option>
							<option value="seoul">서울특별시</option>
					        <option value="busan">부산광역시</option>
					        <option value="daegu">대구광역시</option>
					        <option value="incheon">인천광역시</option>
					        <option value="gwangju">광주광역시</option>
					        <option value="daejeon">대전광역시</option>
					        <option value="ulsan">울산광역시</option>
					        <option value="sejong">세종특별자치시</option>
					        <option value="gyeonggi">경기도</option>
					        <option value="gangwon">강원도</option>
					        <option value="chungbuk">충청북도</option>
					        <option value="chungnam">충청남도</option>
					        <option value="jeonbuk">전라북도</option>
					        <option value="jeonnam">전라남도</option>
					        <option value="gyeongbuk">경상북도</option>
					        <option value="gyeongnam">경상남도</option>
					        <option value="jeju">제주특별자치도</option>
						</select>
				</div>
				<div class="input-wrap">
					<span class="form-title">구단 정원</span><br> <select
							name="memberCount" id="memberCount">
							<option disabled hidden selected>구단 정원을 선택해 주세요.</option>
							<option value="5">5명</option>
					        <option value="6">6명</option>
					        <option value="7">7명</option>
					        <option value="8">8명</option>
					        <option value="9">9명</option>
					        <option value="10">10명</option>
					        <option value="11">11명</option>
					        <option value="12">12명</option>
					        <option value="13">13명</option>
					        <option value="14">14명</option>
					        <option value="15">15명</option>
					        <option value="16">16명</option>
					        <option value="17">17명</option>
					        <option value="18">18명</option>
					        <option value="19">19명</option>
					        <option value="20">20명</option>
					        <option value="21">21명</option>
					        <option value="22">22명</option>
					        <option value="23">23명</option>
					        <option value="24">24명</option>
					        <option value="25">25명</option>
						</select>
				</div>
				<div class="input-wrap">
					<span class="form-title">구단 소개</span> <br>
					<textarea class="team-introduce"></textarea>
				</div>


				<div class="submit-btn">
					<button type="submit">수정 완료</button>
				</div>
			</form>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/resources/js/teamBoard/teamModify.js"></script>
</body>
</html>