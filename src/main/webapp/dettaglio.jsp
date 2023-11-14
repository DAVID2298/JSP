<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.MedicalExaminationDTO"%>
    <!DOCTYPE html>
<html lang="en">
<%MedicalExaminationDTO u = (MedicalExaminationDTO) request.getAttribute("dto");%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/dettaglio.css">
    <title>Document</title>
</head>

<body>

    <div class="nav-bar">
        <img src="images/hospital-logo.png" class="logo">
        <div class="square"></div>
        <p>utente</p>
    </div>

    <div class="main-wrapper">
        <div class="detail-wrapper">
            <div class="image-wrapper">
            </div>
            <div class="info-wrapper">
                <h1><%=u.getTypology()%></h1>
                <p class="cost"><%=u.getCost()%></p>
                <div class="inline">
                    <div class="tipologia">
                        <h1>TIPOLOGIA</h1>
                        <p>-</p>
                    </div>
                    <div class="codice">
                        <h1>CODICE VISITA</h1>
                        <p><%=u.getCode()%></p>
                    </div>
                </div>
                <h2>DESCRIZIONE</h2>
                <p><%=u.getId()%></p>
                <div class="inline">
                    <form action="AppointmentServlet?mode=insert&idme=<%=u.getId()%>" method="post">
                        <select name="hour" id="hour">
                            <option value="" disabled selected>Scegli orario</option>
                            <option value="15">15:00</option>
                            <option value="18">18:00</option>
                        </select>
                        <button type="submit">PRENOTA</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>

</html>