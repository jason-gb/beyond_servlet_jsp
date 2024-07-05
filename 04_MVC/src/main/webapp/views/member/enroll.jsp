<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${pageContext.request.contextPath}"/>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    h2 {
        text-align: center;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 400px;
        margin: auto;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 8px 12px;
        text-align: left;
        vertical-align: middle;
    }
    th {
        width: 30%;
        background-color: #f9f9f9;
        border-bottom: 1px solid #ddd;
        white-space: nowrap; /* 줄바꿈 방지 */
        text-align: center; /* 가운데 정렬 */
    }
    td {
        width: 70%;
    }
    input[type="text"], input[type="password"] {
        width: calc(100% - 24px);
        padding: 8px;
        margin: 4px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    input[type="submit"], input[type="reset"] {
        width: 48%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #5cb85c;
        color: white;
        cursor: pointer;
        margin-top: 10px;
    }
    input[type="reset"] {
        background-color: #d9534f;
    }
    input[type="submit"]:hover {
        background-color: #4cae4c;
    }
    input[type="reset"]:hover {
        background-color: #c9302c;
    }
    label {
        margin-right: 10px;
    }
    /* 추가된 부분 */
    td label {
        display: block;
        text-align: left;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>회원 가입</h2>
        <form action="${path}/member/enroll" method="post">
            <table>
                <tr>
                    <th><label for="userId">아이디</label></th>
                    <td><input type="text" id="userId" name="userId" placeholder="아이디(4글자 이상)" required="required" /></td>
                </tr>
                <tr>
                    <th><label for="userPwd">패스워드</label></th>
                    <td><input type="password" id="userPwd" name="userPwd" placeholder="패스워드" required="required"/></td>
                </tr>
                <tr>
                    <th><label for="userPwd2">패스워드 확인</label></th>
                    <td><input type="password" id="userPwd2" name="userPwd2" placeholder="패스워드 확인" /></td>
                </tr>
                <tr>
                    <th><label for="userName">이름</label></th>
                    <td><input type="text" id="userName" name="userName"></td>
                </tr>
                <tr>
                    <th><label for="phone">휴대전화</label></th>
                    <td><input type="text" id="phone" name="phone" placeholder="(-없이)01011112222" maxlength="11"></td>
                </tr>
                <tr>
                    <th><label for="email">이메일</label></th>
                    <td><input type="text" id="email" name="email" placeholder="adc@abc.com"></td>
                </tr>
                <tr>
                    <th><label for="address">주소</label></th>
                    <td><input type="text" id="address" name="address"></td>
                </tr>
                <tr>
                    <th>취미</th>
                    <td>
                        <label><input type="checkbox" name="hobby" value="운동">운동</label>
                        <label><input type="checkbox" name="hobby" value="등산">등산</label>
                        <label><input type="checkbox" name="hobby" value="독서">독서</label>
                        <label><input type="checkbox" name="hobby" value="게임">게임</label>
                        <label><input type="checkbox" name="hobby" value="여행">여행</label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" value="가입">
                        <input type="reset" value="초기화">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>



















