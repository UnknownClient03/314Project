<?php
    require_once('functions.php');
    session_start();
?>

<?php
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if(isset($_REQUEST["payed"]))
        {
            $ID = $_REQUEST["payed"];
            $notes = ($_REQUEST["notes"] == '') ? NULL : $_REQUEST["notes"];
            createNewOrder($ID, $_REQUEST["delivery"] ,  $notes);
            $_SESSION["cart"] = array();
            $_SESSION["ID"] = $ID;
        }
        if(isset($_REQUEST["refund"])) refund($_REQUEST["refund"]);
        if(isset($_REQUEST["review"])) CreateReview($_REQUEST["rID"], $_REQUEST["review"], $_REQUEST["rating"], $_REQUEST["cName"]);
        if(isset($_REQUEST["ID"])) $_SESSION["ID"] = $_REQUEST["ID"];
    }
?>

<!DOCTYPE html>
<html>
<head>
  <title>payment</title>
  <style>
  .order {
      float: left;
      width: 30%;
      padding-bottom: 5%;
  }
  #refund {
      float: right;
      width: 25%;
  }
  #displayReceipt {
      float: left;
      width: 75%;
  }

  .leftHeader {
      float: left;
      width: 30%;
      font-size: 12px;
  }
  .rightHeader {
      float: right;
      width: 30%;
      font-size: 12px;
  }
  table, th, td {
      border: 1px solid black;
      border-collapse: collapse;
      font-size: 12px;
      width: 300px;
  }
  </style>
</head>
<body>
<h2>Orders</h2>
<?php displayOrder(); ?>
<script>
    function displayReview(id) {
        var container = document.getElementById(id);
        if(container.hidden == false) container.hidden = true;
        else container.hidden = false;
    }
</script>
</body>
</html>