function changeTable() {
    var select = document.getElementById("table-select");
    var tableName = select.value;
    getDataForTable(tableName, populateTable); 
}

function getDataForTable(tableName, callback) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4) {
            if (this.status == 200) {
                var data = JSON.parse(this.responseText);
                callback(data); // Appeler le rappel avec les données récupérées
            } else {
                console.error("Erreur de requête : " + this.status);
            }
        }
    };
    var url = "get_data.php?table=" + encodeURIComponent(tableName);
    xhttp.open("GET", url, true);
    xhttp.send();
}

function populateTable(tableData) {
    var table = document.getElementById("data-table");
    var tableHead = table.querySelector("thead");
    var tableBody = table.querySelector("tbody");
  
    // Réinitialiser le contenu de la table
    tableHead.innerHTML = "";
    tableBody.innerHTML = "";
  
    // Vérifier si les données sont valides
    if (tableData && tableData.columns && tableData.data) {
      var columns = tableData.columns;
      var headerRow = document.createElement("tr");
      columns.forEach(function (columnName) {
        var headerCell = document.createElement("th");
        headerCell.textContent = columnName;
        headerCell.setAttribute("data-sortable", "");
        headerCell.setAttribute("data-column", columnName); // Ajouter un attribut personnalisé pour la colonne
        headerRow.appendChild(headerCell);
      });
      tableHead.appendChild(headerRow);
  
      var data = tableData.data;
      var rowId = 1; // Compteur pour les identifiants de ligne
      data.forEach(function (row) {
        var newRow = document.createElement("tr");
        newRow.setAttribute("id", "row-" + rowId); // Attribuer un identifiant unique à chaque ligne
        columns.forEach(function (columnName) {
          var cell = document.createElement("td");
          cell.textContent = row[columnName];
          cell.setAttribute("data-column", columnName); // Ajouter un attribut personnalisé pour la colonne
          newRow.appendChild(cell);
        });
        tableBody.appendChild(newRow);
        rowId++; // Incrémenter le compteur d'identifiants de ligne
      });
  
      // Attacher les écouteurs d'événements aux en-têtes de tableau générés
      var headers = table.querySelectorAll("th[data-sortable]");
      headers.forEach(function (header) {
        header.addEventListener("click", function () {
          var columnName = this.getAttribute("data-column"); // Récupérer le nom de la colonne associée à l'en-tête
  
          // Récupérer les <td> associés à la colonne spécifique
          var cells = Array.from(table.querySelectorAll("td[data-column='" + columnName + "']"));
  
          // Trier les <td> associés uniquement
          const sortedCells = cells.sort(function (a, b) {
            const aValue = parseFloat(a.textContent.replace(/[^0-9.-]+/g, ""));
            const bValue = parseFloat(b.textContent.replace(/[^0-9.-]+/g, ""));
            return aValue - bValue;
          });
  
          // Vérifier si le tableau est déjà trié en ordre ascendant
          var isAscending = this.getAttribute("data-sort") === "asc";
  
          // Inverser l'ordre si le tableau est déjà trié en ordre ascendant
          if (isAscending) {
            sortedCells.reverse();
            this.setAttribute("data-sort", "desc"); // Mettre à jour l'attribut de tri
          } else {
            this.setAttribute("data-sort", "asc"); // Mettre à jour l'attribut de tri
          }
  
          // Réorganiser les <tr> en fonction des <td> triés
          var sortedRows = sortedCells.map(function (cell) {
            return cell.parentNode;
          });
  
          table.querySelector("tbody").innerHTML = "";
          sortedRows.forEach(function (row) {
            table.querySelector("tbody").appendChild(row);
          });
        });
      });
    }
  }
  
  // Appeler la fonction changeTable() une fois au chargement initial de la page
  changeTable();
  