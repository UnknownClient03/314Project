<?php
    session_start();
    error_reporting(E_ERROR | E_PARSE);   //this hides all warnings from appearing, best to later fix these ;)
    if(isset($_REQUEST["accountID"]))
        $_SESSION["accountnum"] = $_REQUEST["accountID"];
    else if($_SESSION["accountnum"] == '') {
        echo "You don't have permission to access this page.";
        exit;
    }
    require_once('functions.php');
?>

<!DOCTYPE html>
<html>
<head>
  <title>Resturant Account</title>
  <style>
    div {
        display: inline;
        width: 100%;
        float: left;
      }
      .ChangeDetails, .changeHours, .changeKwords, .changeItemDetails, .changeItemKeywords, .createNewItem, .refresh, .reports {
        width: 33%;
      }
      .ChangeDetails input[type=submit], .changeItemDetails input[type=submit], .createNewItem input[type=submit], .reports
      {
        float: right;
      }
      .menuDetails {
          border: 3px solid black;
      }
      .menuItem {
          width: 23.68%;
          height: 360px;
          float: left;
          border: 3px solid black;
          padding-left: 1%;
          padding-top: 1%;
          border-collapse: collapse;
      }
  </style>
</head>
<body>
<div class="ChangeDetails">
  <input type="button" value="change Details" onclick='unHide("ChangeDetails")'><br>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Resturant name: </label>
    <input type='text' name="name">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["name"])) changeName($_REQUEST["name"]); ?>
  </form>
    <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>ABN: </label>
    <input type='text' name="abn">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["abn"])) changeAbn($_REQUEST["abn"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Phone Number: </label>
    <input type='text' name="phoneNumber">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["phoneNumber"])) Changephone($_REQUEST["phoneNumber"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Alternate phone Number: </label>
    <input type='text' name="altPhoneNumber">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["altPhoneNumber"])) ChangeAltphone($_REQUEST["altPhoneNumber"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Store manager name: </label>
    <input type='text' name="manager">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["manager"])) changemanager($_REQUEST["manager"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Email: </label>
    <input type='text' name="email">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["email"])) changeEmail($_REQUEST["email"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Website: </label>
    <input type='text' name="web">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["web"])) changeWeb($_REQUEST["web"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <label>Password: </label><br>
    <input type="submit" value="change">
    <label>old </label><input type='text' name="old"><br>
    <label>new </label><input type='text' name="new"><br>
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["old"])) changePassword($_REQUEST["old"], $_REQUEST["new"]); ?>
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
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["country"])) changeAddress($_REQUEST["country"], $_REQUEST["city"], $_REQUEST["street"], $_REQUEST["streetNum"], $_REQUEST["unit"], $_REQUEST["postcode"], ); ?>
  </form>
</div>
<div class='changeHours'>
    <input type="button" value="changeOperatingHours" onclick='unHide("changeHours")'><br>
    <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
      <label><b>Operating hours: </b></label><br>
      <label>Day: </label>
      <input type='radio' name="day" value="MON" ><label>Monday </label>
      <input type='radio' name="day" value="TUE" ><label>Tuesday </label>
      <input type='radio' name="day" value="WED" ><label>Wednesday </label>
      <input type='radio' name="day" value="THU" ><label>Thursday </label><br>
      <input type='radio' name="day" value="FRI" ><label>Friday </label>
      <input type='radio' name="day" value="SAT" ><label>Saturday </label>
      <input type='radio' name="day" value="SUN" ><label>Sunday </label>
      <br>
      <div id='hideLayer'>
        <label>Opening Time: </label>
        <select name="openingTimeH">
          <option value="00">12</option>
          <option value="01">1</option>
          <option value="02">2</option>
          <option value="03">3</option>
          <option value="04">4</option>
          <option value="05">5</option>
          <option value="06">6</option>
          <option value="07">7</option>
          <option value="08">8</option>
          <option value="09">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
        </select>
        <label>:</label>
        <select name="openingTimeM">
          <option value="00">00</option>
          <option value="15">15</option>
          <option value="30">30</option>
          <option value="45">45</option>
        </select>
        <label>AM</label><input type="radio" name="openingIsAM" value="AM"><label>PM</label><input type="radio" name="openingIsAM" value="PM"><br>
        
        <label>Closing Time: </label>
        <select name="closingTimeH">
          <option value="00">12</option>
          <option value="01">1</option>
          <option value="02">2</option>
          <option value="03">3</option>
          <option value="04">4</option>
          <option value="05">5</option>
          <option value="06">6</option>
          <option value="07">7</option>
          <option value="08">8</option>
          <option value="09">9</option>
          <option value="10">10</option>
          <option value="11">11</option>
        </select>
        <label>:</label>
        <select name="closingTimeM">
          <option value="00">00</option>
          <option value="15">15</option>
          <option value="30">30</option>
          <option value="45">45</option>
        </select>
        <label>AM</label><input type="radio" name="closingIsAM" value="AM"><label>PM</label><input type="radio" name="closingIsAM" value="PM"><br>
      </div>
      <input type="checkbox" name="isClosed" value="isClosed" onclick="isClosedClicked()"><label>Is closed</label><br>
      <input type="submit" value="Submit">
      <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["day"])) changeOperatingHours($_REQUEST["day"], $_REQUEST["openingTimeH"], $_REQUEST["openingTimeM"], $_REQUEST["closingTimeH"], $_REQUEST["closingTimeM"], $_REQUEST["openingIsAM"], $_REQUEST["closingIsAM"], $_REQUEST["isClosed"]); ?>
    </form>
