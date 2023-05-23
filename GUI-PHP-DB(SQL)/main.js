function changeTable() {
    var select = document.getElementById("table-select");
    var tableName = select.value;
    getDataForTable(tableName);
}

function getDataForTable(tableName) {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
            if (this.status == 200) {
                var data = JSON.parse(this.responseText);
                populateTable(data);
                console.log(data);
            } else {
                console.error("Erreur de requête : " + this.status);
            }
        }
    };
    xhttp.open("GET", "get_data.php?table=" + tableName, true);
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
        columns.forEach(function(columnName) {
            var headerCell = document.createElement("th");
            headerCell.textContent = columnName;
            headerRow.appendChild(headerCell);
        });
        tableHead.appendChild(headerRow);

        var data = tableData.data;
        data.forEach(function(row) {
            var newRow = document.createElement("tr");
            columns.forEach(function(columnName) {
                var cell = document.createElement("td");
                cell.textContent = row[columnName];
                newRow.appendChild(cell);
            });
            tableBody.appendChild(newRow);
        });
    }
}

// Appeler la fonction changeTable() une fois au chargement initial de la page
changeTable();
