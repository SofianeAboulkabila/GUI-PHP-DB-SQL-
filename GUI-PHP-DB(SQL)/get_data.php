<?php
require_once './dbconnect.php';

// Récupérer la table sélectionnée depuis la requête GET
$tableName = $_GET['table'] ?? '';

// Vérifier la validité de la table sélectionnée pour éviter les injections SQL
$allowedTables = array("Achats", "Product", "User", "Order_has_Product");
if (!in_array($tableName, $allowedTables)) {
    header('Content-Type: application/json');
    echo json_encode(array('error' => 'Table non autorisée.'));
    exit();
}

try {
    // Exécuter la requête pour récupérer les données de la table
    $query = "SELECT * FROM `$tableName`";
    $statement = $conn->prepare($query);
    $statement->execute();

    // Vérifier si la requête a renvoyé des résultats
    $rowCount = $statement->rowCount();
    if ($rowCount > 0) {
        // Tableau pour stocker les données et les noms de colonnes
        $data = [];
        $columns = [];

        // Récupérer les noms de colonnes
        $fieldCount = $statement->columnCount();
        for ($i = 0; $i < $fieldCount; $i++) {
            $column = $statement->getColumnMeta($i);
            $columns[] = $column['name'];
        }

        // Parcourir les lignes et les ajouter au tableau de données
        while ($row = $statement->fetch(PDO::FETCH_ASSOC)) {
            $data[] = $row;
        }

        // Retourner les données et les noms de colonnes au format JSON
        $responseData = array(
            'columns' => $columns,
            'data' => $data
        );
        header('Content-Type: application/json');
        echo json_encode($responseData);
    } else {
        // Aucune donnée trouvée
        echo "Aucune donnée trouvée dans la table.";
    }
} catch (PDOException $e) {
    // Gérer les erreurs PDO
    echo "Erreur de requête : " . $e->getMessage();
} catch (Exception $e) {
    // Gérer les autres erreurs
    echo "Erreur : " . $e->getMessage();
}

// Fermer la connexion à la base de données
$conn = null;
