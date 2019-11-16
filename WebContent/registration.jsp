<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">*{
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
.login-div{
	width: 400px;
	height: 500px;
	background-color: rgba(0,0,0,0.7);
	border-radius: 6px;
	top: 25%;
	left: 35%;
	position: absolute;
	box-sizing: border-box;
	color: #fff;
	padding:40px 50px;
}
.login-div img{
	width: 120px;
	height: 120px;
	position: absolute;
	left: 35%;
	bottom: 90%;
}
.login-div h1{
	margin: 0;
	padding:20px;
	text-align: center;
	font-size: 28px;
	font-weight:normal;
}
.login-div form{
	padding: 20px;
	line-height: 40px;
}
.login-div p{
	margin: 0;
	padding: 0;
	


}
.login-div input{
	width: 100%;
	margin-bottom: 20px;
}
.login-div input[type="text"],input[type="password"],input[type="e-Mail"]{
	 border: none;
	 background: transparent;
	 outline: none;
	 color: #fff;
	 border-bottom: 1px solid #fff;
	 font-size: 17px;
}
.login-div input[type="submit"]{
	border:none;
	outline: none;
	height: 40px;
	font-size: 19px;
	background:#3498DB ;
	color: #fff;
	border-radius: 20px; 
	transition: 0.6s ease;
}
.login-div input[type="submit"]:hover{
	cursor: pointer;
	background: #02678A;
}
.login-div a{
	text-decoration: none;
	color: #fff;
	font-size: 13px;
	transition: 0.6s ease;
}
.login-div a:hover{
	color: #02678A;
}
</style>
<link rel="icon" type="image/x-icon" href="static/icon.png">

</head>
<body>
	<header>
		<div class="main-div">
			<div class="logo">
				<img src="static/logo1.png">
				</div>
					<ul>
						<li><a href="index">Home</a></li>
						<li><a href="forbook">Books</a></li>
						<li><a href="forservice">FeedBack</a></li>
						<li><a href="contactus">ContactUs</a></li>
					</ul>
				<div class="login-div">
					<img src="static/logicon.png">
					<h1>Register Here</h1>
					<form action="regaction" name="form1">
						<p>Username</p>
						<input type="text" name="name" required >
						<p>e-Mail</p>
						<input type="e-Mail">
						<p>Password</p>
						<input type="Password" name="pwd">
						<p>ConfirmPassword</p>
						<input type="Password" id="cp" >
						<input type="submit" value="Register"><br>
						
					</form>
				</div>
			
		</div>
	</header>
</body>
<!-- <script type="text/javascript">
function name() {
	if((document.form1.pwd.value)!=getElementById("cp").value)
		{
			alert("notMatch")
		}
}</script> -->
</html>