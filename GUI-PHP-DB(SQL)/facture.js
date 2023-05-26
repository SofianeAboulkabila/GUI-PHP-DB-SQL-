 // Récupération du menu select et de la balise div
 var select = document.querySelector('.id-list');
 const div = document.querySelector('.receipt-left h3');
 var nomH5 = document.querySelector('.receipt-right h5');
 var emailP = document.querySelector('.receipt-right p:nth-of-type(2)');

 // Ajout de l'événement de changement au menu select
 select.addEventListener('change', function() {
     // Récupération de la valeur sélectionnée
     const selectedValue = select.value;

     // Mise à jour du contenu de la balise div
     div.textContent = 'Commande n°: ' + selectedValue;

     // Création d'une requête AJAX
     var xhr = new XMLHttpRequest();
     xhr.open('GET', 'get_invoice_info.php?idOrder=' + selectedValue, true);
     xhr.onload = function() {
         if (xhr.status === 200) {
             // Traitement de la réponse de la requête AJAX
             var invoiceInfo = JSON.parse(xhr.responseText);

             // Affichage des informations de la facture dans la balise div
             nomH5.textContent = invoiceInfo.name;
             emailP.innerHTML = '<b>Email :</b> ' + invoiceInfo.email;
         }
     };
     xhr.send();
 });