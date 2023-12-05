<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 중복 검사</title>
<script src="../resources/js/jquery-3.7.1.js"></script>
<script type="text/javascript">
   $(function(){
      $("h3").css("color","grey");
   });
     function checkId(){
         //alert("text..");
         //input의 선택자(id) 값을 사용
         if($("#t_id").val() == ""){
            alert("아이디를 입력해 주세요.");
            t_id.focus();
            return false;
         }
         
         $.ajax({
            type: "get",
            dataType: "text",
            url: "/test/checkid",	// http://localhost:8080/test/checkid.jsp
            data: {id: $("#t_id").val()}, //id 
            success: function(data){
               if(data == "usable"){
                  $("#message").text("사용 가능한 아이디입니다.")
               }else{ //data == "not_usable"
                  $("#message").text("이미 사용 중인 아이디입니다.")

               }
            },
            error: function(){
               alert("Error")
            }
         });
      }

</script>
</head>
<body>
   <h3>ID 중복 검사</h3>
   <p><input type="text" id="t_id" name="id">
   <input type="button" value="중복 확인" onclick="checkId()"></p>
   <div id="message"></div>
</body>
</html>