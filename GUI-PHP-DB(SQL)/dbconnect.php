<?php
require_once __DIR__ . '/.env.php';

// Accédez aux informations de connexion à la base de données
$host = $dotenv['DB_HOST'];
$username = $dotenv['DB_USERNAME'];
$password = $dotenv['DB_PASSWORD'];
$database = $dotenv['DB_DATABASE'];

try {
    // Connexion à la base de données avec PDO
    $conn = new PDO("mysql:host=$host;dbname=$database", $username, $password);
    // Configuration des options PDO
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Connexion réussie
    $message = "Connexion autorisée";
    $classe = "autorise";


} catch (PDOException $e) {
    // Erreur de connexion
    $message = "Accès refusé !";
    $classe = "refuse";
    echo "Erreur de connexion à la base de données : " . $e->getMessage();
}
