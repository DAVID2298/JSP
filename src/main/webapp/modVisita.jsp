<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.MedicalExaminationDTO"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/adminstyle.css">
    <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://www.w3schools.com/lib/w3data.js"></script>


    
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
    
    <div class="visita-insert">
        <p>Visite / Modifica visita</p>
        <h1>Modifica visita</h1>
        <div class="wrapper-visita">
            <h2>Informazioni generali</h2>
            <div class="wrapper-info">
                
                <div class="wrapper-form">
                <%MedicalExaminationDTO u = (MedicalExaminationDTO) request.getAttribute("dto");%>

                    <form id="visit-form" action="MedicalExaminationServlet?mode=update&id=<%=u.getId()%>" method="post">
                        <div class="wrapper-image">
                            <div class="display-image" id="display-image"></div>
                            <label for="file-upload" class="custom-file-upload">
                                CARICA IMMAGINE
                            </label>
                            
                            <input id="file-upload" type="file" class="hidden" accept="image/png, image/jpg">
                        </div>
                        <div class="wrapper-input">
                        <div class="inline-form">
                            <input type="text" name="typology" placeholder="Tipologia*" required>
                            <input type="double" name="cost" placeholder="Costo*" required>
                            <input type="number" name="code" placeholder="Codice visita*" required>
                        </div>
                    </div>
                    </form>
                    <div class="submit-form">
                        <p>*Campi obbligatori</p>
                    <button type="submit" form="visit-form" id="nxtBtn2" class="confirm" >SALVA</button>
                    </div>
                </div>
            </div>

        </div>
    </div>
    </div>
    
</body>
<script>
    w3IncludeHTML();
</script>
<script src="scriptvisite.js"></script>
</html>