</div>
<div class='changeKwords'>
    <input type="button" value="changeKeywords" onclick='unHide("changeKwords")'><br>
    <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
      <?php setKwords(); ?>
      <input type='text' name='kword[]'>
      <div id='newTextField'></div><br>
      <input type="button" value="new key word" onclick='newtextField("newTextField", "kword[]")'>
      <input type="submit" value="Submit">
      <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["kword"])) changeKword($_REQUEST["kword"]); ?>
    </form>
</div>
<div class='refresh'>
  <form method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input type="submit" value="refresh">
  </form><br>
</div>
<div class='reports'>
  <input type="button" value="Show Daily Report" onclick='unHideReport("changeReport")'><br>
  <div style="visibility: hidden;" class='changeReport'>
    <?php  displayReport(); ?>
  </div>
</div>
<div>
<?php displayResturantInfo(); ?><br><br>
</div>
<div class='changeItemDetails'>
  <input type="button" value="change Item Details" onclick='unHide("changeItemDetails")'>
  <label>Item code: </label><input type='text' id='itemCode' onChange='updateItemCode("changeItemDetails")'><br>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input hidden name='item'>
    <label>Item name: </label>
    <input type='text' name="itemName">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["item"])) if(isset($_REQUEST["itemName"])) changeItemName($_REQUEST["item"], $_REQUEST["itemName"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input hidden name='item'>
    <label>Item Description: </label>
    <input type='text' name="description">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["item"])) if(isset($_REQUEST["description"])) changeItemDescription($_REQUEST["item"], $_REQUEST["description"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input hidden name='item'>
    <input hidden name='availability' value='true'>
    <label>Item availability: </label>
    <input type='checkbox' name="isavailabile">
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["item"])) if(isset($_REQUEST["availability"])) changeItemAvailability($_REQUEST["item"], $_REQUEST["isavailabile"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input hidden name='item'>
    <label>Price: $</label>
    <input type='text' name="price"><br>
    <label>Discount: $</label>
    <input type='text' name="discount">
    <input type="submit" value="change"><br><br>
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["item"])) if(isset($_REQUEST["price"]) || isset($_REQUEST["discount"])) changeItemPrice($_REQUEST["item"], $_REQUEST["price"], $_REQUEST["discount"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input hidden name='item'>
    <label>Item Dietry: </label><br>
    <label>Item kilojoules: </label><input type='text' name="kilojoules"><br>
    <label>Item Vegan: </label><input type='checkbox' name="isVegan"><br>
    <label>Item Vegetarian: </label><input type='checkbox' name="isvegeterian"><br>
    <label>Item Gluten Free: </label><input type='checkbox' name="isGlutenFree">
    <input type="submit" value="change"><br><br>
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["item"])) if(isset($_REQUEST["kilojoules"])) changeItemDietry($_REQUEST["item"], $_REQUEST["kilojoules"], $_REQUEST["isVegan"], $_REQUEST["isvegeterian"], $_REQUEST["isGlutenFree"]); ?>
  </form>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
    <input hidden name='item'>
    <label>Item category: </label>
    <select name="category">
      <option value="main">Main</option>
      <option value="desert">Desert</option>
      <option value="entree">entree</option>
      <option value="drinks">Drinks</option>
      <option value="kids">Kids</option>
      <option value="specials">Specials</option>
    </select>
    <input type="submit" value="change">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["item"])) if(isset($_REQUEST["category"])) changeItemCategory($_REQUEST["item"], $_REQUEST["category"]); ?>
  </form>
