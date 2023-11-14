<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <script src="/script.js"></script>
<title>Login | Hospital</title>
</head>
<body>

    <!-- TOP AND LOGO PART -->

        <div class="up-bar"></div>
        <div class="img-wrapper">
            <img src="images/hospital-logo.png" class="logo">
        </div>

    <!-- LOGIN -->

        <div class="wrapper">

            <h1>Accedi ora</h1>
            <p>Inserisci le credenziali di accesso inserite in fase di registrazione</p>

            <form action="LoginServlet" method="post"">
                <div class="input-box">
                    <input type="text" name="username" placeholder="Username" required spellcheck="false">
                    <i class="bx bxs-user"></i>
                </div>
                <div class="input-box">
                    <input type="password" name="password" placeholder="Password" required spellcheck="false" id="myPsw">
                    <i class="bx bx-show" onclick="myFunction()" id="eye"></i>
                    <i class="bx bxs-show hidden" onclick="myFunction()" id="eyeO"></i>
                </div>
                <div class="input-check">
                    <div class="check">
                        <input type="checkbox" id="remember" name="remember">
                        <label for="remember">Rircordami</label>
                    </div>
                    <p href="#">password dimenticata?</p>
                </div>
                <div class="input-box">
                    <button type="submit">ACCEDI ORA</button>
                </div>

                <p class="p-reg">Non hai un account? <a href="registration.jsp">Registrati</a></p>
            </form>
        </div>


</body>
</html>