<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/regstyle.css">
    <script src="./script/regscript.js"></script>
    <title>Registration | Hospital</title>
</head>
<body>

    <div class="up-bar">
        <img src="images/hospital-logo.png" class="logo">
    </div>

    <div class="wrapper">
        <h1>Registrati</h1>
        <p>Inserisci i tuoi dati e procedi con la registrazione</p>
        <div class="divider"></div>
        <div class="steps-wrapper">
            <div class="step-number" id="1">1</div>
            <p class="" id="p1">Accesso</p>
            <p> > </p>
            <div class="blank"></div>
            <div class="step-number unsigned" id="2">2</div>
            <p class="punsigned" id="p2">Anagrafica</p>
        </div>
        <div class="para">CREDENZIALI DI ACCESSO</div>

        <!-- FORM REGISTRAZIONE -->

        <form id="form-a" action="./RegisterServlet" method="post">
            <div class="form-wrapper" id="tab1">
                <div class="input-box">
                    <input type="text" name="registerUsername" placeholder="Username" spellcheck="false" required>
                </div>
                <div class="input-box">
                    <input type="password" name="registerPassword" placeholder="Password" spellcheck="false" id="myPsw" required>
                </div>
                <div class="input-box">
                    <select name="registerUsertype" id="usertype">
                        <option value="1" disabled selected>Tipo di utente</option>
                        <option value="ADMIN">Admin</option>
                        <option value="USER">User</option>
                    </select>
                </div>
            </div>

            <div class="form-wrapper-2 hidden" id="tab2">
                <div class="input-inline">
                    <div class="input-box-2">
                        <input type="text" name="registerFirstname" id="registerFirstname" placeholder="Nome" spellcheck="false" required>
                    </div>
                    <div class="input-box-2">
                        <input type="text" name="registerLastname" id="registerLastname" placeholder="Cognome" spellcheck="false" required>
                    </div>
                </div>
                <div class="input-inline">
                    <div class="input-box-2">
                        <input type="text" name="registerAddress" id="registerAddress" placeholder="Indirizzo" spellcheck="false" required>
                    </div>
                    <div class="input-box-2">
                        <input type="text" name="registerData" id="registerData" placeholder="Data di nascita" spellcheck="false" required>
                    </div>
                </div>
            </div>
    <!-- TERZA PAGINA -->

               <div class="form-wrapper-3 hidden" id="tab3">
                   <div class="input-box-3">
                       <input type="text" name="registerNameH" placeholder="Nome" spellcheck="false" >
                   </div>
                   <div class="input-box-3">
                       <input type="text" name="registerAddressH" placeholder="Indirizzo" spellcheck="false" >
                   </div>
                   <div class="input-box-3">
                       <div class="input-inline">
                           <input type="text" name="registerNation" placeholder="Nazione" spellcheck="false" >
                           <input type="text" name="registerProvinceH" placeholder="Provincia" spellcheck="false" >
                           <input type="text" name="registerCityH" placeholder="Citta" spellcheck="false" >
                       </div>
                   </div>
                   <div class="input-box-3">
                       <textarea name="registerDescriptionH" placeholder="Descrizione*"></textarea>
                   </div>
               </div>




        </form>
 <div class="divider"></div>

               <div class="choices1" id="choice1">
                   <p><a href="/index.html">TORNA ALLA LOGIN</a></p>
                   <button type="button" id="nxtBtn" onclick="anagraph()">AVANTI</button>
               </div>


           <div class="choices2 hidden" id="choice2" >
               <button type="button" id="prevBtn" onclick="prevBtn()">INDIETRO</button>
               <button type="submit" form="form-a" id="nxtBtn2" class="confirm" >CONFERMA</button>
           </div>

           <div class="choices3 hidden" id="choice3">
               <button type="button" id="prevBtn" onclick="prevBtn()">INDIETRO</button>
               <button type="button" id="nxtBtn" onclick="nxtBtn()">AVANTI</button>
           </div>


           <div class="choices4 hidden" id="choice4" >
               <button type="button" id="prevBtn" onclick="prevBtn2()">INDIETRO</button>
               <button type="submit" form="form-a" id="nxtBtn2" class="confirm" >CONFERMA</button>
           </div>
       </div>



</body>
</html>