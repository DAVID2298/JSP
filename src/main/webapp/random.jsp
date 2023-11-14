<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form id="redirectForm" action="/PonteServlet?mode=user" method="post">
        <h1>BENVENUTO</h1>
        <!-- Aggiungi qui gli eventuali campi del form -->
    </form>

    <script>
        // Attendi un secondo (1000 millisecondi) e poi sottometti il form
        setTimeout(function() {
            document.getElementById('redirectForm').submit();
        }, 1000);
    </script>
</body>
</html>