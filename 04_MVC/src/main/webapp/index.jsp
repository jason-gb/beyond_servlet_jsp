<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
<style>
    /* 전체 페이지 기본 스타일 */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    
    body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        background-color: #f0f0f0;
        padding: 20px;
    }
    
    h2 {
        color: #333;
    }
    
    form {
        max-width: 400px;
        margin: 20px auto;
        padding: 20px;
        background: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    
    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
    }
    
    input[type="text"],
    input[type="password"],
    button,
    input[type="submit"],
    input[type="button"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 16px;
    }
    
    input[type="submit"],
    button {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    
    input[type="submit"]:hover,
    button:hover {
        background-color: #45a049;
    }
    
    a {
        color: #333;
        text-decoration: none;
        font-weight: bold;
    }
    
    a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>
    <h2>Hello World</h2>
    
    <c:if test="${ empty loginMember }">
        <form action="${ pageContext.request.contextPath }/login" method="post">
            <label for="userId">아이디 : </label>
            <input type="text" id="userId" name="userId"/>
            
            <br>
            
            <label for="userPwd">비밀번호 : </label>
            <input type="password" id="userPwd" name="userPwd"/>
            
            <br><br>
            
            <input type="button" value="회원가입" onclick="location.replace('${ pageContext.request.contextPath }/member/enroll');" class="button-secondary"/>
            <input type="submit" value="로그인" class="button-primary"/>
        </form>
    </c:if>
    
    <c:if test="${ not empty loginMember }">
        <a href="${ path }/member/info">${ loginMember.name }</a>님 안녕하세요.
        
        <form action="${ pageContext.request.contextPath }/logout" method="post">
            <button type="submit" class="button-primary">로그아웃</button>
        </form>
    </c:if>
</body>
</html>










