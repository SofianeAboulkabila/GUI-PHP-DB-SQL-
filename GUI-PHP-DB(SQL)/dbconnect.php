<?php
$serveur = "localhost";
$utilisateur = "guy-php-admin";
$motDePasse = "159357103597";
$baseDeDonnees = "mydbcom";

try {
    // Connexion à la base de données avec PDO
    $conn = new PDO("mysql:host=$serveur;dbname=$baseDeDonnees", $utilisateur, $motDePasse);

    // Configuration des options PDO
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Connexion réussie
    $message = "Connexion autorisée";
    $classe = "autorise";
} catch (PDOException $e) {
    // Erreur de connexion
    $message = "Accès refusé !";
    $classe = "refuse";
}
?>