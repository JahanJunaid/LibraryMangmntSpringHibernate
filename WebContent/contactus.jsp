<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>contactus</title>
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
					<li><a href="index">Home</a></li>
					<li><a href="forbook">Books</a></li>
					<li><a href="forservice">FeedBack</a></li>
					<li class="active"><a href="#">ContactUs</a></li>
				</ul>
			</div>
			</div>
					<div class="login-div">
					<%-- <%@include file="dashboard.jsp" %>--%>
					<p><h2>Don't be a stranger</h2><br>
					<b><i>just say Hello</i></b><br><br>
					Feel free to get in touch,<br>
					 If you have an issue please call on <br><br>
					+91-92245698787<br><br>
					<i>(9:30am to 5:30pm,MONDAY to SATURDAY)</i><br><br>
					
					email us at<br> <br>
					<i>support@e-library.com</i></h2></p>
					</TABLE>
							
					</div>
</header>

</body>
</html> 