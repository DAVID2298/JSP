<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="it.contrader.dto.MedicalExaminationDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>User Manager</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>

<div class="navbar">
  <a  href="homeadmin.jsp">Home</a>
  <a class="active" href="UserServlet?mode=userlist">Users</a>
    <a href="MedicalExaminationServlet?mode=melist">Visite</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<div class="main">
	<%
		List<MedicalExaminationDTO> list = (List<MedicalExaminationDTO>) request.getAttribute("list");
	%>

<br>

	<table>
		<tr>
			<th>Typology</th>
			<th>Cost</th>
			<th>Code</th>
			<th>Img</th>
			<th></th>
			<th></th>
		</tr>
		<%
			for (MedicalExaminationDTO u : list) {
		%>
		<tr>
			<td><a href=MedicalExaminationServlet?mode=read&id=<%=u.getId()%>>
					<%=u.getTypology()%>
			</a></td>
			<td><%=u.getCost()%></td>
			<td><%=u.getCode()%></td>
			<td><%=u.getImg()%></td>
			<td><a href="MedicalExaminationServlet?mode=read&id=<%=u.getId()%>&update=true">Modifica</a>
			</td>
			<td><a href=MedicalExaminationServlet?mode=delete&id=<%=u.getId()%>>Delete</a>
			</td>

		</tr>
		<%
			}
		%>
	</table>



<form id="floatright" action="MedicalExaminationServlet?mode=insert" method="post">
  <div class="row">
    <div class="col-25">
      <label for="typology">Tipologia</label>
    </div>
    <div class="col-75">
      <input type="text" id="typology" name="typology" placeholder="inserisci tipologia">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="cost">Costo</label>
    </div>
    <div class="col-75">
      <input type="number" id="cost" name="cost" placeholder="inserisci costo">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="code">Codice</label>
      </div>
      <div class="col-75">
      <input type="number" id="code" name="code" placeholder="inserisci codice">
    	</div>
  </div>
    <div class="row">
      <div class="col-25">
        <label for="img">Img</label>
        </div>
        <div class="col-75">
        <input type="String" id="img" name="img" placeholder="inserisci immagine">
      	</div>
    </div>
      <button type="submit" >Insert</button>
</form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>