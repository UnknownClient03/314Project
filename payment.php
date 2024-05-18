<?php
    require_once('functions.php');
    session_start();
    if(count($_SESSION["cart"]) == 0)
    {
        echo "You havn't ordered anything.";
        exit;
    }
?>
<!DOCTYPE html>
<html>
<head>
  <title>payment</title>
  <style>
      .cart {
          float: left;
          width: 30%;
      }
      .cart td {
          border-bottom: 2px dotted black;
      }
      .cart th {
          padding-bottom: 5%;
      }
      .cart td, .cart th {
          text-align: left;
      }
      .cart tr:nth-last-child(2)
      {
          border-spacing:0 30px;
      }
      .cart table {
          width:90%;
      }
      .cart td b {
          float: right;
          padding-right: 15%;
      }
      .cart #restartCart {
          margin-top: 5%;
          float: right;
      }
      .cart #BuyItems {
          margin-top: 5%;
          margin-right: 90%;
          margin-bottom: 5%;
          float: left;
      }
  
      .payment {
          width: 40%;
          float: left;
      }
      .payment .membership {
          float: left;
          width: 45%;
      }
      .payment .POD{
          float: right;
          width: 45%;
      }
      .payment .paymentDetails {
          float: left;  
          width: 100%;
      }
      .payment .next {
          width: 100%;
          float: left;
      }
  </style>
</head>
<body onload="setInputs('mainform')">
<div class='payment'>
  <form id="mainform" method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <div class='membership'>
      <b>Membership subsciption: </b></br>
      <input hidden name="paymentType" value="membership">
      <label>email</label><br>
      <input type="text" name="Email" value="<?php setFVal("Email"); ?>"><br>
      <label>password</label><br>
      <input type="text" name="pass"><br><br>

    </div>
    <div class='POD'>
      <b>Pay on Demand:</b><br>
      <input hidden name="paymentType" value="POD">
      <label>Name: </label>
      <input type='text' name="firstname" value="<?php setFVal("firstname"); ?>">
      <input type='text' name="lastname" value="<?php setFVal("lastname"); ?>"><br>
      <label>Phone Number: </label><input type='text' name="phoneNumber"  value="<?php setFVal("phoneNumber"); ?>"><br>
      <label>Email: </label> <input type='text' name="email"  value="<?php setFVal("email"); ?>"><br>
      <label>Address: </label><br>
      <label>Country </label><input type='text' name="country"  value="<?php setFVal("country"); ?>"><br>
      <label>City </label><input type='text' name="city"  value="<?php setFVal("city"); ?>"><br>
      <label>Street </label><input type='text' name="street"  value="<?php setFVal("street"); ?>"><br>
      <label>Street Number </label><input type='text' name="streetNum"  value="<?php setFVal("streetNum"); ?>"><br>
      <label>Unit </label><input type='text' name="unit"  value="<?php setFVal("unit"); ?>"><br>
      <label>Postcode </label><input type='text' name="postcode"  value="<?php setFVal("postcode"); ?>"><br><br>
    </div>
    <div class='next'>
      <input id='paymentType' hidden name='payment' value=''>
      <div class='membership'>
        <input type="submit" onclick='setPaymentType("membership")' value="submit">
        <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["payment"])) if($_REQUEST["payment"] == 'membership')
              {
                  $ID = LOGIN($_POST["Email"], $_POST["pass"], 0);
                  if($ID == '' || checkMembership($ID) == false) echo "<p>Username or password is invalid.</p>";
                  else $GLOBALS["ID"] = $ID;
              } ?>
      </div>
      <div class='POD'>
        <input type="submit" onclick='setPaymentType("POD")' value="submit">
        <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["payment"])) if($_REQUEST["payment"] == 'POD')
              {
                  $ID = createCustomerPOD($_POST["firstname"], $_POST["lastname"], $_POST["phoneNumber"], $_POST["email"], $_POST["country"], $_POST["city"], $_POST["street"], $_POST["streetNum"], $_POST["unit"], $_POST["postcode"]);
                  if($ID != '') $GLOBALS["ID"] = $ID;
              } ?>
      </div>
    </div>
  </form>
</div>
  <div class='cart'>
    <table>
    <?php $price =  displayCart(false);
          if(isset($ID) == true && $ID != '')
          {
              echo "<th></th>
                    <th></th>
                    <th>Gross Total Price</th>
                    <th>Total Quantity</th>";
              displayCartPayment($price, $ID);
          }
    ?>
  </table>
</div>
<script>
    function setPaymentType(type)
    {
        var input = document.getElementById("paymentType");
        input.value = type;
    }
    function setInputs(formname)
    {
        var condition = "<?php if(isset($ID) == true && $ID != '') echo 1; else echo 0; ?>";
        if(condition == '0') return;

        var form = document.getElementById(formname);
        var inputs = form.getElementsByTagName("input")
        for(var i = 0; i < inputs.length; i++)
        {
            inputs[i].disabled = true;
        }
    }
</script>
</body>
</html>