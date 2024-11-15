/**
 *
 */
$(document).ready(function () {
    $('#profileImg').on('click', profileUpload);
    $('.day-box').on('click',dayToggle);
    $('.time-box').on('click',selectTime);
    setMaxMember();
    // 종목 체크박스 클릭 시 해당 체크박스 외 나머지 체크 해제
    $(`input[type="checkbox"][name="category"]`).on('click', function() {
        checkToRadio($(this));
    });
});

const profileUpload = () => {
    $('#userProfile').click();
    $('#userProfile').on('change', profileUpdate);
};

const profileUpdate = (ev) => {
    const file = ev.target.files[0];
    if (file) {
        const imgUrl = URL.createObjectURL(file);
        $('#profileImg').attr('src', imgUrl);
        $('#profileImg').on('load', () => URL.revokeObjectURL(imgUrl));
    }
};


const dayToggle = (event) => {
    const target = $(event.currentTarget);
    target.toggleClass('selected');

    // 선택된 요일을 배열로 수집
    const selectedDays = $('.day-box.selected').map(function () {
        return $(this).data('day');
    }).get();

    // hidden input에 배열 값 설정 (쉼표로 구분된 문자열)
    $('#activityDays').val(selectedDays.join(','));
};
const selectTime = (ev) => {
    // 모든 time-box에서 selected 클래스를 제거
    $('.time-box').removeClass('selected');

    // 클릭된 요소에만 selected 클래스 추가
    const target = $(ev.currentTarget);
    target.addClass('selected');

    // 선택된 시간의 data-time 값을 가져와 hidden input에 설정
    const selectedTime = target.data('time');
    // const selectedTime = target.attr('data-time'); // data-time 속성 가져오기
    // console.log("Selected Time (attr):", selectedTime);
    // console.log(selectedTime)
    $('input[type=hidden][name=activityTime]').val(selectedTime);
};
const setMaxMember = ()=>{
    $('#teamMaxPerson').append("<option disabled hidden selected>최대 구단 정원을 선택하세요.")
    for(let i = 1; i<=30; i++){
        $("#teamMaxPerson").append("<option value='" + i + "'>" + i + "</option>");
    }
}
// 클릭된 체크박스를 제외하고 모든 체크박스를 해제
const checkToRadio = (checkbox) => {
    // 클릭된 체크박스를 제외하고 다른 모든 체크박스를 해제
    $(`input[type="checkbox"][name="teamCategory"]`).not(checkbox).prop('checked', false);
    // 클릭된 체크박스의 상태를 유지
    checkbox.prop('checked', true);
};
// document.querySelectorAll('.time-box').forEach(day => {
//     day.addEventListener('click', function() {
//         // 모든 day-box에서 selected 클래스를 제거
//         document.querySelectorAll('.time-box').forEach(box => {
//             box.classList.remove('selected');
//         });
//         // 클릭된 요소에만 selected 클래스 추가
//         this.classList.add('selected');
//     });
// });
