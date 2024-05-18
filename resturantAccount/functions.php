<?php 
function DEBUG($x) { echo "<script>alert('$x')</script>"; }	

function HTMLParser($filename, $values, $tag) {
    $str = file_get_contents($filename);
    $htmlstr = "";
    $i = 0;
    for(; substr($str, $i, strlen($tag)) != $tag; $i++) {}
    $i = $i + strlen($tag);

    for($j = 0; $i < strlen($str) && substr($str, $i, strlen($tag)) != $tag; $i++)
    {
        if($str[$i] == '?') $htmlstr = $htmlstr.$values[$j++];
        else $htmlstr = $htmlstr.$str[$i];
    }
    echo $htmlstr;
}

function checkEmail($conn, $email, $includeMembers) {
    $flag = '';
    $condition = ($includeMembers == 0) ? 'customerID IS NULL AND' : '';

    $tsql = "SELECT ResturantID FROM Contact WHERE email = ?;";
    $param = array(&$email);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    try { if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
            $flag = $obj["ResturantID"];
    } } catch(Exception $e) { echo 'data base error: '. $e; }
    sqlsrv_free_stmt($stmt);
    return $flag;
}

function checkItem($conn, $itemID) {
    $ID = $_SESSION["accountnum"];

    $tsql = "SELECT ID FROM Item WHERE ResturantID = ? AND ID = ?;";
    $param = array(&$ID, $itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    $flag = false;
    try { if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) $flag = true;
    } catch(Exception $e) { echo 'data base error: '. $e; }

    return $flag;
}

