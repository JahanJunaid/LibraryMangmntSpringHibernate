<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
	z-index:1;
	top: 20%;
	right: 7%;
	/* transform: translate(-50%,-50%); */
}
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
.insert{text-decoration:none;
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

.login-div input {
	width: 100%;
	
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
line-height: 60px;

}
#active{background-color: #fff;
	color: #000;
	}
	.login-div h1{
	font-size: 30px;}
.login-div1{
	width: 400px;
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
</style>







	<title>DeleteBooks</title>
	<link rel="icon" type="image/x-icon" href="static/icon.png">
	<meta name="viewport" content="width=devicewidth,initisl-scale=1.0">
</head>

<body>


<header>
		<div class="main-div">
			<div class="logo">
				<a href="index"><img src="static/logo1.png"></a>
			</div>
			<div class="nav-div">
				<ul>
					<li><a href="adminhome.jsp">Home</a></li>
					<li class=active><a href="#">Books</a></li>
					<li><a href="forservice">FeedBack</a></li>
					<li><a href="contactus">ContactUs</a></li>
				</ul>
			</div>
			
			
				<div class="login-div">
								
										 
					
					<h1> Delete Books</h1>
					<form action="deletebooks">
					<table>
					<tr>

					</tr>
					<tr>
					<td> <label>Book Name :</label> </td>
					<td> <input type="text" name="book" required/> </td>
					</tr>
					
					
					
					<tr>
					<td>
					<button type="submit" class="insert"> Delete</button>
					</td>
					</tr>
					
					</table>
					</form>
				</div>
					<div class="login-div1">
						<table>
						<!-- <a href="forbookinclude">show</a> -->
						<th>Book_Name |</th>
						<th> Author</th>
						
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
					<div class="button">
				<a class="btn" href="viewuser">See All User</a>
				<a class="btn" onclick="page()" href="addbooks">Add Books</a>
				<a class="btn" id="active" onclick="page()" href="#">Delete Books</a>
				<a class="btn" href="index">Logout</a>
			</div>
		</div>
	
</header>
</body>
</html>

