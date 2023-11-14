<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.UserRegistryDTO, java.util.List"%>
	<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/adminstyle.css">
    <link rel="stylesheet" href="./css/visits.css">
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
        <div class="visit-wrapper">
            <h1>Tutti gli utenti</h1>

            <!-- CREAZIONE TABELLA -->
            <div id="template" class="template">
            <div class="wrappa">
            <div class="table-wrapper">
	<%
		List<UserRegistryDTO> list = (List<UserRegistryDTO>) request.getAttribute("list");
	%>
	<table>
                <tr>
                  
                    <th>NOME</th>
                    <th>COGNOME</th>
                    <th>INDIRIZZO</th>
                    <th>DATA DI NASCITA</th>
                    <th></th>
                </tr>
                		<%
                			for (UserRegistryDTO u : list) {
                		%>
                <tr>
    		<td><%=u.getName()%></td>
    		<td> <%=u.getSurname()%></td>
    		<td> <%=u.getAddress()%></td>
    		<td> <%=u.getBirthDate()%></td>
			</td>
			<td><a href=UserServlet?mode=delete&id=<%=u.getUserId()%>><i class="bx bx-trash"></i></a>
			</td>
			</td>
                    </td>
                </tr>
                		<%
                			}
                		%>
            </table>
            </div>
        </div>

        <div id="template" class="template"></div>   
            
    </div>
</div>
</div>  

    
   

</div>
</body>
<script>
    w3IncludeHTML();
</script>
</html>