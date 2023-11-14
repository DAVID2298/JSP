<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.MedicalExaminationDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<title>Edit User</title>
</head>
<body>
<%@ include file="../css/header.jsp" %>
<div class="navbar">
  <a href="homeadmin.jsp">Home</a>
  <a class="active" href="MedicalExaminationServlet?mode=melist">Users</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>
<div class="main">

<%MedicalExaminationDTO u = (MedicalExaminationDTO) request.getAttribute("dto");%>


<form id="floatleft" action="MedicalExaminationServlet?mode=update&id=<%=u.getId()%>" method="post">
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
        <input type="text" id="img" name="img" placeholder="inserisci immagine">
      	</div>
    </div>
      <button type="submit" >Insert</button>
</form>


</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>