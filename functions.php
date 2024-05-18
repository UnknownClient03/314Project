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

    function setFVal($name) {
        if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_REQUEST[$name])) echo $_REQUEST[$name];
        else if($_SERVER["REQUEST_METHOD"] == "GET" && isset($_GET[$name]))
        {
            if($name == "price-") echo ($_GET["price-"] != "" && $_GET["price-"] >= 0) ? $_GET["price-"] : 0;
            else if($name == 'price+') { $max = ($_GET["price+"] != "") ? $_GET["price+"] : 100;
                                    if($max < 0) echo 0;
                                    else echo $max; }
            else if($name == 'isVegan') echo $isVegan = isset($_GET['isVegan']) ? 'checked="true"' : '';
            else if($name == 'isvegeterian') echo $isvegeterian = isset($_GET['isvegeterian']) ? 'checked="true"' : '';
            else if($name == 'isGlutenFree') echo $isGlutenFree = isset($_GET['isGlutenFree']) ? 'checked="true"' : '';
            else if($name == 'rating-') { $min = ($_GET["rating-"] != "" && $_GET["rating-"] >= 0) ? $_GET["rating-"] : 0;
                                     if($min > 5) echo 5;
                                     else echo $min; }
            else if($name == 'rating+') { $max = ($_GET["rating+"] != "" && $_GET["rating+"] <= 5) ? $_GET["rating+"] : 5;
                                     if($max < 0) echo 0;
                                     else echo $max; }
            else if($name == 'nearby') echo ($_GET['nearby'] < 0) ? 0 : $_GET['nearby'];
            else echo $_GET[$name];
        }
        else echo '';
    }

	function LOGIN($email, $password, $isResturant) {
        $conn = connectTodatabase();

        $tsql = "EXEC getSaltPepper ?, ?;";
        $param = array(&$email, &$isResturant);
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
        $hashedPass = hash('sha256', $password.$salt.$pepper);
     
        $tsql = "EXEC checkPassword ?, ?;";
        $param = array(&$hashedPass, &$isResturant);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $ID = '';
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) $ID = $obj['ID'];
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
        
        return $ID;
	}

    function createCustomer($firstname, $lastname, $phoneNumber, $email, $password, $country, $city, $street, $streetNum, $unit, $postcode, $membership, $type) {
        $conn = connectTodatabase();

        if($firstname == '' || $lastname == '' || ctype_alpha($firstname) == false || ctype_alpha($lastname) == false ||
           $phoneNumber == '' || ctype_digit($phoneNumber) == false || strlen($phoneNumber) != 10 || 
           filter_var($email, FILTER_VALIDATE_EMAIL) == false || 
           $country == '' || ctype_alpha($country) == false ||
           $city == '' || ctype_alpha($city) == false ||
           $street == '' || preg_match ("/^[a-zA-Z\s]+$/",$street) == false ||
           $streetNum == '' || ctype_digit($streetNum) == false ||
           strlen($unit) > 1 ||
           $postcode == '' || strlen($postcode) != 4 || ctype_digit($postcode) == false)
        {
            sqlsrv_close($conn);
            echo 'Make sure all inputs are valid.';
            return;
        }

        if(checkEmail($conn, $email, 1) != '')
        {
            echo 'email already in database';
            sqlsrv_close($conn);
            return;
        }

        $ID = getNewCustomerID($conn);
        $salt = '';
        for($i = 0; $i < 16; $i++) $salt = $salt.rand(0,9);
        $pepper = '';
        for($i = 0; $i < 16; $i++) {
            $ran = rand(0,15);
            switch ($ran) {
                case 10: $pepper = $pepper."a"; break;
                case 11: $pepper = $pepper."b"; break;
                case 12: $pepper = $pepper."c"; break;
                case 13: $pepper = $pepper."d"; break;
                case 14: $pepper = $pepper."e"; break;
                case 15: $pepper = $pepper."f"; break;
                default: $pepper = $pepper.$ran;
            }
        }
        $hashedPass = hash('sha256', $password.$salt.$pepper);

        $lastpayment = date("Y-m-d");
        $nextPay = date_create($lastpayment);
        if($type == 'annually') date_modify($nextPay,"+1 years");
        else if($type == 'monthly') date_modify($nextPay,"+1 months");
        $nextPayment = date_format($nextPay,"Y-m-d");

        $unit = ($unit == '') ? NULL : $unit;

        $tsql = "EXEC InsertNewCustomer ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1;";
        $param = array(&$ID, &$firstname, &$lastname, &$phoneNumber, &$email, &$hashedPass, &$salt, &$pepper, &$country, &$city, &$street, &$streetNum, &$unit, &$postcode, &$membership, &$type, &$lastpayment, &$nextPayment);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
    }

    function getNewCustomerID($conn) {
        $tsql = "SELECT MIN(ID) + 1 as maxID FROM Customer WHERE ID + 1 NOT IN (SELECT ID FROM Customer);";
        $stmt = sqlsrv_query($conn, $tsql);
        if($stmt == false) DEBUG('Query errorI');

        $max;
        try { if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) $max = $obj["maxID"]; }
        catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        return $max;
    }

    function searchitems($item, $price, $isVegan, $isvegeterian, $isGlutenFree, $rating, $category, $delivery) {

	    $tsqlcond = array('', '', '', '', '');
        $j = 0;
        $str = "";
        for($i = 0; $i < strlen($item); $i++)
        {
            if($item[$i] == ' ')
            {
                $tsqlcond[$j] = "$str%";
                $j = $j+1;
                if($j == 5) break;
                $str = '';
            }
            else $str = $str.$item[$i];
        }
        if($j == 0 && strlen($item) == 0) $tsqlcond[$j] = NULL;
        else if($j < 5) $tsqlcond[$j] = "$str%";
        for($i = $j+1; $i < 5; $i++) $tsqlcond[$i] = NULL;
        if($price[0] > $price[1])
        {
            echo 'Make sure the Min value is less then the max value';
            $price = array('0', '100');
        }
        if($rating[0] > $rating[1])
        {
            echo 'Make sure the Min value is less then the max value';
            $rating = array('0', '5');
        }
        $conn = connectTodatabase();
        date_default_timezone_set("Australia/Sydney");
        $day = strtoupper(substr(date("l"),0 , 3));
        $time = date("Hi");

        echo "<h2><b>Results for $item</b></h2>";

        /*use this query if you don't car about precedence of searches*/
        //$tsql = "SELECT name, price FROM Item WHERE EXISTS(SELECT ResturantID FROM ResturantKeyword WHERE ResturantKeyword.ResturantID = Item.ResturantID AND kWord in ($tsqlcond)) OR
	    //					                          EXISTS(SELECT itemID FROM ItemKeyword WHERE ID = itemID AND kWord in ($tsqlcond));";
        
        $tsql = "EXEC SelectItems @A = ?, @B = ?, @C = ?, @D = ?, @E = ?, @isVegan = ?, @isvegeterian = ?, @isGlutenFree = ?, @category = ?, @minPrice = ?, @maxPrice = ?, @minRating = ?, @maxRating = ?;";
        $param = array(&$tsqlcond[0], &$tsqlcond[1], &$tsqlcond[2], &$tsqlcond[3], &$tsqlcond[4], &$isVegan, &$isvegeterian, &$isGlutenFree, &$category, &$price[0], &$price[1], &$rating[0], &$rating[1]);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        try {
          while($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
          {
            if(checkDistance($conn, $obj['ResturantID'], $delivery) == false) continue;

            $name = $obj['name'];
            $price = number_format($obj['price'] / (1-$obj['discount']), 2, '.', '');
            $description = $obj['description'];
            $rating = $obj['rating'];
            $vegan = ($obj['isVegan'] == 1) ? "checked='true'" : "";
            $discount = number_format($obj['discount']*100);
            $Vegeterian = ($obj['isvegeterian'] == 1) ? "checked='true'" : "";
            $glutenFree = ($obj['isGlutenFree'] == 1) ? "checked='true'" : "";
            $discountLine = ($obj['discount'] != 0) ? "<p class='price'>$discount% off</p>" : "";
            $availability = ($obj['availability'] == 1) ? "value='Buy Item'" : "value='Not availabile' disabled";
            $availability = (checkIsClosed($conn, $obj['ResturantID'], $day, $time)) ? "value='Resturant closed' disabled" : $availability;
            $itemID = $obj['ID'];

            $values = array(&$name, &$price, &$discountLine, &$description, &$rating, &$vegan, &$Vegeterian, &$glutenFree, &$itemID, &$availability);
            HTMLParser("templates/searchItem.html", $values, "<?main>");

          }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
    }

    function checkDistance($conn, $ID, $maxDistance) {
        return true;
    }

    function checkIsClosed($conn, $ID, $day, $time) {
        $tsql = "SELECT * FROM OperatingHours WHERE ResturantID = ? AND day = ?;";
        $param = array(&$ID, &$day);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $flag = true;
        try {
          if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
              if($time > $obj['startTime'] && $time < $obj['endTime']) $flag = false;
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        return $flag;
    }

    function compactCart($cartExpanded) {
        $cart = array();
        for($i = 0; $i < count($cartExpanded); $i++)
        {
            $flag = false;
            for($j = 0; $j < count($cart); $j++)
                if($cartExpanded[$i] == $cart[$j][0])
                {
                    $flag = true;
                    $cart[$j][1] = $cart[$j][1] + 1;
                    break;
                }
            if($flag == false) array_push($cart, array($cartExpanded[$i], 1));
        }
        return $cart;
    }

    function displayCart($isCart) {
        $cartExpanded = $_SESSION["cart"];

        $cart = compactCart($cartExpanded);

        $quantity = 0;
        $totalprice = 0.00;

        $conn = connectTodatabase();

        HTMLParser("templates/cartDisplay.html", array(), "<?head>");

        foreach($cart as $itemID)
        {
            $tsql = "SELECT * FROM Item WHERE ID = ?";
            $param = array(&$itemID[0]);
            if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
            if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

            try {
                if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
                {
                    $quantity = $quantity + $itemID[1];
                    $name = $obj['name'];
                    $price = number_format($obj['price'] / (1-$obj['discount']), 2);
                    $totalprice = $totalprice + ($obj['price'] / (1-$obj['discount']) * $itemID[1]);
                    $action = htmlspecialchars($_SERVER["PHP_SELF"]);

                    HTMLParser("templates/cartDisplay.html", array(), "<?main1>");
                    if($isCart == true)
                        HTMLParser("templates/cartDisplay.html", array(&$itemID[0]), "<?main2>");
                    $values = array(&$name, &$price, &$itemID[1]);
                    HTMLParser("templates/cartDisplay.html", $values, "<?main3>");
                }
            } catch(Exception $e) { echo 'data base error: '. $e; }
            sqlsrv_free_stmt($stmt);
        }
        $values = array(&$totalprice, &$quantity);
        HTMLParser("templates/cartDisplay.html", $values, "<?foot>");
        sqlsrv_close($conn);
        return $totalprice;
    }

    function displayCartPayment($price, $ID) {
        $gst = number_format($price * 0.1, 2);
        $delivery = calculateDeliveryCost($ID);
        $memeberDiscount = calculateMemberShipDiscount($ID);
        $net = number_format(($price + $delivery) * (1-($memeberDiscount/100)), 2);
        
        $values = array(&$gst, &$delivery, &$memeberDiscount, &$net, &$ID, &$delivery);
        HTMLParser("templates/cartDisplay.html", $values, "<?cartPayment>");
    }

    function editCart($ID, $operation) {
        $cartExpanded = $_SESSION["cart"];
        if($operation == '-')
        {
            for($i = 0; $i < count($cartExpanded); $i++)
                if($cartExpanded[$i] == $ID)
                {
                    $temp = $cartExpanded[$i];
                    $cartExpanded[$i] = $cartExpanded[count($cartExpanded)-1];
                    $cartExpanded[count($cartExpanded)-1] = $temp;
                    break;
                }
            $temp = array_pop($cartExpanded);
            $temp = $cartExpanded;
        }
        else $cartExpanded[count($cartExpanded)] = $ID;

        $_SESSION["cart"] = $cartExpanded;
    }

    function checkMembership($ID) {
        $conn = connectTodatabase();

        $tsql = "SELECT nextpayment FROM Membership WHERE customerID = ?;";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $flag = true;
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                if($obj['nextpayment']->format('ymd') < date("ymd")) $flag = false;
            }
            } catch(Exception $e) { echo 'data base error: '. $e; }
            sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);

        return $flag;
    }

    function createNewOrder($customerID, $delivery, $notes) {
        $cartExpanded = $_SESSION["cart"];
        $cart = array();
        for($i = 0; $i < count($cartExpanded); $i++)
        {
            $flag = false;
            for($j = 0; $j < count($cart); $j++)
                if($cartExpanded[$i] == $cart[$j][0])
                {
                    $flag = true;
                    $cart[$j][1] = $cart[$j][1] + 1;
                    break;
                }
            if($flag == false) array_push($cart, array($cartExpanded[$i], 1));
        }

        $conn = connectTodatabase();
        $today = date("Y-m-d");
        foreach($cart as $itemID)
        {
            $ID = getNewOrderID($conn);
            $tsql = "EXEC createNewOrder ?, ?, ?, ?, ?, ?;";
            $param = array(&$ID, &$customerID, &$itemID[0], &$today, &$itemID[1], &$notes);
            if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
            if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
            sqlsrv_free_stmt($stmt);
        }
        
        $tsql = "EXEC updateDeliveryCost ?, ?;";
        $param = array(&$delivery, &$customerID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        sqlsrv_free_stmt($stmt);

        sqlsrv_close($conn);
    }

    function getNewOrderID($conn) {
        $tsql = "SELECT MIN(ID) + 1 as maxID FROM Order_ WHERE ID + 1 NOT IN (SELECT ID FROM Order_);";
        $stmt = sqlsrv_query($conn, $tsql);
        if($stmt == false) DEBUG('Query errorI');

        $max = 0;
        try { if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
            $max = (isset($obj["maxID"])) ? $obj["maxID"] : 0;
        } }
        catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        return $max;
    }

    function checkEmail($conn, $email, $includeMembers) {
        $flag = '';
        $condition = ($includeMembers == 0) ? 'customerID IS NULL AND' : '';

        $tsql = "SELECT ID FROM Customer LEFT JOIN Membership ON ID = CustomerID WHERE $condition email = ?;";
        $param = array(&$email);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        try { if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {
                $flag = $obj["ID"];
            } } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);

        return $flag;
    }

    function createCustomerPOD($firstname, $lastname, $phoneNumber, $email, $country, $city, $street, $streetNum, $unit, $postcode) {
        $conn = connectTodatabase();
        $ID = getNewCustomerID($conn);
        
        if($firstname == '' || $lastname == '' || ctype_alpha($firstname) == false || ctype_alpha($lastname) == false ||
           $phoneNumber == '' || ctype_digit($phoneNumber) == false || strlen($phoneNumber) != 10 || 
           filter_var($email, FILTER_VALIDATE_EMAIL) == false || 
           $country == '' || ctype_alpha($country) == false ||
           $city == '' || ctype_alpha($city) == false ||
           $street == '' || preg_match ("/^[a-zA-Z\s]+$/",$street) == false ||
           $streetNum == '' || ctype_digit($streetNum) == false ||
           strlen($unit) > 1 ||
           $postcode == '' || strlen($postcode) != 4 || ctype_digit($postcode) == false)
        {
            sqlsrv_close($conn);
            echo 'Make sure all inputs are valid.';
            return '';
        }

        $unit = ($unit == '') ? NULL : $unit;

        $IDcheck = checkEmail($conn, $email, 0);    //check if non member email is in 
        if(isset($IDcheck) && $IDcheck != '')
        {
            sqlsrv_close($conn);
            return $IDcheck;
        }
        $IDcheck2 = checkEmail($conn, $email, 1);   //checks if all emails are in database
        if(isset($IDcheck2) && $IDcheck2 != '')
        {
            sqlsrv_close($conn);
            echo 'Email allready in database.';
            return '';
        }

        $tsql = "EXEC InsertNewCustomer ?, ?, ?, ?, ?, NULL, NULL, NULL, ?, ?, ?, ?, ?, ?, NULL, NULL, NULL, NULL, NULL;";
        $param = array(&$ID, &$firstname, &$lastname, &$phoneNumber, &$email, &$country, &$city, &$street, &$streetNum, &$unit, &$postcode);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
        return $ID;
    }

    function getAddressCoords($ID, $isResturant) {
        $conn = connectTodatabase();

        $tsql = ($isResturant == 1) ? "SELECT * FROM RAddress WHERE ResturantID = ?;" : "SELECT * FROM CAddress WHERE customerID = ?;";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $coords = 0;
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                $street = 0;
                try {
                    $street = (ord(substr($obj['Street'], 1)) +
                    ord(substr($obj['Street'], 2)) +
                    ord(substr($obj['Street'], 3)) +
                    ord(substr($obj['Street'], 4)) - (4*97));
                } catch(Exception $e) { }
                $coords = (substr($obj['postcode'], -1).abs($street).'00') + $obj['StreetNumber'];
            }
            } catch(Exception $e) { echo 'data base error: '. $e; }
            sqlsrv_free_stmt($stmt);

        sqlsrv_close($conn);
        return $coords;
    }

    function calculateDeliveryCost($ID) {
        $cartExpanded = $_SESSION["cart"];
        $cart = compactCart($cartExpanded);
        
        $distance = 0;

        foreach($cart as $itemID)
            $distance = $distance + abs(getAddressCoords($ID, 0) - getAddressCoords($itemID[0], 1));
        
        $distance = $distance / 3000;
        return number_format($distance, 2);
    }

    function calculateMemberShipDiscount($ID) {
        $conn = connectTodatabase();
        $tsql = "SELECT type FROM Membership WHERE customerID = ?";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        
        $discount = 0;

        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                if($obj['type'] == 'silver') $discount = 5;
                else if($obj['type'] == 'gold') $discount = 10;
                else if($obj['type'] == 'platinum') $discount = 20;
                else $discount = 0;
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
                sqlsrv_free_stmt($stmt);
        return $discount;
        
        sqlsrv_close($conn);
    }

    function displayOrder() {
        $conn = connectTodatabase();
        $ID = $_SESSION["ID"];
        $tsql = "SELECT * FROM Customer WHERE ID = ?";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $name = '';
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
                $name = $obj['firstName']." ".$obj['lastName'];
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        
        HTMLParser("templates/displayOrder.html", array($name), "<?head>");

        $tsql = "SELECT * FROM Order_ WHERE customerID = ?";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        
        $orderID = $ResturantID = $filename = $distance = $arrivalTime = '';
        //$itemID = $itemname = $quantity = $unitprice = $notes = '';
        $address = $resturantName = $phoneNumber = $website = '';

        try {
            while($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                $orderID = $obj["ID"];
                $ResturantID = $obj["ResturantID"];
                $filename = htmlspecialchars($_SERVER["PHP_SELF"]);

                $distance = abs(getAddressCoords($ID, 0) - getAddressCoords($ResturantID, 1));
                $arrivalTime = (int)(20 + $distance / 1000);    //assuming 20min cooking and 60kmph delivery
                if($obj["arrivalTime"] != NULL) $arrivalTime = $obj["arrivalTime"];

                $status = $obj["status"];
                $quantity = $obj["quantity"];
                $totalPrice = $obj["totalprice"];

                $values = array(&$orderID, &$status, &$arrivalTime, &$quantity, &$totalPrice);
                HTMLParser("templates/displayOrder.html", $values, "<?order>");

                $tsqlA = "SELECT * FROM OrderDetails INNER JOIN Item ON ID = itemID WHERE orderID = ?;";
                $paramA = array(&$orderID);
                if(!$stmtA = sqlsrv_prepare($conn, $tsqlA, $paramA)) echo 'Query Error';
                if(!sqlsrv_execute($stmtA)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

                try {
                    while($objA = sqlsrv_fetch_array($stmtA, SQLSRV_FETCH_ASSOC))
                    {
                        $itemID = $objA["itemID"];
                        $itemname = $objA["name"];
                        $quantity = $objA["quantity"];
                        $unitprice = number_format($objA["unitprice"], 2);
                        $notes = $objA["notes"];

                        $values = array(&$itemname, &$itemID, &$itemID, &$filename, &$itemID, &$name, &$quantity, &$unitprice, &$notes);
                        HTMLParser("templates/displayOrder.html", $values, "<?orderDetails>");

                    }
                } catch(Exception $e) { echo 'data base error: '. $e; }
                sqlsrv_free_stmt($stmtA);

                $tsqlA = "SELECT * FROM Resturant INNER JOIN RAddress ON ID = RAddress.ResturantID INNER JOIN Contact ON RAddress.ResturantID = Contact.ResturantID WHERE ID = ?;";
                $paramA = array(&$ResturantID);
                if(!$stmtA = sqlsrv_prepare($conn, $tsqlA, $paramA)) echo 'Query Error';
                if(!sqlsrv_execute($stmtA)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

                try {
                    if($objA = sqlsrv_fetch_array($stmtA, SQLSRV_FETCH_ASSOC))
                    {
                        $address = $objA['Country'].", ".$objA['City'].", ".$objA['Street'].", ".$objA['Street'];
                        if($objA['unit'] != '') $address = $address.", ".$objA['unit'];
                        $address = $address.", ".$objA['postcode'];
                        $resturantName = $objA['name'];
                        $phoneNumber = $objA["phoneNumber"];
                        $website = $objA["website"];
                    }
                } catch(Exception $e) { echo 'data base error: '. $e; }
                sqlsrv_free_stmt($stmtA);


                $values = array(&$resturantName, &$phoneNumber, &$address, &$website);
                HTMLParser("templates/displayOrder.html", $values, "<?contact>");

                displayReceipt($conn, $orderID);
                $values = array(&$orderID, &$orderID, &$filename, &$orderID);
                HTMLParser("templates/displayOrder.html", $values, "<?foot>");
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);

        sqlsrv_close($conn);
    }

    function displayReceipt($conn, $ID) {
        $tsql = "SELECT * FROM RAddress JOIN Resturant ON ResturantID = ID WHERE ResturantID = ANY (SELECT ResturantID FROM Order_ WHERE ID = 0);";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $fromAddress;
        $abn;

        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                $fromAddress = $obj['Country'].", ".$obj['City'].", ".$obj['StreetNumber']." ".$obj['Street'];
                if($obj['unit'] != '') $fromAddress = $fromAddress.", ".$obj['unit'];
                $fromAddress = $fromAddress.", ".$obj['postcode'];
                $abn = $obj['abn'];
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);


        $tsql = "SELECT * FROM CAddress WHERE customerID = ANY (SELECT customerID FROM Order_ WHERE ID = ?);";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $toAddress;

        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                $toAddress = $obj['Country'].", ".$obj['City'].", ".$obj['StreetNumber']." ".$obj['Street'];
                if($obj['unit'] != '') $toAddress = $toAddress.", ".$obj['unit'];
                $toAddress = $toAddress.", ".$obj['postcode'];
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);


        $tsql = "SELECT orderDate FROM Order_ WHERE ID = ?;";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        $orderDate;

        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) $orderDate = $obj['orderDate']->format('y/m/d');
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);


        $tsql = "SELECT * FROM Payment WHERE orderID = ?;";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC)) {

                $orderID = $obj["orderID"];
                $itemCost = number_format($obj["itemCost"], 2);
                $GST = number_format($itemCost / 10);
                $deliveryCost = number_format($obj["deliveryCost"], 2);
                $discount = $obj["discount"];
                $Grosstotal = number_format(($obj["itemCost"] + $obj["deliveryCost"]) * (1-$obj["discount"]), 2);

                $values = array(&$orderID, &$orderID, &$fromAddress, &$abn, &$toAddress, &$orderID, &$orderDate);
                HTMLParser("templates/displayReceipt.html", $values, "<?head>");


                $tsqlA = "SELECT * FROM OrderDetails INNER JOIN Item ON ID = itemID WHERE orderID = ?;";
                $paramA = array(&$ID);
                if(!$stmtA = sqlsrv_prepare($conn, $tsqlA, $paramA)) echo 'Query Error';
                if(!sqlsrv_execute($stmtA)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

                try {
                    while($objA = sqlsrv_fetch_array($stmtA, SQLSRV_FETCH_ASSOC))
                    {
                        $quantity = $objA['quantity'];
                        $name = $objA['name'];
                        $unitprice = number_format($objA['unitprice'], 2);
                        $total = $unitprice * $quantity;

                        $values = array(&$quantity, &$name, &$unitprice, &$total);
                        HTMLParser("templates/displayReceipt.html", $values, "<?body>");

                    }
                } catch(Exception $e) { echo 'data base error: '. $e; }
                sqlsrv_free_stmt($stmtA);

                $values = array(&$itemCost, &$GST, &$deliveryCost, &$discount, &$Grosstotal);
                HTMLParser("templates/displayReceipt.html", $values, "<?foot>");
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
    }

    function refund($ID) {
        $conn = connectTodatabase();

        $tsql = "EXEC refundOrder ?;";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
                if($obj['statChanged'] != 1)
                    echo "cannot refund order at this time.";

        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
    }

    function CreateReview($ID, $review, $rating, $name) {
        $conn = connectTodatabase();

        if($rating < 0) $rating = 0;
        if($rating > 5) $rating = 5;
        $rating = number_format($rating, 2);

        if($review == '') $review == NULL;

        $tsql = "INSERT INTO ItemReview VALUES(?, ?, ?, ?);";
        $param = array(&$ID, &$name, &$review, &$rating);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);

        sqlsrv_close($conn);
    }

    function connectTodatabase() {
        $servername = "LAPTOP-MN48RQJD\SQL2024X";
        $database = "RESTURANTS";
        $uid = "readitems";
        $pass = "";

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