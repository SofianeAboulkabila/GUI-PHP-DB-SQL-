<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- STYLE -->
    <link rel="stylesheet" href="./facture.css">
    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <?php
    // Inclure le fichier de connexion à la base de données
    require_once './dbconnect.php';
    ?>
    <?php
    require_once './data_facture.php';
    ?>


    <div class="col-md-8">
        <div class="row mt-5" style="width: 100vw;">

            <div class="receipt-main col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" style="width: 650px;">
                <div class="row">
                    <div class="receipt-header">
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="receipt-left">
                                <img class="img-responsive" alt="iamgurdeeposahan" src="https://bootdey.com/img/Content/avatar/avatar6.png" style="width: 71px; border-radius: 43px;">
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                            <div class="receipt-right">
                                <h5>Sofiane Aboulkabila</h5>
                                <p>07.xx.xx.xx <i class="fa fa-phone"></i></p>
                                <p>company@gmail.com <i class="fa fa-envelope-o"></i></p>
                                <p>FR <i class="fa fa-location-arrow"></i></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="receipt-header receipt-header-mid">
                        <div class="col-xs-8 col-sm-8 col-md-8 text-left">
                            <div class="receipt-right">
                                <h5></h5>
                                <p><b>Mobile :</b> +06.xx.xx.xx</p>
                                <p><b>Email :</b> customer@gmail.com</p>
                                <p><b>Addresse :</b> FR</p>
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <div class="receipt-left">
                                <h3>Commande n°:</h3>
                            </div>
                        </div>
                    </div>
                </div>

                <div>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Description</th>
                                <th>Amount</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="col-md-9">Payment for August 2016</td>
                                <td class="col-md-3"><i class="fa fa-inr"></i> 15,000/-</td>
                            </tr>
                            <tr>
                                <td class="col-md-9">Payment for June 2016</td>
                                <td class="col-md-3"><i class="fa fa-inr"></i> 6,00/-</td>
                            </tr>
                            <tr>
                                <td class="col-md-9">Payment for May 2016</td>
                                <td class="col-md-3"><i class="fa fa-inr"></i> 35,00/-</td>
                            </tr>
                            <tr>
                                <td class="text-right">
                                    <p>
                                        <strong>Total Amount: </strong>
                                    </p>
                                    <p>
                                        <strong>Late Fees: </strong>
                                    </p>
                                    <p>
                                        <strong>Payable Amount: </strong>
                                    </p>
                                    <p>
                                        <strong>Balance Due: </strong>
                                    </p>
                                </td>
                                <td>
                                    <p>
                                        <strong><i class="fa fa-inr"></i> 65,500/-</strong>
                                    </p>
                                    <p>
                                        <strong><i class="fa fa-inr"></i> 500/-</strong>
                                    </p>
                                    <p>
                                        <strong><i class="fa fa-inr"></i> 1300/-</strong>
                                    </p>
                                    <p>
                                        <strong><i class="fa fa-inr"></i> 9500/-</strong>
                                    </p>
                                </td>
                            </tr>
                            <tr>

                                <td class="text-right">
                                    <h2><strong>Total: </strong></h2>
                                </td>
                                <td class="text-left text-danger">
                                    <h2><strong><i class="fa fa-inr"></i> 31.566/-</strong></h2>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="row">
                    <div class="receipt-header receipt-header-mid receipt-footer">
                        <div class="col-xs-8 col-sm-8 col-md-8 text-left">
                            <div class="receipt-right">
                                <p><b>Date :</b> 15 Aug 2016</p>
                                <h5 style="color: rgb(140, 140, 140);">Thanks for shopping.!</h5>
                            </div>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <div class="receipt-left">
                                <h1>Stamp</h1>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>


    <script src="./facture.js" defer></script>

</body>

</html>