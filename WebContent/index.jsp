<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
	top: 50%;
	left:50%;
	transform: translate(-50%,-50%);
}
.title h1{
	color: #fff;
	font-size: 45px;
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
</style>
	
	<title>e-Library</title>
	<link rel="icon" type="image/x-icon" href="static/icon.png">
	<meta name="viewport" content="width=devicewidth,initisl-scale=1.0">
</head>
<body>
	<header>
		<div class="main-div">
			<div class="logo">
				<img src="static/logo1.png">
			</div>
				<ul>
					<li class="active"><a href="#">Home</a></li>
					<li><a href="forbook">Books</a></li>
					<li><a href="forservice">FeedBack</a></li>
					<li><a href="contactus">ContactUs</a></li>
				</ul>
			</div>
		<!-- <div class="login">
			
		</div> -->


		<div class="title">
			<h1>Welcome to e-Library</h1>
				<div class="para"><p>Introducing the all new <label id="el">e-Library</label> website,this is the storage of publications in electronic media formats that can be accessed remotely via computers.you can login or sign up on the website, look for a necessary source, download it or use online.</p>
					</div>
		</div>

			<div class="button">
				<a class="btn" href="indexlogin">Login</a>
				<a class="btn" href="indexregister">Register</a>
			</div>
			<div class="footer">
				<p>Copyright-© 2018-2019 by e-Library™. All Rights Reserved.</p>
			</div>
	</header>




</body>
</html>