<?php
    session_start();
    if(isset($_REQUEST["customerID"]))
        $_SESSION["customernum"] = $_REQUEST["customerID"];
    else if($_SESSION["customernum"] == '')
    {
        echo "You don't have permission to access this page.";
        exit;
    }
    require_once('functions.php');
?>

<!DOCTYPE html>
<html>
<head>
  <title>Customer Account</title>
  <style>
        div {
            display: inline;
            width: 100%;
            float: left;
        }
        .payment, .ChangeDetails, .changeMembership {
            width: 33%;
        }
        .changeDetails input[type=submit]
        {
            float: right;
        }
        .info {
            width: 33%;
            float: left;
        }
        .orders
        {
            width: 33%;
            float: right;
        }
    </style>
</head>
<body>
<div class="payment">
  <input type="button" value="Make new payment" onclick='unHide("payment")'><br>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <input type='hidden' name='customerManagerID' value='payment' readonly>
    <label>make payment here: </label>
    <input type="submit" value="Pay">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["customerManagerID"])) makePayment(); ?>
  </form>
</div>

<div class="ChangeDetails">
<input type="button" value="Change details" onclick='unHide("ChangeDetails")'><br>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Name: </label>
    <input type='text' name="firstname">
    <input type='text' name="lastname">
    <input type="submit" value="change">
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["lastname"])) changeName($_REQUEST["firstname"], $_REQUEST["lastname"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Phone Number: </label>
    <input type='text' name="phoneNumber">
    <input type="submit" value="change">
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["phoneNumber"])) Changephone($_REQUEST["phoneNumber"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Email: </label>
    <input type='text' name="email">
    <input type="submit" value="change">
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["email"])) changeEmail($_REQUEST["email"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>password: </label><br>
    <input type="submit" value="change">
    <label>old </label><input type='text' name="old"><br>
    <label>new </label><input type='text' name="new"><br>
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["old"])) changePassword($_REQUEST["old"], $_REQUEST["new"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Address: </label><br>
    <input type="submit" value="change">
    <label>Country </label><input type='text' name="country"><br>
    <label>City </label><input type='text' name="city"><br>
    <label>Street </label><input type='text' name="street"><br>
    <label>Street Number </label><input type='text' name="streetNum"><br>
    <label>Unit </label><input type='text' name="unit"><br>
    <label>Postcode </label><input type='text' name="postcode"><br>
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["country"])) changeAddress($_REQUEST["country"], $_REQUEST["city"], $_REQUEST["street"], $_REQUEST["streetNum"], $_REQUEST["unit"], $_REQUEST["postcode"], ); ?>
  </form>
</div>

<div class="changeMembership">
  <input type="button" value="Upgrade/downgrade/cancel membership" onclick='unHide("changeMembership")'>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>change membership grade: </label><br>
    <label>Silver</label><input type="radio" name="status" value="silver">
    <label>Gold</label><input type="radio" name="status" value="gold">
    <label>Platinum</label><input type="radio" name="status" value="platinum">
    <input type="submit" value="Submit">
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["status"])) changeMembership($_REQUEST["status"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Cancel: </label><input type="submit" value="cancel subscription">
    <input type='hidden' name='cancel' value='cancel' readonly>
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["cancel"])) cancelMembership(); ?>
  </form>
</div>

<div>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input type="submit" value="refresh">
  </form>
</div>
<div>
  <form method="POST" action="../order.php"> 
    <input hidden name='ID' value=" <?php echo $_SESSION["customernum"]; ?> ">
    <input type="submit" value="See your orders">
  </form>
</div>

<div class='info'>
  <h2>Details</h2>
  <?php displayInfo(); ?>
</div>
<div class='orders'>
    
<div>
<script>
    function unHide(className) {
        const changeDetailsClass = document.getElementsByClassName(className);
        const form = changeDetailsClass[0].getElementsByTagName("form");
        for(var i = 0; i < form.length; i++)
        {
            if(form[i].hidden == true) form[i].hidden = false;
            else form[i].hidden = true;
        }
    }
    function refresh() { location.reload(); }
</script>
</body>
</html>
