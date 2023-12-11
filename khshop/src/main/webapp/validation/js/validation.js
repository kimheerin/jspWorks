
/* 아이디, 비밀번호 필수 입력 */
function checkForm() {
    var uidValue = document.getElementById("uid").value;
    var passwdValue = document.getElementById("passwd").value;

    //필수 입력 확인
    if (uidValue === "" || passwdValue === "") {
        alert("아이디와 비밀번호는 필수 입력사항입니다.");
        return false;
    }
}