$(document).ready(function () {
    //DOM이 준비되고
    $("#layer_btn").click(function () {
        // #toggleButton2를 클릭하면
        $("#layer_content").slideToggle(); // #moreMenu2를 알아서 토.글!
        $(this).toggleClass("active");
        if ($(this).children().text() == "닫기") {
            $(this).children().text("자세히 보기");
        } else {
            $(this).children().text("닫기");
        }
    });
});