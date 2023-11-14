<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.List, it.contrader.dto.UserRegistryDTO , it.contrader.dto.UserDTO"%>

<!DOCTYPE html>
<html lang="en">
<%UserRegistryDTO u = (UserRegistryDTO) request.getAttribute("userRegistryDTO");%>
<%UserDTO user = (UserDTO) request.getAttribute("dto");%>


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/home.css">
    <title>User | Hospital</title>
</head>
<body>
    
    <div class="nav-bar">
        <img src="images/hospital-logo.png" class="logo">
        <div class="square"></div>

        <p>utente</p>
    </div>
    <div class="wrapper">
        <div class="header">
            <h1>Profilo personale</h1>
        </div>
        <div class="profile-wrapper">
            <div class="profile-bar"></div>
            <div class="pic-wrapper">
                <img src="/images/kisspng-person-thought-clip-art-people-thinking-5b1573cb143936.4607514815281325550829.png" class="profile-pic">
            </div>
            <div class="prof-wrapper">
                <div class="profile-info">
                    <div class="general">
                        <h1 id="nome"><%=u.getName()%></h1>
                        <p id="cognome"> <%=u.getSurname()%></p>
                    </div>
                    <div class="general">
                        <h2>DATA DI NASCITA</h2>
                        <p id="data-di-nascita"><%=u.getBirthDate()%></p>
                    </div>
                    <div class="general">
                        <h2>INDIRIZZO</h2>
                        <p id="indirizzo"><%=u.getAddress()%></p>
                    </div>
                    
                </div>
                <div class="wrapper-btn">
                    <button type="button" onclick="toServlet()" class="btnMod">MODIFICA</button>
                    <a href="UserServlet?mode=delete&id=<%=u.getUserId()%>">ELIMINA</a>
                </div>

            </div>
        </div>
    </div>
    

</body>
<script>

    function toServlet(){
        window.location.href = "UserRegistryServlet?mode=read&update=true&id=<%=u.getUserId()%>";
    }
</script>
</html>