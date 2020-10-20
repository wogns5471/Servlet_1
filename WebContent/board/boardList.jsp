<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style type="text/css">
	#head2{
		text-align: center;
		padding-bottom: 40px;
	}
	
	
	th{
		background-color: black;
		text-align: center;
		color: white;
		border-collapse:collapse;
	}

</style>

</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Page 1-1</a></li>
          <li><a href="#">Page 1-2</a></li>
          <li><a href="#">Page 1-3</a></li>
        </ul>
      </li>
      <li><a href="#">Board</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>


<div class="container">
  <h2 id="head2">LIST</h2>
  <div>      
  <table class="table table-bordered">
    <thead>
      <tr>
        <th>NO</th>
		<th>TITLE</th>
		<th>WRITER</th>
		<th>CONTENT</th>
		<th>DATE</th>
		<th>HIT</th>
      </tr>
    </thead>
        
    <tbody>
	<c:forEach items="${list}" var="list">
      <tr>
        <td>${list.num}</td>
        <td>${list.title}</td>
        <td>${list.writer}</td>
        <td>${list.contents}</td>
        <td>${list.regDate}</td>
        <td>${list.hit}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  </div>
</div>

</body>
</html>