<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.List, it.contrader.dto.HospitalRegistryDTO, it.contrader.dto.UserRegistryDTO , it.contrader.dto.UserDTO"%>
	<!DOCTYPE html>
<html lang="en">
<%UserRegistryDTO c = (UserRegistryDTO) request.getAttribute("userRegistryDTO");%>
<%HospitalRegistryDTO u = (HospitalRegistryDTO) request.getAttribute("hospitalRegistryDTO");%>
<%UserDTO user = (UserDTO) request.getAttribute("dto");%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/hospReg.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">

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

        <div class="p-wrapper">

            <div class="profile-wrapper">
                <div class="profile-bar"></div>
                <!-- <div class="pic-wrapper">
                    <img src="images/kisspng-person-thought-clip-art-people-thinking-5b1573cb143936.4607514815281325550829.png" class="profile-pic">
                </div> -->
                <div class="prof-wrapper">
                    <div class="profile-info">
                        <div class="general">
                            <h1 id="nome"><%=u.getName()%></h1>
                            <p id="user">-</p>
                        </div>
                        <div class="general">
                            <h2><%=u.getAddress()%></h2>
                            <p id="data-di-nascita">-</p>
                        </div>
                        <div class="general">
                            <h2><%=u.getNation()%></h2>
                            <p id="indirizzo">-</p>
                        </div>
                        <div class="general">
                            <h2><%=u.getProvince()%></h2>
                            <p id="indirizzo">-</p>
                        </div>
                        <div class="general">
                            <h2><%=u.getCity()%></h2>
                            <p id="indirizzo">-</p>
                        </div>
                        <div class="general">
                            <h2><%=u.getDescription()%></h2>
                            <p id="indirizzo">-</p>
                        </div>
                        
                    </div>
                    <div class="wrapper-btn">
                        <button type="button" onclick="toServlet()" class="btnMod">MODIFICA</button>

                    </div>

                </div>


            </div>





        </div>
    </div>

</body>
<script>

    function toServlet(){
        window.location.href = "HospitalRegistryServlet?mode=read&update=true&id=<%=u.getUser_id()%>";
    }
</script>
</html>