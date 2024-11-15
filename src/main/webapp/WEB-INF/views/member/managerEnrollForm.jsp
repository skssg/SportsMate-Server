<%--
  Created by IntelliJ IDEA.
  User: jun
  Date: 2024. 11. 5.
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <!-- font -->
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Nanum+Gothic&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member/managerEnrollForm.css">
    <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"></script>
    <!-- jQuery Timepicker 추가 -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.13.18/jquery.timepicker.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-timepicker/1.13.18/jquery.timepicker.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/member/managerEnrollForm.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<body>

    <div class="wrap">
        <jsp:include page="/WEB-INF/views/common/header.jsp"/>
        <div id="enroll-wrap">
            <form action="manager_enroll.me" class="enroll-form" method="post" enctype="multipart/form-data" >
                <div class="input-wrap">
                    <span class="form-title">이메일</span> <br>
                    <input type="email" name="memEmail" placeholder="이메일을 입력해주세요.">
                </div>
                <div class="input-wrap">
                    <span class="form-title">비밀번호</span><br>
                    <input type="password" name="memPwd" placeholder="비밀번호를 입력해주세요.">
                </div>
                <div class="input-wrap">
                    <span class="form-title">비밀번호 확인</span><br>
                    <input type="password" name="pwdCheck" placeholder="비밀번호를 한 번 더 입력해주세요.">
                </div>
                <div class="input-wrap">
                    <span class="form-title">이름</span><br>
                    <input type="text" name="memName" placeholder="이름을 입력해주세요.">
                </div>
                <div class="input-wrap">
                    <span class="form-title">성별</span><br>
                    <select name="memGender" id="">
                        <option disabled hidden selected>성별</option>
                        <option value="M">남자</option>
                        <option value="F">여자</option>
                    </select>
                </div>
                <div class="input-wrap">
                    <span class="form-title">생년월일</span><br>
                    <div class="birth-wrap">
                        <div class="year-wrap">
                            <select name="year" id="year"></select>
                        </div>
                        <div class="month-wrap">
                            <select name="month" id="month"></select>
                        </div>
                        <div class="day-wrap">
                            <select name="day" id="day"></select>
                        </div>
                    </div>
                </div>
                <div class="input-wrap">
                    <span class="form-title">핸드폰 번호</span><br>
                    <div class="birth-wrap">
                        <div class="year-wrap">
                            <select name="phone1" id="phone1">
                                <option value="010">010</option>
                            </select>
                        </div>
                        <div class="month-wrap">
                            <input type="number" name="phone2" id="phone2" maxlength="4">
                        </div>
                        <div class="day-wrap">
                            <input type="number" name="phone3" id="phone3" maxlength="4">
                        </div>
                    </div>
                </div>
<%--                <div class="input-wrap">--%>
<%--                    <span class="form-title">주소</span><br>--%>
<%--                    <input type="text" name="memAdd" placeholder="주소를 입력해주세요.">--%>
<%--                </div>--%>
                <div class="input-wrap">
                    <span class="form-title">주소</span> <br>
                    <div class="address-container">
                        <input type="text" class="zipcode" id="memberZipcode" name="memberZipcode" placeholder="우편번호">
                        <button type="button" class="address-search-button" onclick="addSearch('memberZipcode','memberBaseAdd','memberDetailAdd')">주소 검색</button>
                    </div>
                    <input type="text" class="basic-address" id="memberBaseAdd" name="memberBaseAdd" placeholder="기본 주소">
                    <input type="text" class="detail-address" id="memberDetailAdd" name="memberDetailAdd" placeholder="상세 주소">
                </div>
                <div class="split-bar"></div>
                <div class="input-wrap">
                    <div class="category-checkBox-wrap">
                        <div class="category-checkBox">
                            <input type="checkbox" name="category" id="soccer" value="soccer">
                            <label for="soccer">축구</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="category" id="futsal" value="futsal">
                            <label for="futsal">풋살</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="category" id="basketball" value="basketball">
                            <label for="basketball">농구</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="category" id="baseball" value="baseball">
                            <label for="baseball">야구</label>
                        </div>
                    </div>
                </div>
                <div class="input-wrap">
                    <span class="form-title">구장명</span> <br>
                    <input type="text" name="stadiumName" placeholder="구장명을 입력하세요.">
                </div>

                <div class="input-wrap">
                    <span class="form-title">주소</span> <br>
                    <div class="address-container">
                        <input type="text" class="zipcode" id="zipcode" name="zipcode" placeholder="우편번호">
                        <button type="button" class="address-search-button" onclick="addSearch('zipcode','baseAdd', 'detailAdd')">주소 검색</button>
                    </div>
                    <input type="text" class="basic-address" id="baseAdd" name="baseAdd" placeholder="기본 주소">
                    <input type="text" class="detail-address" id="detailAdd" name="detailAdd" placeholder="상세 주소">
                </div>

                <div class="input-wrap">
                    <span class="form-title">가격</span> <br>
                    <input type="number" name="price" placeholder="한 타임의 가격을 입력하세요.">
                </div>


                <div class="input-wrap">
                    <label>운영 시간</label>
                    <div class="time-group">
                        <input type="time" id="start-time" name="startTime" value="09:00">
                        <span>~</span>
                        <input type="time" id="end-time" name="endTime" value="18:00">
                    </div>
                </div>

                <div class="input-wrap">
                    <span class="form-title">편의 시설</span><br>
                    <div class="category-checkBox-wrap">
                        <div class="category-checkBox">
                            <input type="checkbox" name="amenities" id="toilet" value="toilet">
                            <label for="toilet">화장실</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="amenities" id="drink" value="drink">
                            <label for="drink">자판기</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="amenities" id="parkingLot" value="parkingLot">
                            <label for="parkingLot">주차장</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="amenities" id="smoke" value="smoke">
                            <label for="smoke">흡연실</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="amenities" id="shower" value="shower">
                            <label for="shower">샤워실</label>
                        </div>
                    </div>
                </div>

                <div class="input-wrap">
                    <span class="form-title">대여 물품</span><br>
                    <div class="rental-checkBox-wrap">
                        <div class="category-checkBox">
                            <input type="checkbox" name="rental" id="ball" value="ball">
                            <label for="ball">공</label>
                        </div>
                        <div class="category-checkBox">
                            <input type="checkbox" name="rental" id="vest" value="vest">
                            <label for="vest">조끼</label>
                        </div>
                    </div>
                </div>

                <div class="input-wrap">
                    <span class="form-title">구장 대표 이미지</span><br>
                    <div class="image-upload-group">
                        <input type="file" name="thumbnailImg" id="thumbnail">
                    </div>
                </div>

                <div class="input-wrap">
                    <span class="form-title">구장 상세 이미지</span><br>

                    <div class="image-upload-group">
                        <input type="file" name="detailImg" id="detail" multiple>
                    </div>
                </div>
                <div class="split-bar"></div>
                <div class="input-wrap">
                    <input type="checkbox" name="entireAgreement" id="entire-agreement" class="agreement"> 전체 동의
                    <div class="split-bar-agreement"></div>
                    <input type="checkbox" name="termsOfUseAgreement" id="terms-of-use" class="agreement"> 이용약관 동의 (필수)
                    <br>
                    <input type="checkbox" name="privacyAgreement" id="privacy-agreement" class="agreement"> 개인정보 수집 및
                    이용 동의 (필수)
                </div>

                <div class="submit-btn">
                    <button type="submit" disabled class="none-clickable">회원가입</button>
                </div>

            </form>
        </div>
    </div>

    </div>
</body>
</html>