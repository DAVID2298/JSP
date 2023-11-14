<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.AppointmentDTO, java.util.List, it.contrader.dto.MedicalExaminationDTO"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/visits.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <script src="https://www.w3schools.com/lib/w3data.js"></script>


    <title>Document</title>
</head>
<body>
    

    <div w3-include-html="navbar.jsp"></div>

    <div class="wrapper">
        <div class="sidebar">
            <ul>
                <li>
                    <a href="UserRegistryServlet?mode=userlist">Utenti</a>
                </li>
                <li>
                    <span class="item">Visite</span>
                    <a href="MedicalExaminationServlet?mode=melist">Tutte le visite</a>
                    <a href="addVisit.jsp">Aggiungi nuovo</a>
                </li>
                <li>
                    <a href="AppointmentServlet?mode=list">Prenotazioni</span>

                </li>
                <li>
                    <a href="UserRegistryServlet?mode=read">Il mio profilo</a>
                </li>
                <li>
                    <a href="HospitalRegistryServlet?mode=read">Ospedale</a>
                </li>
            </ul>
        </div>


    
    <div class="wrappa">
        <div class="visit-wrapper">
            <h1>Tutte le prenotazioni</h1>

            <!-- CREAZIONE TABELLA -->
            <div class="table-wrapper">
            	<%
            		List<AppointmentDTO> list = (List<AppointmentDTO>) request.getAttribute("list");
            	%>

            <table id="table">
                <tr>

                    <th>DATA VISITA</th>
                    <th>COSTO</th>
                    <th>ORARIO</th>
                    <th>STATUS</th>
                    <th></th>
                </tr>
                <%
                	for (AppointmentDTO u : list) {

                %>
                <tr>
    		<td><%=u.getDate()%></td>
    		<td> <%=u.getHour()%></td>
    		<td> <%=u.getCost()%></td>
    		<td> <%=u.getDemand()%></td>
    		<td><a href="AppointmentServlet?mode=read&update=true&id=<%=u.getId()%>">Modifica</a>
    		<td><a href="AppointmentServlet?mode=delete&id=<%=u.getId()%>"><i class="bx bx-trash"></i></a>


                    
                </tr>
                                		<%
                                			}
                                		%>
            </table>
            </div>

           
        </div>

        
    </div>
    

</div>
<script>
    w3IncludeHTML();
</script>
<script src="./script/scriptvisite.js"></script>
<script src="./script/prenotazioni.js"></script>


</body>
</html>