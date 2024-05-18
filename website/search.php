<?php
    require_once('functions.php');
    session_start();
?>

<!DOCTYPE html>
<html>
<head>
  <title>Searched</title>
  <style>
    .searchbar {
        display: inline;
        float: left;
        width: 15%;
    }

    .searchContainer {
        display: inline;
        float: left;
        width: 40%;
    }
    
    .item {
        width: 42%;
        margin: 3%;
        padding: 3px;
        border: 3px solid black;
        overflow: hidden;
        float: left;
    }
    .item .name {
        float: left;
    }
    .item .price {
        float: right;
    }
    .item input[type=submit] {
        position: relative;
        left: 10%;
    }
    .item .rating {
        left: 0%;
    }
    .item .infomation {
        display: none;
    }
    .item:hover .infomation {
        display: block;
    }
    .item .dietry {
        display: none;
    }
    .item:hover .dietry {
        display: block;
    }
    .item:hover input[type=submit] {
        position: relative;
        left: 60%;
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
<body onload="setInputs()">
  <div class="searchbar" >
  <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="GET">
      <label><b>search item:</b></label><br>
      <input type="text" id="srch" name="srch" value="<?php setFVal('srch'); ?>"><br>
      <input type="submit"><br>
      <label>Price Range: </label><br>
      <label>MIN </label><input type="text" id="price-" name="price-" value="<?php setFVal('price-'); ?>"><br>
      <label>MAX </label><input type="text" id="price+" name="price+" value="<?php setFVal('price+'); ?>"><br>
      <label>Vegan</label><input type="checkbox" id="isVegan" name="isVegan" <?php setFVal('isVegan'); ?>><br>
      <label>Vegeterian</label><input type="checkbox" id="isvegeterian" name="isvegeterian" <?php setFVal('isvegeterian'); ?>><br>
      <label>GlutenFree</label><input type="checkbox" id="isGlutenFree" name="isGlutenFree" <?php setFVal('isGlutenFree'); ?>><br>
      <label>Rating Range: </label><br>
      <label>MIN </label><input type="text" id="rating-" name="rating-" value="<?php setFVal('rating-'); ?>"><br>
      <label>MAX </label><input type="text" id="rating+" name="rating+" value="<?php setFVal('rating+'); ?>"><br>
      <label>Food category</label>
      <select id="category"  name="category" ?>">
        <option value="all">All</option>
        <option value="main">Main</option>
        <option value="entree">Entree</option>
        <option value="kids">Kids</option>
        <option value="desert">Desert</option>
        <option value="specials">Specials</option>
        <option value="drinks">Drinks</option>
      </select><br>
      <label>Search nearby resturants</label><input type="text" id="nearby" name="nearby" value="<?php setFVal('nearby'); ?>">m<br>
    </form>
  </div>
  <div class='searchContainer'>
  <?php
    $item = ($_GET["srch"] == '') ? ' ' : $_GET["srch"];
    if(isset($_GET["price-"]) == false) $min = 0;
    else $min = ($_GET["price-"] != "" && $_GET["price-"] >= 0) ? $_GET["price-"] : 0;
    if(isset($_GET["price+"]) == false) $max = 100;
    else $max = ($_GET["price+"] != "") ? $_GET["price+"] : 100;
    if($max < 0) $max = 0;
    $price = array($min, $max);
    $isVegan = isset($_GET['isVegan']) ? 1 : 0;
    $isvegeterian = isset($_GET['isvegeterian']) ? 1 : 0;
    $isGlutenFree = isset($_GET['isGlutenFree']) ? 1 : 0;
    if(isset($_GET["rating-"]) == false) $min = 0;
    else $min = (isset($_GET["rating-"]) == false && $_GET["rating-"] != "" && $_GET["rating-"] >= 0) ? $_GET["rating-"] : 0;
    if(isset($_GET["rating+"]) == false) $max = 5;
    else $max = (isset($_GET["rating+"]) == false && $_GET["rating+"] != "" && $_GET["rating+"] <= 5) ? $_GET["rating+"] : 5;
    if($min > 5) $min = 5;
    if($max < 0) $max = 0;
    $rating = array($min, $max);
    $category = isset($_GET['category']) ? $_GET["category"] : 'all';
    $delivery = (isset($_GET['nearby']) == false || $_GET['nearby'] == '') ? 100000 : $_GET['nearby'];
    $delivery = ($delivery < 0) ? 0 : $delivery;
    searchitems($item, $price, $isVegan, $isvegeterian, $isGlutenFree, $rating, $category, $delivery);
?>
  </div>
    <div class='cart'>
      <form id='restartCart' method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        <input hidden='true' name='restartCart' value='1'>
        <input type='submit' value='Empty Cart'>
      </form>
      <h2>Cart</h2>
      <table>
      <?php
        if ($_SERVER["REQUEST_METHOD"] == "GET")
        {
            if(isset($_POST["operation"])) editCart($_POST["ID"], $_POST["operation"]);
            displayCart(true);
        }
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
  <script>
    function setInputs() {
        var input = document.getElementById("srch");
        input = document.getElementById("category");
        input.value = '<?php echo $category = isset($_GET['category']) ? $_GET["category"] : 'all';?>';
        
    }
  </script>
</body>
</html>
