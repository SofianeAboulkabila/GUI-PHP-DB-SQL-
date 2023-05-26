<?php
require_once 'dbconnect.php';

try {
    // Exécution de la requête SELECT
    $conn->exec("SET NAMES utf8");
    $sql = "SELECT DISTINCT `Achats`.`idOrder` FROM `Achats` ORDER BY `idOrder` ASC";
    $result = $conn->query($sql);

    // Vérification des résultats de la requête
    if ($result->rowCount() > 0) {
        // Tableau pour stocker les données
        $data = [];

        // Parcours des résultats et ajout des données au tableau
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            $data[] = $row['idOrder'];
        }

        // Encodage des données en JSON
        $jsonData = json_encode($data);

        // Affichage du script JavaScript pour créer le menu select avec les options
        echo '<script>
        var jsonData = ' . $jsonData . ';
        var select = document.createElement("select");
        var option = document.createElement("option");
        option.textContent = "Sélectionnez un idOrder";
        select.className = "id-list";
        select.style.marginTop = "20px";  
        select.style.marginLeft = "50%";
        select.style.marginRight = "auto";

        for (var i = 0; i < jsonData.length; i++) {
            var option = document.createElement("option");
            option.value = jsonData[i];
            option.text = jsonData[i];
            select.appendChild(option);
        }

        document.body.appendChild(select);
      </script>';
    }
} catch (PDOException $e) {
    // Gestion de l'erreur
    echo "Une erreur s'est produite : " . $e->getMessage();
}

$conn = null;
?>