function changeName($name) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($name == '' || ctype_alpha($name) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Make sure resturant name only contains letters.</p>";
        return;
    }

    $tsql = "UPDATE Resturant SET name = ? WHERE ID = ?;";
    $param = array(&$name, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeAbn($abn) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($abn == '' || ctype_digit($abn) == false || strlen($abn) != 9)
    {
        sqlsrv_close($conn);
        echo "<p>Make sure ABN is a valid number(9 digits)</p>";
        return;
    }

    $tsql = "UPDATE Resturant SET abn = ? WHERE ID = ?;";
    $param = array(&$abn, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function Changephone($phoneNumber) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($phoneNumber == '' || ctype_digit($phoneNumber) == false || strlen($phoneNumber) != 10)
    {
        sqlsrv_close($conn);
        echo "<p>Make sure is a valid phone number(10 digits)</p>";
        return;
    }

    $tsql = "UPDATE Contact SET phoneNumber = ? WHERE ResturantID = ?;";
    $param = array(&$phoneNumber, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function ChangeAltphone($alternatePhoneNumber) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($alternatePhoneNumber == '' || ctype_digit($alternatePhoneNumber) == false || strlen($alternatePhoneNumber) != 10)
    {
        sqlsrv_close($conn);
        echo "<p>Make sure is a valid phone number(10 digits)</p>";
        return;
    }

    $tsql = "UPDATE Contact SET alternatePhoneNumber = ? WHERE ResturantID = ?;";
    $param = array(&$alternatePhoneNumber, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changemanager($manager) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($manager == '' || ctype_alpha($manager) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Make sure manager name only contains letters.</p>";
        return;
    }

    $tsql = "UPDATE Contact SET manager = ? WHERE ResturantID = ?;";
    $param = array(&$manager, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeEmail($email) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if(filter_var($email, FILTER_VALIDATE_EMAIL) == false || checkEmail($conn, $email, 1) != '')
    {
        sqlsrv_close($conn);
        echo "<p>Make sure input is a valid email address and is unique</p>";
        return;
    }

    $tsql = "UPDATE Contact SET email = ? WHERE ResturantID = ?;";
    $param = array(&$email, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeWeb($web) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($web == ''/* || preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $web) == false*/)
    {
        sqlsrv_close($conn);
        echo "<p>Make sure input is a valid website.</p>";
        return;
    }

    $tsql = "UPDATE Contact SET website = ? WHERE ResturantID = ?;";
    $param = array(&$web, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changePassword($old, $new) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if(strlen($new) < 8 || !preg_match("#[0-9]+#", $new) || !preg_match("#[a-zA-Z]+#", $new))
    {
        sqlsrv_close($conn);
        echo "<p>Make sure password contains letters and numbers and is at least 8 characters long.</p>";
        return;
    }
    
    $tsql = "SELECT salt, pepper FROM ResturantAccountDetails WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    
    $salt = '';
    $pepper = '';

    try {
        if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
        {
            $salt = $obj['salt'];
            $pepper = $obj['pepper'];
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }
    sqlsrv_free_stmt($stmt);
    $hashedPass = hash('sha256', $old.$salt.$pepper);

    $tsql = "EXEC checkPassword ?, 1;";
    $param = array(&$hashedPass);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    $ID = '';
    try {
        if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) $ID = $obj['ID'];
    } catch(Exception $e) { echo 'data base error: '. $e; }
    sqlsrv_free_stmt($stmt);

    if($ID == '')
    {
        DEBUG("wrong password");
        exit;
    }

    $newPassword = hash('sha256', $new.$salt.$pepper);
    
    $tsql = "UPDATE ResturantAccountDetails SET Hashpassword = ? WHERE ResturantID = ?;";
    $param = array(&$newPassword, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeAddress($country, $city, $streetname, $streetNumber, $unit, $postcode) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($country == '' || ctype_alpha($country) == false ||
       $city == '' || ctype_alpha($city) == false ||
       $streetname == '' || preg_match ("/^[a-zA-Z\s]+$/",$street) == false ||
       $streetNumber == '' || ctype_digit($streetNumber) == false ||
       strlen($unit) > 1 ||
       $postcode == '' || strlen($postcode) != 4 || ctype_digit($postcode) == false)
    {
        sqlsrv_close($conn);
        echo "<p>make sure email address is valid.</p>";
        return;
    }

    if($unit == '') $unit = NULL;
    else $unit;

    $tsql = "UPDATE RAddress SET Country = ?, City = ?, Street = ?, StreetNumber = ?, unit = ?, Postcode = ? WHERE ResturantID = ?;";
    $param = array(&$country, &$city, &$streetname, &$streetNumber, &$unit, &$postcode, &$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeOperatingHours($day, $openingTimeH, $openingTimeM, $closingTimeH, $closingTimeM, $openingIsAM, $closingIsAM, $isClosed) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if($isClosed == 'isClosed')
    {
        $tsql = "DELETE FROM OperatingHours WHERE day = ? AND ResturantID = ?;";
        $param = array(&$day, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
    }
    else
    {
        $tsql = "SELECT COUNT(*) as num FROM OperatingHours WHERE day = ? AND ResturantID = ?;";
        $param = array(&$day, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        $x;
        try { if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) $x = $obj['num'];}
        catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);

        if($openingIsAM == 'PM') $openingTimeH = $openingTimeH+12;
        if($closingIsAM == 'PM') $closingTimeH = $closingTimeH+12;

        $closingTime = $closingTimeH.$closingTimeM;
        $openingTime = $openingTimeH.$openingTimeM;

        if($closingTime <= $openingTime)
        {
            echo '<p>closing time cant be before opening time</p>';
            sqlsrv_close($conn);
            return;
        }

        if($x == 1)
        {
            $tsql = "UPDATE OperatingHours SET startTime = ?, endTime = ? WHERE day = ? AND ResturantID = ?;";
            $param = array(&$openingTime, &$closingTime, &$day, &$ID);
            if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
            if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
            else sqlsrv_free_stmt($stmt);
        }
        else if($x == 0)
        {
            $tsql = "INSERT INTO OperatingHours VALUES (?, ?, ?, ?);";
            $param = array(&$ID, &$day, &$openingTime, &$closingTime);
            if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
            if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
            else sqlsrv_free_stmt($stmt);
        }
        sqlsrv_close($conn);
    }
}

function setKwords() {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];   

    $tsql = "SELECT * FROM ResturantKeyword WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    try {
        while($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
        {
            echo "<input type='text' name='kword[]' value='$obj[kWord]'><br>";
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }
    sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeKword($kwords) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];    

    $tsql = "DELETE FROM ResturantKeyword WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);

    for($i = 0; $i < count($kwords); $i++)
    {
        $value = $kwords[$i];
        if($value == '' || ctype_alpha($value) == false) continue;
        $tsql = "INSERT INTO ResturantKeyword VALUES(?, ?);";
        $param = array(&$ID, &$value);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
    }

    sqlsrv_close($conn);
}

function changeItemName($itemID, $name) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];
    if(checkItem($conn, $itemID) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Item ID is not in your resturant list.</p>";
        return;
    }
    
    if($name == '')
    {
        sqlsrv_close($conn);
        echo "<p>Make sure item exists.</p>";
        return;
    }
    
    $tsql = "UPDATE Item SET name = ? WHERE ResturantID = ? AND ID = ?;";
    $param = array(&$name, &$ID, &$itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeItemDescription($itemID, $description) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];
    if(checkItem($conn, $itemID) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Item ID is not in your resturant list.</p>";
        return;
    }

    if($description == '') $description = NULL;

    $tsql = "UPDATE Item SET description = ? WHERE ResturantID = ? AND ID = ?;";
    $param = array(&$description, &$ID, &$itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeItemAvailability($itemID, $availability) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];   
    if(checkItem($conn, $itemID) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Item ID is not in your resturant list.</p>";
        return;
    }

    $isAvailable = ($availability == 'on') ? 1 : 0;


    $tsql = "UPDATE Item SET availability = ? WHERE ResturantID = ? AND ID = ?;";
    $param = array(&$isAvailable, &$ID, &$itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeItemPrice($itemID, $price, $discount) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];
    if(checkItem($conn, $itemID) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Item ID is not in your resturant list.</p>";
        return;
    }


    if($discount == '') $discount = 0;
    if($price == '' || $discount >= 1 || is_float($price) || is_float($discount))
    {
        sqlsrv_close($conn);
        echo "<p>Make sure discount and price are valid decimals/integers.</p>";
        return;
    }


    $tsql = "UPDATE Item SET price = ?, discount = ? WHERE ResturantID = ? AND ID = ?;";
    $param = array(&$price, &$discount, &$ID, &$itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeItemDietry($itemID, $kilojoules, $isvegan, $isVegetarian, $isglutenFree) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];
    if(checkItem($conn, $itemID) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Item ID is not in your resturant list.</p>";
        return;
    }
    if(ctype_digit($kilojoules) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Make sure kilojoules are integers.</p>";
        return;
    }

    $kilojoules = ($kilojoules == '') ? NULL : $kilojoules;
    $isvegan = ($isvegan == '') ? 0 : 1;
    $isVegetarian = ($isVegetarian == '') ? 0 : 1;
    $isglutenFree = ($isglutenFree == '') ? 0 : 1;

    $tsql = "UPDATE Item SET kilojoules = ?, isVegan = ?, isvegeterian = ?, isGlutenFree = ? WHERE ResturantID = ? AND ID = ?;";
    $param = array(&$kilojoules, &$isvegan, &$isVegetarian, &$isglutenFree, &$ID, &$itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function changeItemCategory($itemID, $category) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];   
    if(checkItem($conn, $itemID) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Item ID is not in your resturant list.</p>";
        return;
    }

    if($category != 'drinks' && $category != 'desert' && $category != 'entree' && $category != 'main' && $category != 'kids' && $category != 'specials')
    {
        sqlsrv_close($conn);
        echo "<p>Something went wrong.</p>";
        return;
    }

    $tsql = "UPDATE Item SET category = ? WHERE ResturantID = ? AND ID = ?;";
    $param = array(&$category, &$ID, &$itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function createItem($name, $description, $availability, $price, $discount, $kilojoules, $isvegan, $isVegetarian, $isglutenFree, $category) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];   

    $description = ($description == '') ? NULL : $description;
    $availability = ($availability == 'on') ? 1 : 0;
    if($discount == '') $discount = 0;
    $kilojoules = ($kilojoules == '') ? NULL : $kilojoules;
    $isvegan = ($isvegan == '') ? 0 : 1;
    $isVegetarian = ($isVegetarian == '') ? 0 : 1;
    $isglutenFree = ($isglutenFree == '') ? 0 : 1;

    if($name == '' || ctype_digit($kilojoules) == false || $price == '' || $discount >= 1 || is_float($price) || is_float($discount) ||
    $category != 'drinks' && $category != 'desert' && $category != 'entree' && $category != 'main' && $category != 'kids' && $category != 'specials')
    {
        sqlsrv_close($conn);
        echo "<p>make sure all inputs are valid.</p>";
        return;
    }
    
    $itemID = getNewItemID($conn);

    $tsql = "INSERT INTO Item VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 0, ?);";
    $param = array(&$ID, &$itemID, &$name, &$description, &$availability, &$price, &$discount, &$kilojoules, &$isvegan, &$isVegetarian, &$isglutenFree, &$category);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}
function removeItem($itemID) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if(checkItem($conn, $itemID) == false)
    {
        echo "Item does not exist";
        sqlsrv_close($conn);
        return;
    }

    $param = array(&$itemID);
    $tsql = "DELETE FROM ItemKeyword WHERE itemID = ?;";
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    $tsql = "DELETE FROM ItemReview WHERE itemID = ?;";
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    $tsql = "DELETE FROM OrderDetails WHERE itemID = ?;";
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    $tsql = "DELETE FROM Item WHERE ID = ?;";
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function getNewItemID($conn) {
    $tsql = "SELECT MAX(ID) as maxID FROM Item";
    $stmt = sqlsrv_query($conn, $tsql);
    if($stmt == false) DEBUG('Query error');

    $max;
    try { if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) $max = $obj["maxID"] + 1; }
    catch(Exception $e) { echo 'data base error: '. $e; }
    sqlsrv_free_stmt($stmt);
    return $max;
}

function setItemKwords() {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    $tsqlB = "SELECT ID FROM Item WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmtB = sqlsrv_prepare($conn, $tsqlB, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmtB)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    $innerHTML = [];
    $i = 0;

    try {
        while($obj = sqlsrv_fetch_array($stmtB, SQLSRV_FETCH_ASSOC))
        {
            $itemID = $obj['ID'];
            $innerHTML[$i] = "<div id='$itemID' hidden>";
            $tsqlA = "SELECT * FROM ItemKeyword WHERE itemID = ?;";
            $param = array(&$itemID);
            if(!$stmtA = sqlsrv_prepare($conn, $tsqlA, $param)) echo 'Query Error';
            if(!sqlsrv_execute($stmtA)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

            try {
                while($obj = sqlsrv_fetch_array($stmtA, SQLSRV_FETCH_ASSOC))
                {
                    $innerHTML[$i] = $innerHTML[$i]."<input hidden type='text' name='Itemkword[]' value='$obj[kWord]'><br hidden>";
                }
            } catch(Exception $e) { echo 'data base error: '. $e; }
            sqlsrv_free_stmt($stmtA);

            $innerHTML[$i] = $innerHTML[$i]."</div>";
            $i++;
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }
    sqlsrv_free_stmt($stmtB);

    foreach($innerHTML as $x) echo $x;
    sqlsrv_close($conn);
}

function changeItemKword($kwords, $itemID) {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    if(checkItem($conn, $itemID) == false)
    {
        sqlsrv_close($conn);
        echo "<p>Item ID is not in your resturant list.</p>";
        return;
    }

    $tsql = "DELETE FROM ItemKeyword WHERE itemID = ?";
    $param = array(&$itemID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
    else sqlsrv_free_stmt($stmt);
    for($i = 0; $i < count($kwords); $i++)
    {
        $value = $kwords[$i];
        if($value == '' || ctype_alpha($value) == false) continue;
        $tsql = "INSERT INTO ItemKeyword VALUES(?, ?);";
        $param = array(&$itemID, &$value);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
    }

    sqlsrv_close($conn);
}

function displayReport() {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    $tsql = "SELECT * FROM Order_ WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    HTMLParser("displayReport.html", array(), "<?head>");
    
    $total;
    $totalItems;
    $totalorders;

    try {
        while($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
        {
            $total = $total + number_format($obj['totalprice'], 2, '.', '');
            $totalItems = $totalItems + $obj['quantity'];
            $totalorders = $totalorders + 1;
            $itemID = $obj['ID'];
            $orderDate = $obj['orderDate']->format('y/m/d');
            $status = $obj['status'];
            $quantity = $obj['quantity'];
            $totalprice = $obj['totalprice'];

            $values = array(&$itemID, &$orderDate, &$status, &$quantity, &$totalprice);
            HTMLParser("displayReport.html", $values, "<?body>");
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }


    $values = array(&$totalorders, &$totalItems, &$total);
    HTMLParser("displayReport.html", $values, "<?foot>");

    sqlsrv_close($conn);
}

function displayResturantInfo() {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];
    echo "<h3>Resturant</h3>";

    $tsql = "SELECT * FROM Resturant JOIN RAddress ON ID = RAddress.ResturantID JOIN Contact ON RAddress.ResturantID = Contact.ResturantID WHERE ID = ?;";
    $param = array(&$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    try {
        if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
        {
            $name = $obj['name'];
            $abn = $obj['abn'];
            $rating = $obj['rating'];
            $address = $obj['Country'].", ".$obj['City'].", ".$obj['StreetNumber']." ".$obj['Street'];
            if($obj['unit'] != '') $address = $address.", ".$obj['unit'];
            $address = $address.", ".$obj['postcode'];
            $phoneNumber = $obj['phoneNumber'];
            $altPhone = $obj['alternatePhoneNumber'];
            $manager = $obj['manager'];
            $amail = $obj['email'];
            $website = $obj['website'];

            $values = array(&$name, &$abn, &$rating, &$address, &$phoneNumber, &$altPhone, &$manager, &$amail, &$website);
            HTMLParser("displayResturantInfo.html", $values, "<?main>");
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }

    sqlsrv_free_stmt($stmt);

    $tsql = "SELECT * FROM OperatingHours WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    try {
        HTMLParser("displayResturantInfo.html", array(), "<?OPheading>");
        while($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
        {
            $day = $obj['day'];
            $start = $obj['endTime'];
            $end = $obj['endTime'];
            $values = array(&$day, &$start, &$end);
            HTMLParser("displayResturantInfo.html", $values, "<?OPbody>");
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }

    sqlsrv_free_stmt($stmt);

    $tsql = "SELECT * FROM ResturantKeyword WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    try {
        HTMLParser("displayResturantInfo.html", array(), "<?KWheading>");
        while($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
        {
            $kword =  $obj['kWord'];
            HTMLParser("displayResturantInfo.html", array(&$kword), "<?KWbody>");
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }
    
    sqlsrv_free_stmt($stmt);
    sqlsrv_close($conn);
}

function displayMenuInfo() {
    $conn = connectToResturant();
    $ID = $_SESSION["accountnum"];

    $tsqlA = "SELECT * FROM Item WHERE ResturantID = ?;";
    $param = array(&$ID);
    if(!$stmtA = sqlsrv_prepare($conn, $tsqlA, $param)) echo 'Query Error';
    if(!sqlsrv_execute($stmtA)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

    try {
        while($obj = sqlsrv_fetch_array($stmtA, SQLSRV_FETCH_ASSOC))
        {
            $itemID = $obj['ID'];
            $name = $obj['name'];
            $description = $obj['description'];
            $availability = $obj['availability'];
            $price = $obj['price'];
            $discount = $obj['discount'];
            $kilojoules = $obj['kilojoules'];
            $isvegan = $obj['isVegan'];
            $isVegetarian = $obj['isvegeterian'];
            $isglutenFree = $obj['isGlutenFree'];
            $rating = $obj['rating'];
            $category = $obj['category'];

            $values = array(&$itemID, &$name, &$description, &$availability, &$price, &$discount, &$kilojoules, &$isvegan, &$isVegetarian, &$isglutenFree, &$rating, &$category);
            HTMLParser("displayItemInfo.html", $values, "<?main>");

            $menuID = $obj['ID'];
            $tsqlB = "SELECT * FROM ItemKeyword WHERE itemID = ?;";
            $param = array(&$menuID);
            if(!$stmtB = sqlsrv_prepare($conn, $tsqlB, $param)) echo 'Query Error';
            if(!sqlsrv_execute($stmtB)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

            HTMLParser("displayItemInfo.html", array(), "<?KWheading>");
            while($objB = sqlsrv_fetch_array($stmtB, SQLSRV_FETCH_ASSOC))
            {
                $kword = $objB['kWord'];
                HTMLParser("displayItemInfo.html", array(&$kword), "<?KWbody>");
            }
            echo "<br>";
            sqlsrv_free_stmt($stmtB);

            $tsqlB = "SELECT * FROM ItemReview WHERE itemID = ?;";
            $param = array(&$menuID);
            if(!$stmtB = sqlsrv_prepare($conn, $tsqlB, $param)) echo 'Query Error';
            if(!sqlsrv_execute($stmtB)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

            HTMLParser("displayItemInfo.html", array(), "<?RevHeading>");
            while($objB = sqlsrv_fetch_array($stmtB, SQLSRV_FETCH_ASSOC))
            {
                $name = $objB['name'];
                $description = $objB['desciprtion'];
                $rating = $objB['rating'];

                $values = array(&$name, &$description, &$rating);
                HTMLParser("displayItemInfo.html", $values, "<?RevBody>");
            }
            sqlsrv_free_stmt($stmtB);
            HTMLParser("displayItemInfo.html", array(), "<?foot>");
        }
    } catch(Exception $e) { echo 'data base error: '. $e; }

    sqlsrv_free_stmt($stmtA);
    sqlsrv_close($conn);
}

function connectToResturant() {
    $servername = "LAPTOP-MN48RQJD\SQL2024X";
    $database = "RESTURANTS";
    $uid = "resturantAccounts";
    $pass = "";;

    $connection = [
    "Database" => $database, 
    "Uid" => $uid,
    "PWD" => $pass
    ];

    $conn = sqlsrv_connect($servername, $connection);
    if(!$conn) die(print_r(sqlsrv_errors(), true));
    else return $conn;
}
?>