<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.MedicalExaminationDTO"%>
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
  <a href="homeadmin.jsp">Home</a>
  <a class="active"  href="MedicalExaminationServlet?mode=melist">Users</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>

<div class="main">
<%MedicalExaminationDTO u = (MedicalExaminationDTO) request.getAttribute("dto");%>


<table>
	<tr>
		<th>Tipologia</th>
		<th>Costo</th>
		<th>Codice</th>
		<th>Immagine</th>
	</tr>
	<tr>
		<td><%=u.getTypology()%></td>
		<td> <%=u.getCost()%></td>
		<td> <%=u.getCode()%></td>
		<td> <%=u.getImg()%></td>
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