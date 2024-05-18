<?php
    require_once('functions.php');
    session_start();
    //session_unset();
?>

<?php
    if($_SERVER["REQUEST_METHOD"] == "POST")
    {
        if(isset($_POST["restartCart"])) $_SESSION["cart"] = array();
        else if(isset($_POST["operation"])) editCart($_POST["ID"], $_POST["operation"]);
        else if(isset($_POST["ID"])) array_push($_SESSION["cart"], $_REQUEST["ID"]);
    }
?>

<!DOCTYPE html>
<html>
<head>
  <title>Homepage</title>
  <style>
      input[type=text] {
          width:8em;
      }
      .left {
          float: left;
          width: 30%;
      }
      .cart {
          float: right;
          width: 30%;
      }
      .cart td {
          border-bottom: 2px dotted black;
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
  </style>
</head>
<body>
    <div class='left'>
    <label><b>search item:</b></label><br>
    <form action="search.php" method="GET">
        <input type="text" id="srch" name="srch"><br>
        <input type="submit">
    </form>
    <br>
    <label><b>resturant account login:</b></label>
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <input hidden name="sub" value="1">
        <label>email</label><br>
        <input type="text" name="email"><br>
        <label>password</label><br>
        <input type="text" name="pass"><br>
        <input type="submit" value="Sign in">
    </form>
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_POST["sub"])) 
      {
          $ID = LOGIN($_POST["email"], $_POST["pass"], $_POST["sub"]);
          if($ID == '') echo "no work";
          else {
          if($_POST["sub"] == 1) echo "<form id='account' method='POST' action='resturantAccount/index.php'> <input type='hidden' name='accountID' value='$ID' readonly> </form>
                                       <script type=\"text/javascript\"> window.onload=function(){ document.forms['account'].submit(); } </script>";
          else echo "<form id='account' method='POST' action='customerAccount/index.php'> <input type='hidden' name='customerID' value='$ID' readonly> </form>
                     <script type=\"text/javascript\"> window.onload=function(){ document.forms['account'].submit(); } </script>";
          }
      }?>
    <br><br>
    <label><b>customer account login:</b></label>
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <input hidden name="sub" value="0">
        <label>email</label><br>
        <input type="text" name="email"><br>
        <label>password</label><br>
        <input type="text" name="pass"><br>
        <input type="submit" value="Sign in">
    </form>
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_POST["sub"])) 
      {
          $ID = LOGIN($_POST["email"], $_POST["pass"], $_POST["sub"]);
          if($ID == '') echo "no work";
          else {
          if($_POST["sub"] == 1) echo "<form id='account' method='POST' action='resturantAccount/index.php'> <input type='hidden' name='accountID' value='$ID' readonly> </form>
                                       <script type=\"text/javascript\"> window.onload=function(){ document.forms['account'].submit(); } </script>";
          else echo "<form id='account' method='POST' action='customerAccount/index.php'> <input type='hidden' name='customerID' value='$ID' readonly> </form>
                     <script type=\"text/javascript\"> window.onload=function(){ document.forms['account'].submit(); } </script>";
          }
      }?>
    <br>
    <label><b>Sign up for customer subsciption:</b></label>
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
      <input hidden name="createCustomer" value="something">
      <label>Name: </label>
      <input type='text' name="firstname">
      <input type='text' name="lastname"><br>
      <label>Phone Number: </label>
      <input type='text' name="phoneNumber"><br>
      <label>Email: </label>
      <input type='text' name="email"><br>
      <label>Password: </label><input type='text' name="password"><br>
      <label>Address: </label><br>
      <label>Country </label><input type='text' name="country"><br>
      <label>City </label><input type='text' name="city"><br>
      <label>Street </label><input type='text' name="street"><br>
      <label>Street Number </label><input type='text' name="streetNum"><br>
      <label>Unit </label><input type='text' name="unit"><br>
      <label>Postcode </label><input type='text' name="postcode"><br>
      <label>Membership: </label>
      <label>Membership status </label>
      <select name="membership">
          <option value="silver">Silver</option>
          <option value="gold">Gold</option>
          <option value="platinum">Platinum</option>
      </select><br>
      <label>Payment type </label>
      <label>Annual payment </label><input type='radio' name='type' checked="checked" value='annually'><br>
      <label>Or </label><br>
      <label>monlthy payment </label><input type='radio' name='type' value='monthly'><br>
      <input type="submit" value="Sign up">
      <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_POST["createCustomer"]))
                createCustomer($_POST["firstname"], $_POST["lastname"], $_POST["phoneNumber"], $_POST["email"], $_POST["password"], $_POST["country"], $_POST["city"], $_POST["street"], $_POST["streetNum"], $_POST["unit"], $_POST["postcode"], $_POST["membership"], $_POST["type"]);
      ?>
    </form>
    <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
      <label><b>Visit your order: (only for non-member customers))</b></label><br>
      <label>Email</label><br>
      <input type="text" name="Email"><br>
      <input type="submit" value="Visit">
    </form>
    <?php if($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_POST["Email"]))
          {
              $conn = connectTodatabase();
              $ID = checkEmail($conn, $_POST["Email"], 0);

              if($ID == '')
                  echo 'wrong email address';
              else echo "<form id='account' method='POST' action='order.php'> <input type='hidden' name='ID' value='$ID' readonly> </form>
                         <script type=\"text/javascript\"> window.onload=function(){ document.forms['account'].submit(); } </script>";
              sqlsrv_close($conn);
          }?>
    </div>
    <div class='cart'>
      <form id='restartCart' method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <input hidden='true' name='restartCart' value='1'>
        <input type='submit' value='Empty Cart'>
      </form>
      <h2>Cart</h2>
      <table>
      <?php
        if(isset($_SESSION["cart"])) displayCart(true);
        else $_SESSION["cart"] = array();
    ?>
    <th></th>
    <th></th>
    <th>Total Price</th> 
    <th>Total Quantity</th> 
    </table>
    <form action="payment.php">
        <input type='submit' value='Complete Order'>
    </form>
    </div>
</body>
</html>