</div>
<div class='createNewItem'>
  <input type="button" value="Create new item" onclick='unHide("createNewItem")'><br>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <input hidden name="create">
    <label>Item name: </label>
    <input type='text' name="itemName"><br>
    <label>Item Description: </label>
    <input type='text' name="description"><br>
    <label>Item availability: </label>
    <input type='checkbox' name="isavailabile"><br>
    <label>Price: $</label>
    <input type='text' name="price"><br>
    <label>Discount: %</label>
    <input type='text' name="discount"><br>
    <label> off</label>
    <label>Item Dietry: </label><br>
    <label>Item kilojoules: </label><input type='text' name="kilojoules"><br>
    <label>Item Vegan: </label><input type='checkbox' name="isVegan"><br>
    <label>Item Vegetarian: </label><input type='checkbox' name="isvegeterian"><br>
    <label>Item Gluten Free: </label><input type='checkbox' name="isGlutenFree"><br>
    <label>Item category: </label>
    <select name="category">
      <option value="main">Main</option>
      <option value="desert">Desert</option>
      <option value="entree">entree</option>
      <option value="drinks">Drinks</option>
      <option value="kids">Kids</option>
      <option value="specials">Specials</option>
    </select>
      <input type="submit" value="Submit">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["create"])) createItem($_REQUEST["itemName"], $_REQUEST["description"], $_REQUEST["isavailabile"], $_REQUEST["price"], $_REQUEST["discount"], $_REQUEST["kilojoules"], $_REQUEST["isVegan"], $_REQUEST["isvegeterian"], $_REQUEST["isGlutenFree"], $_REQUEST["category"]); ?>
  </form>
</div>
<div class='changeItemKeywords'>
    <input type="button" value="change Item keywords" onclick='unHide("changeItemKeywords")'>
    <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
      <label>Item code: </label><input type='text' name='itemID' id='itemKwordCode' onChange='updateItemkwordCode()'><br>
      <div id='kwordContainer'><?php setItemKwords(); ?></div>
      <input type='text' name='Itemkword[]'>
      <div id='newItemTextField'></div><br>
      <input type="button" value="new key word" onclick='newtextField("newItemTextField", "Itemkword[]")'>
      <input type="submit" value="Submit">
      <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["Itemkword"])) changeItemKword($_REQUEST["Itemkword"], $_REQUEST["itemID"]); ?>
    </form>
</div>
<div class='deleteItem'>
  <input type="button" value="Delete Item" onclick='unHide("deleteItem")'>
  <form hidden method="POST" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
    <input type='text' name='DeletedItem'>
    <input type="submit" value="Delete">
    <?php if ($_SERVER["REQUEST_METHOD"] == "POST") if(isset($_REQUEST["DeletedItem"])) removeItem($_REQUEST["DeletedItem"]) ?>
  </form>
</div>
<div class='menuDetails'>
  <h3>Menu</h3>
  <?php displayMenuInfo(); ?>
</div>
<script>
    function unHide(classname) {
        const changeClass = document.getElementsByClassName(classname);
        const form = changeClass[0].getElementsByTagName("form");
        for(var i = 0; i < form.length; i++)
        {
            if(form[i].hidden == true) form[i].hidden = false;
            else form[i].hidden = true;
        }
    }

    function unHideReport(classname) {
        const changeClass = document.getElementsByClassName(classname);
        if(changeClass[0].style.visibility == 'hidden') changeClass[0].style.visibility = 'visible';
        else changeClass[0].style.visibility = 'hidden';
    }
   
    function isClosedClicked() {
      const select = document.getElementById('hideLayer');
      if(select.style.display == "none") select.style.display = "block";
      else select.style.display = "none";
    }
   
    function newtextField(IDname, type) {
      var container = document.getElementById(IDname);
      var input = document.createElement("input");
      input.name = "Itemkword[]";
      input.type = "text";
      container.appendChild(input);
      container.appendChild(document.createElement("br"));
    }
   
    function updateItemCode(classname) {
        const changeClass = document.getElementsByClassName(classname);
        const form = changeClass[0].getElementsByTagName("form");
        for(var i = 0; i < form.length; i++)
        {
            var input = form[i].getElementsByTagName("input");
            input[0].value = document.getElementById("itemCode").value;
        }
    }

    function updateItemkwordCode() {
        var itemID = document.getElementById("itemKwordCode");
        var container = document.getElementById("kwordContainer");
        const tags = container.getElementsByTagName("*");
        for(var i = 0; i < tags.length; i++)
        {
            tags[i].hidden = true;
            tags[i].disabled = true;
        }

        var newContainer = document.getElementById(itemID.value);
        const newtags = newContainer.getElementsByTagName("*");
        for(var i = 0; i < newtags.length; i++)
        {
            newtags[i].hidden = false;
            newtags[i].disabled = false;
        }
    }

  function refresh() { location.reload(); }
</script>
</body>
</html>
