<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- STYLE -->
    <link rel="stylesheet" href="./style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GUI-PHP-DB(SQL)</title>
</head>

<body>

    <?php
    // Inclure le fichier de connexion à la base de données
    require_once './dbconnect.php';
    ?>

    <h1 class="<?php echo $classe; ?>">État du serveur : <?php echo $message; ?></h1>

    <label for="table-select">Choisir une table :</label>
    <select id="table-select" onchange="changeTable()">
        <option>Sélectionnez une table</option>
        <option value="Achats">Achats</option>
        <option value="Product">Product</option>
        <option value="User">User</option>
        <option value="Order_has_Product">Order_has_Product</option>
    </select>

    <div id="table-name"></div>

    <table id="data-table">
        <thead>
        </thead>
        <tbody>
            <!-- Les données seront injectées ici avec PHP -->
        </tbody>
    </table>

    <script src="./populateTables.js"></script>

</body>

</html>