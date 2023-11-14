<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="it.contrader.dto.UserRegistryDTO"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/modificaUser.css">
    <style>
        
       
    </style>
</head>
<%UserRegistryDTO u = (UserRegistryDTO) request.getAttribute("userRegistryDTO");%>
<body>
    <div class="up-bar">
    <img src="image/hospital.immagine.png" class="logo">
    </div>

    

    <div class="wrapper">
        <div class="bar-nav2">Modifica profilo</div>
        
        <p>Dati anagrafici</p>
        <div class="divider"></div>
        <div class="para">INSERISCI I NUOVI DATI</div>

        <form id="form-a" action="UserRegistryServlet?mode=update&id=<%=u.getId()%>" method="post">
            <div class="form-wrapper" id="tab1">
                <div class="input-box">
                    <input type="text" name = "name" placeholder="Username" spellcheck="false" required>
                </div>
                <div class="input-box">
                    <input type="text" name = "surname" placeholder="Password" spellcheck="false" id="myPsw" required>
                </div>

                <div class="input-box">
                        <input type="text" name="address" placeholder="Indirizzo" spellcheck="false" required>
                    </div>
                    <div class="input-box">
                        <input type="text" name="birthDate" placeholder="Data Di Nascita" spellcheck="false" id="myPsw" required>
                        
                    </div>
                   
                </div>  
                <div class="divider2"></div>
                

                <div class="choices1" id="choice1">
                    <p><a href="index.jsp">TORNA ALLA LOGIN</a></p>
                    <button type="submit">MODIFICA</button>
                </div>
                <div class="delete" id="delete">
                    <button type="button" >ELIMINA</button>
                </div>
            </div>
         </form>
    </div>

</body>
</html>