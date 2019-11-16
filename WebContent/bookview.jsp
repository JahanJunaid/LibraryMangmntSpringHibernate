<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Books in our Club</title>
<style>
*{
	padding: 0;
	margin: 0;
	font-family: century gothic;
}
header{
	background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)), url('static/background1.png');
	margin: 0;
	background-size: cover;
	height: 100vh;
	background-position: center;
}
ul{
	list-style-type: none;
	float: right;
	margin-top: 20px;
}

.login-div{
	width: 400px;
	height: 500px;
	background-color: rgba(0,0,0,0.7);
	border-radius: 6px;
	top: 25%;
	left: 5%;
	position: absolute;
	box-sizing: border-box;
	color: #fff;
	padding:40px 50px;
}
ul li{
	display: inline;

}
ul li a{
	text-decoration: none;
	color: #fff;
	padding: 5px 20px;
	border: 1px solid #fff;
	border-radius: 5px;
	transition: 0.6s ease;
}
ul li a:hover{
	background-color: #fff;
	color: #000;
}
ul li.active a{
	background-color: #fff;
	color: #000;
}
.logo img{
	float: left;
	margin-top: 10px;
	width: 170px;
	height: auto;
}
.main-div{
	max-width: 1200px;
	margin: auto;
}
.title{
	position: absolute;
	top: 20%;
	left:20%;
	transform: translate(-50%,-50%);
}
.title h1{
	color: #fff;
	font-size: 45px;
	margin: auto;
}
.button{
	position: absolute;
	top: 70%;
	left: 60%;
	transform: translate(-50%,-50%);
}
.btn{
	border: 1px solid #fff;
	border-radius: 5px;
	padding: 10px 30px;
	color: #fff;
	text-decoration: none;
transition: 0.6s ease;

}
.btn:hover{
	background-color: #fff;
	color: #000;
}
.para p{
	color: #fff;
	overflow: auto;
	display: block;
}
#el{
	font-size: 18px;
	font-weight: bold;
}
.footer{
	font-size: 13px;
	position: absolute;
	bottom: 20px;
	color: #fff;
	left: 37%;
	z-index:1;


}
.logo p{
color: #fff;}

</style>
<link rel="icon" type="image/x-icon" href="static/icon.png">

<script type="text/javascript">
function page()
{
   <%@include file="addbooks.jsp"%>
}
</script>

</head>
<body>


	<header>
		<div class="main-div">
			<div class="logo">
				<a href="index"><img src="static/logo1.png"></a>
			</div>
			<div class="nav-div">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<li class=active><a href="#">Books</a></li>
					<li><a href="forservice">FeedBack</a></li>
					<li><a href="contactus">ContactUs</a></li>
				</ul>
			</div>
			<div class="login-div">
					<%-- <%@include file="dashboard.jsp" %> --%>
					<h1>Book List</h1>
					<table>
						<th>Book_Name|</th>
						<th>Author</th>
						
							<tr>
								<td>
									<c:forEach var="li" items="${list}">
									${li.book}<br>
									</c:forEach>
								</td>
								<td>
									<c:forEach var="li" items="${list}">
									- ${li.author}<br>
									</c:forEach>
								</td>
							</tr>
					
					
					</table>
					</div>
			</div>
			</header>
			</body>
			</html>