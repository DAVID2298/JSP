<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.AppointmentDTO"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="./css/visits.css">
    <link rel="stylesheet" href="./css/adminstyle.css">
    <script src="https://www.w3schools.com/lib/w3data.js"></script>

    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">

    <title>Document</title>
</head>
<body>
    
    <div w3-include-html="navbar.jsp"></div>

    <div class="wrapper">
        <div class="sidebar">
            <ul>
                <li>
                    <span class="item" href="#" onclick='loadHtml("template","allUsers.html")'>Utenti</span>
                </li>
                <li>
                    <span class="item">Visite</span>
                    <a class="visit-item" href="#" onclick='loadHtml("template","visits.html")'>Tutte le visite</a>
                    <a class="visit-item" href="#" onclick='loadHtml("template","addVisit.html")'>Aggiungi nuovo</a>
                </li>
                <li>
                    <span class="item" href="#" onclick='loadHtml("template","prenotazioni.html")'>Prenotazioni</span>

                </li>
                <li>
                    <span class="item" href="#">Il mio profilo</span>
                </li>
                <li>
                    <span class="item" href="#">Ospedale</span>
                </li>
            </ul>
        </div>
        

        <div class="wrappa">
            <div class="visit-wrapper">
                <h1>Modifica prenotazione</h1>
                <%AppointmentDTO u = (AppointmentDTO) request.getAttribute("dto");%>
                <form class="pren-form" action="AppointmentServlet?mode=update&id=<%=u.getId()%>&userid=<%=u.getUser_id()%>&idme=<%=u.getId_ME()%>" method="post">
                    <div class="pren-up">
                    <input type="text" name = "data" placeholder="Data">
                    <input type="text" name = "hour" placeholder="Orario">
                    <input type="double" name = "cost" placeholder="Costo">
                <div class="input-box">
                    <select name="accepted" id="accepted">
                        <option value="1" disabled selected>Status</option>
                        <option value=true>Accetta</option>
                        <option value=false>Rifiuta</option>
                    </select>
                </div>                    </div>
                    <div class="submit-form-2">
                    <button type="submit">MODIFICA</button>
                    </div>
                </form>
            </div>
        </div>

</body>
<script>
    w3IncludeHTML();
</script>
</html>