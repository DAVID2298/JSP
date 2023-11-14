<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.List, it.contrader.dto.HospitalRegistryDTO , it.contrader.dto.UserDTO"%>
	<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/hospitalRegistry.css">
    <style>
        
       
    </style>
</head>
<%HospitalRegistryDTO u = (HospitalRegistryDTO) request.getAttribute("hospitalRegistryDTO");%>

<body>
    <div class="up-bar">
    <img src="image/hospital.immagine.png" class="logo">
    </div>

    

    <div class="wrapper">
        <div class="bar-nav2">Modifica profilo</div>
        
        <p>Dati anagrafici</p>
        <div class="divider"></div>
        <div class="para">INSERISCI I NUOVI DATI</div>

        <form id="form-a" action="HospitalRegistryServlet?mode=update&id=<%=u.getId()%>" method="post">
            <div class="form-wrapper" id="tab1">
                <div class="line">
                    <div class="input-box">
                        <input type="text" name="name" placeholder="Nome" spellcheck="false" required>
                    </div>
                    <div class="input-box">
                        <input type="text" name="address" placeholder="Indirizzo" spellcheck="false" id="myPsw" required>
                    </div>
    
                    <div class="input-box">
                            <input type="text" name="nation" placeholder="Nazione" spellcheck="false" required>
                        </div>
                </div>
                <div class="line">
                    <div class="input-box">
                        <input type="text" name="province" placeholder="Provincia" spellcheck="false" id="myPsw" required>
                        
                    </div>
                    <div class="input-box">
                        <input type="text" name="city" placeholder="Città" spellcheck="false" id="myPsw" required>
                        
                    </div>
                    <div class="input-box">
                        <input type="text" name="description" placeholder="Descrizione" spellcheck="false" id="myPsw" required>
                        
                    </div>
                </div>
                   
                   
                </div>  
                <div class="divider2"></div>
                

                <div class="choices1" id="choice1">
                    <p><a href="index.jsp">TORNA ALLA LOGIN</a></p>
                    <button type="submit">MODIFICA</button>
                </div>
                <div class="delete" id="delete">
                    <a href="UserServlet?mode=delete&id=<%=u.getUserId()%>">ELIMINA</a>
                </div>
            </div>
            
    

</body>
</html>