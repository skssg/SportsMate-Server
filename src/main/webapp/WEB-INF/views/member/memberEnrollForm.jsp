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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/member/memberEnrollForm.css">
    <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
            crossorigin="anonymous"></script>
    <script src="${pageContext.request.contextPath}/resources/js/member/memberEnrollForm.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <title>SportsMate - 회원가입</title>
</head>
<body>
    <div class="wrap">
        <jsp:include page="../common/header.jsp"/>
        <div id="enroll-wrap">
            <form action="member_enroll.me" class="enroll-form" method="post" enctype="multipart/form-data">
                <div class="user-profile-wrap">
                    <img src="${pageContext.request.contextPath}/resources/images/user_default_profile.png" alt="" id="profileImg">
                    <input type="file" name="userProfile" id="userProfile" style="display: none">
                </div>
                <div class="input-wrap">
                    <span class="form-title">이메일</span> <br>
                    <input type="email" name="memEmail" placeholder="이메일을 입력해주세요.">
                    <span id="emailCheckResult" class="hide"></span>
                </div>
                <div class="input-wrap">
                    <span class="form-title">비밀번호</span><br>
                    <input type="password" name="memPwd" placeholder="비밀번호를 입력해주세요.">
                    <span id="checkPwdCondition"></span>
                </div>
                <div class="input-wrap">
                    <span class="form-title">비밀번호 확인</span><br>
                    <input type="password" name="pwdCheck" placeholder="비밀번호를 한 번 더 입력해주세요.">
                    <span id="checkPwdResult"></span>
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
                            <input type="number" name="phone2" id="phone2"
                                   oninput="this.value = this.value.slice(0, 4)">
                        </div>
                        <div class="day-wrap">
                            <input type="number" name="phone3" id="phone3"
                                   oninput="this.value = this.value.slice(0, 4)">
                        </div>
                    </div>
                </div>
                <div class="input-wrap">
                    <span class="form-title">주소</span> <br>
                    <div class="address-container">
                        <input type="text" class="zipcode" id="zipcode" name="memberZipcode" placeholder="우편번호">
                        <button type="button" class="address-search-button"
                                onclick="addSearch('zipcode','baseAdd', 'detailAdd')">주소 검색
                        </button>
                    </div>
                    <input type="text" class="basic-address" id="baseAdd" name="memberBaseAdd" placeholder="기본 주소">
                    <input type="text" class="detail-address" id="detailAdd" name="memberDetailAdd" placeholder="상세 주소">
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
                <div id="soccer-info">
                    <span class="category-name">축구</span><br>
                    <div class="input-wrap">
                        <span class="form-title">포지션</span><br>
                        <select name="soccerPosition" id="soccerPosition">
                            <option disabled hidden selected>포지션을 선택해 주세요.</option>
                            <option value="LWF">LWF</option>
                            <option value="ST">ST</option>
                            <option value="RWF">RWF</option>
                            <option value="LM">LM</option>
                            <option value="CM">CM</option>
                            <option value="RM">RM</option>
                            <option value="LB">LB</option>
                            <option value="CB">CB</option>
                            <option value="RB">RB</option>
                            <option value="GK">GK</option>
                        </select>
                    </div>
                    <div class="input-wrap">
                        <span class="form-title">실력 수준</span><br>
                        <select name="soccerSkill" id="soccerSkill">
                            <option disabled hidden selected>실력 수준을 선택해 주세요.</option>
                            <option value="pro1">프로1</option>
                            <option value="pro2">프로2</option>
                            <option value="pro3">프로3</option>
                            <option value="semiPro1">세미프로1</option>
                            <option value="semiPro2">세미프로2</option>
                            <option value="semiPro3">세미프로3</option>
                            <option value="amateur1">아마추어1</option>
                            <option value="amateur2">아마추어2</option>
                            <option value="amateur3">아마추어3</option>
                            <option value="beginner1">비기너1</option>
                            <option value="beginner2">비기너2</option>
                            <option value="beginner3">비기너3</option>
                        </select>
                        <div class="description-skill-wrap">
                            <div>프로 : 고등학교 이상 대학, 프로 선수 실력</div>
                            <div>세미프로 : 일반인 중 에이스, 안정적인 벨런스를 가진 실력</div>
                            <div>아마추어 : 기본기를 어느정도 갖추고 실전 경험을 쌓는 중</div>
                            <div>비기너 : 시작한지 얼마 안돼 서툰 기본기</div>
                        </div>
                    </div>
                    <div class="split-bar"></div>
                </div>
                <div id="futsal-info">
                    <span class="category-name">풋살</span><br>
                    <div class="input-wrap">
                        <span class="form-title">포지션</span><br>
                        <select name="futsalPosition" id="futsalPosition">
                            <option disabled hidden selected>포지션을 선택해 주세요.</option>
                            <option value="ST">ST</option>
                            <option value="DF">DF</option>
                            <option value="GK">GK</option>
                        </select>
                    </div>
                    <div class="input-wrap">
                        <span class="form-title">실력 수준</span><br>
                        <select name="futsalSkill" id="futsalSkill">
                            <option disabled hidden selected>실력 수준을 선택해 주세요.</option>
                            <option value="pro1">프로1</option>
                            <option value="pro2">프로2</option>
                            <option value="pro3">프로3</option>
                            <option value="semiPro1">세미프로1</option>
                            <option value="semiPro2">세미프로2</option>
                            <option value="semiPro3">세미프로3</option>
                            <option value="amateur1">아마추어1</option>
                            <option value="amateur2">아마추어2</option>
                            <option value="amateur3">아마추어3</option>
                            <option value="beginner1">비기너1</option>
                            <option value="beginner2">비기너2</option>
                            <option value="beginner3">비기너3</option>
                        </select>
                        <div class="description-skill-wrap">
                            <div>프로 : 고등학교 이상 대학, 프로 선수 실력</div>
                            <div>세미프로 : 일반인 중 에이스, 안정적인 벨런스를 가진 실력</div>
                            <div>아마추어 : 기본기를 어느정도 갖추고 실전 경험을 쌓는 중</div>
                            <div>비기너 : 시작한지 얼마 안돼 서툰 기본기</div>
                        </div>
                    </div>
                    <div class="split-bar"></div>
                </div>

                <div id="basketball-info">
                    <span class="category-name">농구</span><br>
                    <div class="input-wrap">
                        <span class="form-title">포지션</span><br>
                        <select name="basketballPosition" id="basketballPosition">
                            <option disabled hidden selected>포지션을 선택해 주세요.</option>
                            <option value="ST">ST</option>
                            <option value="DF">DF</option>
                            <option value="GK">GK</option>
                        </select>
                    </div>
                    <div class="input-wrap">
                        <span class="form-title">실력 수준</span><br>
                        <select name="basketballSkill" id="basketballSkill">
                            <option disabled hidden selected>실력 수준을 선택해 주세요.</option>
                            <option value="pro1">프로1</option>
                            <option value="pro2">프로2</option>
                            <option value="pro3">프로3</option>
                            <option value="semiPro1">세미프로1</option>
                            <option value="semiPro2">세미프로2</option>
                            <option value="semiPro3">세미프로3</option>
                            <option value="amateur1">아마추어1</option>
                            <option value="amateur2">아마추어2</option>
                            <option value="amateur3">아마추어3</option>
                            <option value="beginner1">비기너1</option>
                            <option value="beginner2">비기너2</option>
                            <option value="beginner3">비기너3</option>
                        </select>
                        <div class="description-skill-wrap">
                            <div>프로 : 고등학교 이상 대학, 프로 선수 실력</div>
                            <div>세미프로 : 일반인 중 에이스, 안정적인 벨런스를 가진 실력</div>
                            <div>아마추어 : 기본기를 어느정도 갖추고 실전 경험을 쌓는 중</div>
                            <div>비기너 : 시작한지 얼마 안돼 서툰 기본기</div>
                        </div>
                    </div>
                    <div class="split-bar"></div>
                </div>

                <div id="baseball-info">
                    <span class="category-name">야구</span><br>
                    <div class="input-wrap">
                        <span class="form-title">포지션</span><br>
                        <select name="baseballPosition" id="baseballPosition">
                            <option disabled hidden selected>포지션을 선택해 주세요.</option>
                            <option value="ST">ST</option>
                            <option value="DF">DF</option>
                            <option value="GK">GK</option>
                        </select>
                    </div>
                    <div class="input-wrap">
                        <span class="form-title">실력 수준</span><br>
                        <select name="baseballSkill" id="baseballSkill">
                            <option disabled hidden selected>실력 수준을 선택해 주세요.</option>
                            <option value="pro1">프로1</option>
                            <option value="pro2">프로2</option>
                            <option value="pro3">프로3</option>
                            <option value="semiPro1">세미프로1</option>
                            <option value="semiPro2">세미프로2</option>
                            <option value="semiPro3">세미프로3</option>
                            <option value="amateur1">아마추어1</option>
                            <option value="amateur2">아마추어2</option>
                            <option value="amateur3">아마추어3</option>
                            <option value="beginner1">비기너1</option>
                            <option value="beginner2">비기너2</option>
                            <option value="beginner3">비기너3</option>
                        </select>
                        <div class="description-skill-wrap">
                            <div>프로 : 고등학교 이상 대학, 프로 선수 실력</div>
                            <div>세미프로 : 일반인 중 에이스, 안정적인 벨런스를 가진 실력</div>
                            <div>아마추어 : 기본기를 어느정도 갖추고 실전 경험을 쌓는 중</div>
                            <div>비기너 : 시작한지 얼마 안돼 서툰 기본기</div>
                        </div>
                        <div class="split-bar"></div>
                    </div>
                </div>
                <div class="input-wrap">
                    <input type="checkbox" name="entireAgreement" id="entire-agreement" class="agreement"> 전체 동의
                    <div class="split-bar-agreement"></div>
                    <input type="checkbox" name="termsOfUseAgreement" id="terms-of-use" class="agreement"> 이용약관 동의 (필수)
                    <br>
                    <input type="checkbox" name="privacyAgreement" id="privacy-agreement" class="agreement"> 개인정보 수집 및
                    이용 동의 (필수)
                </div>

                <div class="submit-btn">
                    <button type="submit" id="submitBtn" class="none-clickable">회원가입</button>
                </div>

            </form>
        </div>
    </div>
</body>
</html>
