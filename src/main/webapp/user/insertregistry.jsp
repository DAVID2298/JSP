<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.UserRegistryDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="../css/vittoriostyle.css" rel="stylesheet">
<div class="main">

    <h1>Inserisci Dati Anagrafici</h1>

    <form action="../UserRegistryServlet?mode=insert" method="post">
        <input type="hidden" name="mode" value="INSERT">

        <input type="hidden" name="userId" value="<%= request.getParameter('id') %>">

        <label for="name">Nome:</label>
        <input type="text" id="name" name="name" required><br>

        <label for="surname">Cognome:</label>
        <input type="text" id="surname" name="surname" required><br>

        <label for="address">Indirizzo:</label>
        <input type="text" id="address" name="address" required><br>

        <label for="dateBirthday">Data di Nascita:</label>
        <input type="text" id="birthDate" name="birthDate" required><br>


         <button type="submit" >Insert</button>
    </form>

</div>
<br>
<%@ include file="../css/footer.jsp" %>
</body>
</html>