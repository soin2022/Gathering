/**
 * 
 */

function go_update(){
    if(document.getElementById("password").value==""){
        alert("비밀번호를 입력해 주세요.");
        document.getElementById("password").focus();
        return false;
    } else if(document.getElementById("password").value != document.getElementById("password_check").value){
        alert("비밀번호가 일치하지 않습니다, 다시 입력해 주세요.");
        document.getElementById("password_check").focus();
        return false;
    } else if(document.getElementById("email1").value=="" || document.getElementById("email2").value==""){
        alert("이메일을 바르게 입력해 주세요");
        document.getElementById("email1").focus();
        return false;
    } else if(document.getElementById("phone1").value=="" || document.getElementById("phone2").value=="" || document.getElementById("phone3").value==""){
        alert("전화번호를 바르게 입력해주세요");
        return false;
    } else if(document.getElementById("address").value==""){
        alert("주소를 입력해주세요");
        return false;
    } else {
        document.getElementById("email").value=document.getElementById("email1").value + "@" + document.getElementById("email2").value;
        document.getElementById("phone").value=document.getElementById("phone1").value + document.getElementById("phone2").value + document.getElementById("phone3").value;

        document.getElementById("userUpdateForm").action="userUpdateForm";
        document.getElementById("userUpdateForm").submit();
        alert("회원정보가 수정되었습니다.");
    }

}


function deleteUser(){
    if(document.getElementById("user_id").value==""){
        alert("아이디를 입력해 주세요.");
        document.getElementById("user_id").focus();
        return false;
    } else if(document.getElementById("password").value == ""){
        alert("비밀번호를 입력해 주세요.");
        document.getElementById("password").focus();
        return false;
    } else {
        document.getElementById("userDeleteForm").action="userDeleteForm";
        document.getElementById("userDeleteForm").submit();
    }
}