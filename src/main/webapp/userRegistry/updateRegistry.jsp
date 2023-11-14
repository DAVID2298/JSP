<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.UserRegistryDTO"%>
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
  <a href="homeuser.jsp">Home</a>
  <a class="active" href="UserServlet?mode=read">Dati</a>
  <a href="LogoutServlet" id="logout">Logout</a>
</div>
<br>
<div class="main">

<%UserRegistryDTO u = (UserRegistryDTO) request.getAttribute("userRegistryDTO");%>


<form id="floatleft" action="UserRegistryServlet?mode=update&id=<%=u.getId()%>" method="post">
  <div class="row">
    <div class="col-25">
      <label for="nome">Nome</label>
    </div>
    <div class="col-75">
      <input type="text" id="nome" name="name" value=<%=u.getName()%>>
    </div>
  </div>
  <div class="row">
    <div class="col-25">
     <label for="pass">Cognome</label>
    </div>
    <div class="col-75">
      <input
			type="text" id="pass" name="surname" value=<%=u.getSurname()%>>
    </div>
  </div>
  <div class="row">
      <div class="col-25">
       <label for="address">Indirizzo</label>
      </div>
      <div class="col-75">
        <input
  			type="text" id="address" name="address" value=<%=u.getAddress()%>>
      </div>
    </div>

     <div class="row">
          <div class="col-25">
           <label for="date">Data di Nascita</label>
          </div>
          <div class="col-75">
            <input
      			type="text" id="date" name="birthDate" value=<%=u.getBirthDate()%>>
          </div>
        </div>

      <button type="submit" >Edit</button>
</form>


</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>