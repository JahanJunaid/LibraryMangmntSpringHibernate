<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Home</title>
<style>
*{
	padding: 0;
	margin: 0;
	font-family: century gothic;
}
header{
	background-image:linear-gradient(rgba(0,0,0,0.6),rgba(0,0,0,0.6)), url('http://ari24.com/uploads/5703eb9329027.png');
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
	top: 20%;
	left:20%;
	transform: translate(-50%,-50%);
}
.title h1{
	color: #fff;
	font-size: 45px;
	margin: auto;
}
.button {


	position: absolute;
	z-index:1;
	top: 20%;
	right: 3%;
	/* transform: translate(-50%,-50%); */
}

/* .login-div h1{
	font-size: 30px;} */
.button a{
font-size: 12px;}
.button .btn{
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
.login-div1{
	width: 500px;
	height: 500px;
	background-color: rgba(0,0,0,0.7);
	border-radius: 6px;
	top: 25%;
	left: 40%;
	position: absolute;
	box-sizing: border-box;
	color: #fff;
	padding:40px 50px;
	overflow: scroll;
	
}
::-webkit-scrollbar {
    display: none;
}
.insert{
	
	
	text-decoration:none;
	background-color:transparent;
	border: 1px solid #fff;
	border-radius: 5px;
	padding: 10px 30px;
	color: #fff;
	font-size:18px;
	text-decoration: none;
transition: 0.6s ease;
top:70%;

}
.insert:hover{
	background-color: #fff;
	color: #000;
}
.login-div input[type="text"]{
	 border: none;
	 background: transparent;
	 outline: none;
	 color: #fff;
	 border-bottom: 1px solid #fff;
	 font-size: 17px;}
.login-div form{
padding: 20px;
line-height: 45px;
}
.return-form input[type="text"]{

	 border: none;
	 background: transparent;
	 outline: none;
	 color: #fff;
	 border-bottom: 1px solid #fff;
	 font-size: 17px;}
.return-form form{
padding: 20px;
line-height: 45px;
}
.return-form{
top:}
..mini-div{
	width: 350px;
	height: 200px;
	background:black;
	border-radius: 6px;
	top: 670%;
	left: 5%;
	position: absolute;
	box-sizing: border-box;
	color: #fff;
	z-index:1;
	padding:40px 50px;
}
</style>
<link rel="icon" type="image/x-icon" href="static/icon.png">
</head>
<body>


<header>
		<div class="main-div">
			<div class="logo">
				<a href="index"><img src="static/logo1.png"></a>
			</div>
			<div class="nav-div">
				<ul>
					<li class="active"><a href="#">Home</a></li>
					<li><a href="forbook">Books</a></li>
					<li><a href="forservice">FeedBack</a></li>
					<li><a href="contactus">ContactUs</a></li>
				</ul>
			</div>
		<div class="login">
			
		</div>


		<div class="title">
			<h1>Welcome-${bean.name}</h1>
				<div class="para">
					</div>
		</div>
		
		<div class="login-div">
		<form action="addbooktouser">
				<table>
							
							<tr>
								<td> <label>Book Name :</label> </td>
								<td> <input type="text" name="bukname" placeholder="Book Name" required/> </td>
							</tr>
							
							<tr>
							<td>
								<button style="font-size:12px;" class="insert" type="submit">AddToKart</button>
							</td>
							</tr>
						
						
					</table> 
				</form> 
				 
				<form action="returnbook">
					<table>
							
							<tr>
							</tr>
							
							<tr>
							<td>
								<button style="font-size:12px;" class="insert" type="submit">ReturnTheBook</button>
							</td>
							</tr>
						
						
					</table>
				</form>
				<div class="mini-div" style="color: #fff;z-index: 1;">

					
									<c:forEach var="li" items="${loglist}">
									${li.mybook}<br> 
									</c:forEach>
					 
				</div>
				
					
				</div>
				<div class="login-div1">
					<table>
						<!-- <a href="forbookinclude">show</a> -->
						<th>Book_Name |</th>
						<th> Author |</th>
						<th> Quantity</th>
						
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
								<td>
									<c:forEach var="li" items="${list}">
									- ${li.qnt}<br>
									</c:forEach>
								</td>
							</tr>
					
					
					</table>
					</div>
					
			<div class="button">
				<a class="btn" href="forbook">See All Books</a>
				<a class="btn" href="index">Logout</a>
			</div>
			</div>
	</header>
</body>
</html>