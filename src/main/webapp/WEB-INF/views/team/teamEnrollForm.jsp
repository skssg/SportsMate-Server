<%--
  Created by IntelliJ IDEA.
  User: jun
  Date: 2024. 11. 15.
  Time: 01:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/team/TeamEnrollForm.css">
    <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/resources/js/team/teamEnrollForm.js"></script>
    <title>SportsMate - 구단 창설</title>
</head>
<body>
    <div class="wrap">
        <jsp:include page="../common/header.jsp"/>
        <div id="enroll-wrap">
            <form action="create.tm" class="enroll-form" method="post" enctype="multipart/form-data">
                <input type="hidden" name="memNo" value="${loginMember.memNo}">
                <div class="user-profile-wrap">
                    <img src="${pageContext.request.contextPath}/resources/images/user_default_profile.png" alt=""
                         id="profileImg">
                    <input type="file" name="userProfile" id="userProfile" style="display: none">
                </div>
                <div class="input-wrap">
                    <span class="form-title">구단명</span><br>
                    <input type="text" name="teamName" placeholder="구단명을 입력해주세요." required>
                </div>
                <div class="input-wrap">
                    <span class="form-title">활동 요일</span>
                    <div class="day-select-wrap">
                        <div class="day-box" data-day="monday">월</div>
                        <div class="day-box" data-day="tuesday">화</div>
                        <div class="day-box" data-day="wednesday">수</div>
                        <div class="day-box" data-day="thursday">목</div>
                        <div class="day-box" data-day="friday">금</div>
                        <div class="day-box" data-day="saturday">토</div>
                        <div class="day-box" data-day="sunday">일</div>
                    </div>
                    <input type="hidden" name="activityDays" id="activityDays">
                </div>
                <div class="input-wrap">
                    <span class="form-title">활동 시간대</span>
                    <div class="day-select-wrap">
                        <div class="time-box" data-time="morning">
                            <span class="time-label">아침</span>
                            <span class="time-range">06 ~ 10시</span>
                        </div>
                        <div class="time-box" data-time="day">
                            <span class="time-label">낮</span>
                            <span class="time-range">10 ~ 18시</span>
                        </div>
                        <div class="time-box" data-time="evening">
                            <span class="time-label">저녁</span>
                            <span class="time-range">18 ~ 24시</span>
                        </div>
                        <div class="time-box" data-time="midnight">
                            <span class="time-label">심야</span>
                            <span class="time-range">24 ~ 06시</span>
                        </div>
                    </div>
                    <input type="hidden" name="activityTime">
                </div>
                <div class="input-wrap">
                    <span class="form-title">활동 지역</span><br>
                    <select name="activityArea" id="activityArea">
                        <option disabled hidden selected>활동 지역을 선택하세요.</option>
                        <option value="000-001">서울시 강남구</option>
                        <option value="000-002">서울시 강북구</option>
                        <option value="000-003">서울시 종로구</option>
                        <option value="000-004">서울시 중구</option>
                        <option value="000-005">서울시 용산구</option>
                        <option value="000-006">서울시 성동구</option>
                        <option value="000-007">서울시 광진구</option>
                        <option value="000-008">서울시 동대문구</option>
                        <option value="000-009">서울시 중랑구</option>
                        <option value="000-010">서울시 성북구</option>
                        <option value="000-011">서울시 도봉구</option>
                        <option value="000-012">서울시 노원구</option>
                        <option value="000-013">서울시 노원구</option>
                        <option value="000-014">서울시 은평구</option>
                        <option value="000-015">서울시 서대문구</option>
                        <option value="000-016">서울시 마포구</option>
                        <option value="000-017">서울시 양천구</option>
                        <option value="000-018">서울시 구로구</option>
                        <option value="000-019">서울시 금천구</option>
                        <option value="000-020">서울시 영등포구</option>
                        <option value="000-021">서울시 동작구</option>
                        <option value="000-022">서울시 관악구</option>
                        <option value="000-023">서울시 서초구</option>
                        <option value="000-024">서울시 송파구</option>
                        <option value="000-025">서울시 강동구</option>
                    </select>
                </div>
                <div class="input-wrap">
                    <span class="form-title">구단 정원</span><br>
                    <select name="teamMaxPerson" id="teamMaxPerson" required>
                    </select>
                </div>
                <div class="split-bar"></div>
                <div class="input-wrap">
                    <div class="category-checkBox-wrap">
                        <div class="category-checkBox">
                            <input type="checkbox" name="teamCategory" id="soccer" value="soccer">
                            <label for="soccer">축구</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="teamCategory" id="futsal" value="futsal">
                            <label for="futsal">풋살</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="teamCategory" id="basketball" value="basketball">
                            <label for="basketball">농구</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="teamCategory" id="baseball" value="baseball">
                            <label for="baseball">야구</label>
                        </div>
                    </div>
                </div>
                <div class="input-wrap">
                    <span class="form-title">구단 소개</span><br>
                    <textarea name="teamDescription" id="teamDescription" cols="50" rows="10" placeholder="구단 소개글을 입력하세요." style="resize: none"></textarea>
                </div>
                <div class="submit-btn">
                    <button type="submit" id="submit-btn">구단 창설</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
