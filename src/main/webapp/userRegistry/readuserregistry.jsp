<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.UserRegistryDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Read User</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeuser.jsp">Home</a>
  <a href="UserRegistryServlet?mode=read">Dati</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>

<div class="main">
<%UserRegistryDTO u = (UserRegistryDTO) request.getAttribute("dto");%>


<table>
	<tr>
		<th>Nome</th>
		<th>Cognome</th>
		<th>Indirizzo</th>
		<th>Data di nascita</th>
	</tr>
	<tr>
		<td><%=u.getName()%></td>
		<td> <%=u.getSurname()%></td>
		<td> <%=u.getAddress()%></td>
		<td> <%=u.getBirthDate()%></td>
	</tr>
</table>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


</div>

<%@ include file="../css/footer.jsp" %>
</body>
</html>