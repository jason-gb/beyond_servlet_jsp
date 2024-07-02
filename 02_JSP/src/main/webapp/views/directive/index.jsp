<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>

 <%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/views/error/error500.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지시자 태그</title>
</head>
<body>
	<%@ include file="/views/common/header.jsp" %>
	
	<main>
	 	<form action="userFormResult.jsp" method="get">
	
	        <label for="name">이름: </label>
	        <input type ="text" id="name" name="userName"/>
	
	        <br>
	
	        <label for="name">나이 : </label>
	        <input type="text" id="age" name="userAge"/>
	
	        <br>
	
	        <label><input type="radio" name="userGender" value="남자" checked/>남자</label>
	        <label><input type="radio" name="userGender" value="여자"/>여자</label>
	
	        <br>
	        <label>좋아하는 음식: </label>
	            <label><input type="checkbox" name="food" value="한식" checked/>한식</label>
	            <label><input type="checkbox" name="food" value="중식"/>중식</label>
	            <label><input type="checkbox" name="food" value="일식"/>일식</label>
	            <label><input type="checkbox" name="food" value="양식"/>양식</label>
	            <label><input type="checkbox" name="food" value="분식"/>분식</label>
	
	
	        <br>
	        <br>
	
	        <input type="submit" value="전송"/>
	        <input type="reset" value="취소"/>
	
	
	    </form>
	</main>

	<%@ include file="/views/common/footer.jsp" %>
</body>
</html>













