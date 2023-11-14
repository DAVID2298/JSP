<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/regstyle.css">
    <script src="/regscript.js"></script>
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

 <form id="form-b" action="UserRegistryServlet?mode=insert" method="post">
        <div class="form-wrapper-2" id="tab2">
                        <div class="input-inline">
                            <div class="input-box-2">
                                <input type="text" name="name" placeholder="Nome" spellcheck="false" required>
                            </div>
                            <div class="input-box-2">
                                <input type="text" name="surname" placeholder="Cognome" spellcheck="false" required>
                            </div>
                        </div>
                        <div class="input-inline">
                            <div class="input-box-2">
                                <input type="text" name="address" placeholder="Indirizzo" spellcheck="false" required>
                            </div>
                            <div class="input-box-2">
                                <input type="text" name="birthDate" placeholder="Data di nascita" spellcheck="false" required>
                            </div>
                        </div>
        </div>

        <div class="divider"></div>
                <div class="choices2" id="choice2" >
                            <button type="button" id="prevBtn" onclick="prevBtn()">INDIETRO</button>
                            <button type="submit" form="form-b" id="nxtBtn2" class="confirm" >CONFERMA</button>
                        </div>
                    </div>
        </form>




        </body>
        </html>