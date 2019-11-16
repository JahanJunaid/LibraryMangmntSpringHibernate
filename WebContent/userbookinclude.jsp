<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</body>
<table>
<a href="forbookinclude">show</a>
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
</html>