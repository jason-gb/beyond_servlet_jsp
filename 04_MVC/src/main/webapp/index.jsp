<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${ pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello world</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 1000px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    h2 {
        color: #00c;
    }
    form {
        margin-top: 20px;
    }
    label {
        display: block;
        margin-bottom: 10px;
    }
    input[type="text"], input[type="password"], input[type="button"], input[type="submit"] {
        padding: 8px;
        margin-bottom: 10px;
    }
    button {
        padding: 8px 16px;
        background-color: #00c;
        color: #fff;
        border: none;
        cursor: pointer;
    }
    button:hover {
        background-color: #007;
    }
    a {
        color: #00c;
        text-decoration: none;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Hello world</h2>
        
        <c:if test="${ empty loginMember }">
            <form action="${ path }/login" method="post">
                <label for="userId">아이디 : </label>
                <input type="text" id="userId" name="userId"/>
                
                <br>
        
                <label for="userPwd">비밀번호 : </label>
                <input type="password" id="userPwd" name="userPwd"/>
                
                <br><br>
                
                <input type="button" value="회원가입" onclick="location.replace('${ path }/member/enroll');"/>
                <input type="submit" value="로그인" />
                
            </form>
        </c:if>
    
        <c:if test="${ not empty loginMember }">
            <div style="text-align: right;">
                <a>${ loginMember.name }</a>님 안녕하세요.
                <form action="${ path }/logout" method="post">
                    <button>로그아웃</button>
                </form>
            </div>
        </c:if>
        
    </div>
</body>
</html>