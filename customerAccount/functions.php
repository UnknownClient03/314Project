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

	function makePayment() {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];
        $tsql = "SELECT paymentType, nextpayment FROM Membership WHERE customerID = ?";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        $paymentType;
        $nextPayment;
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                $paymentType = $obj['paymentType'];
                $date = date_create($obj['nextpayment']->format('y-m-d'));
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        if($paymentType == 'monthly') $date->modify('+1 month');
        else if($paymentType == 'annually') $date->modify('+1 year');
        $newdate = date_format($date,"Y-m-d");

        $tsql = "UPDATE Membership SET nextpayment = ? WHERE customerID = ?;";
        $param = array(&$newdate, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        sqlsrv_free_stmt($stmt);

        date_default_timezone_set("Australia/Sydney");
        $todaysDate = "20".date("y-m-d");
        $tsql = "UPDATE Membership SET lastpayment = ? WHERE customerID = ?;";
        $param = array(&$todaysDate, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
	}

    function changeName($first, $last) {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];

        if($first == '' || $last == '' || ctype_alpha($first) == false || ctype_alpha($last) == false)
        {
            sqlsrv_close($conn);
            echo "<p>make sure name is written and contains only letters</p>";
            return;
        }

        $tsql = "UPDATE Customer SET firstName = ?, lastName = ? WHERE ID = ?;";
        $param = array(&$first, &$last, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
	}

    function Changephone($phoneNumber) {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];

        if($phoneNumber == '' || ctype_digit($phoneNumber) == false || strlen($phoneNumber) != 10)
        {
            sqlsrv_close($conn);
            echo "<p>make sure is a valid phone number(10 digits)</p>";
            return;
        }

        $tsql = "UPDATE Customer SET phoneNumber = ? WHERE ID = ?;";
        $param = array(&$phoneNumber, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
	}

    function changeEmail($email) {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];

        if(filter_var($email, FILTER_VALIDATE_EMAIL) == false || checkEmail($conn, $email, 1) != '')
        {
            sqlsrv_close($conn);
            echo "<p>make sure input is a valid email address and is unique</p>";
            return;
        }

        $tsql = "UPDATE Customer SET email = ? WHERE ID = ?;";
        $param = array(&$email, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
	}

    function changepassword($old, $new) {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];
        
        if($new == '' || strlen($new) < 8 || !preg_match("#[0-9]+#", $new) || !preg_match("#[a-zA-Z]+#", $new))
        {
            sqlsrv_close($conn);
            echo "<p>Make sure password contains letters and numbers and is at least 8 characters long.</p>";
            return;
        }

        $tsql = "SELECT salt, pepper FROM CustomerAccountDetails WHERE customerID = ?;";
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

        $tsql = "EXEC checkPassword ?, 0;";
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
            sqlsrv_close($conn);
            echo "<p>Password is incorrect</p>";
            return;
        }

        $newPassword = hash('sha256', $new.$salt.$pepper);
        
        $tsql = "UPDATE CustomerAccountDetails SET Hashpassword = ? WHERE customerID = ?;";
        $param = array(&$newPassword, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
    }

    function changeAddress($country, $city, $streetname, $streetNumber, $unit, $postcode) {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];
        if($unit == '') $unit = NULL;

        if($country == '' || ctype_alpha($country) == false ||
           $city == '' || ctype_alpha($city) == false ||
           $streetname == '' || preg_match ("/^[a-zA-Z\s]+$/",$streetname) == false ||
           $streetNumber == '' || ctype_digit($streetNumber) == false ||
           strlen($unit) > 1 ||
           $postcode == '' || strlen($postcode) != 4 || ctype_digit($postcode) == false)
        {
            sqlsrv_close($conn);
            echo "<p>make sure email address is valid.</p>";
            return;
        }

        $tsql = "UPDATE CAddress SET Country = ?, City = ?, Street = ?, StreetNumber = ?, unit = ?, postcode = ? WHERE customerID = ?;";
        $param = array(&$country, &$city, &$streetname, &$streetNumber, &$unit, &$postcode, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
    }

    function changeMembership($status) {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];

        if($status != 'silver' && $status != 'gold' && $status != 'platinum')
        {
            sqlsrv_close($conn);
            echo "<p>something went wrong.</p>";
            return;
        }

        $tsql = "SELECT type FROM Membership WHERE customerID = ?";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        $type;
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                $type = $obj['type'];
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        if($type == $status)
        {
            DEBUG('Same Membership status, choose another one to upgrade/downgrade');
            return;
            sqlsrv_close($conn);
        }
        $tsql = "UPDATE Membership SET type = ? WHERE customerID = ?;";
        $param = array(&$status, &$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
    }

    function cancelMembership() {
        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];
        $param = array(&$ID);
        $tsql = "DELETE FROM Membership WHERE customerID = ?;";
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        $tsql = "DELETE FROM CAddress WHERE customerID = ?;";
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        $tsql = "DELETE FROM CustomerAccountDetails WHERE customerID = ?;";
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        $tsql = "DELETE FROM Customer WHERE ID = ?;";
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        else sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
        echo "<script>window.location.replace('http://localhost:8000/');</script>";     //this only works for loccalhost, not for private network;
    }

	function displayInfo() {

        $conn = connectToCustomer();
        $ID = $_SESSION["customernum"];

        $tsql = "SELECT * FROM Customer JOIN Membership ON ID = Membership.customerID JOIN CAddress ON Membership.customerID = CAddress.customerID WHERE ID = ?;";
        $param = array(&$ID);
        if(!$stmt = sqlsrv_prepare($conn, $tsql, $param)) echo 'Query Error';
        if(!sqlsrv_execute($stmt)) echo 'data base error: '.print_r(sqlsrv_errors(), true);
        
        try {
            if($obj = sqlsrv_fetch_array($stmt, SQLSRV_FETCH_ASSOC))
            {
                $firstname = $obj['firstName'];
                $lastname = $obj['lastName'];
                $phoneNumber = $obj['phoneNumber'];
                $email = $obj['email'];
                $address = $obj['Country'].", ".$obj['City'].", ".$obj['StreetNumber']." ".$obj['Street'];
                if($obj['unit'] != '') $address = $address.", ".$obj['unit'];
                $address = $address.", ".$obj['postcode'];
                $type = $obj['type'];
                $paymentType = $obj['paymentType'];
                $lastPayment = $obj['lastpayment']->format('d/m/y');
                $nextpayment = $obj['nextpayment']->format('d/m/y');

                $values = array(&$firstname, &$lastname, &$phoneNumber, &$email, &$address, &$type, &$paymentType, &$lastPayment, &$nextpayment);
                HTMLParser("customerDisplay.html", $values, "<?body>");
                if($obj['nextpayment']->format('ymd') < date("ymd")) echo "Overdue payment!";
            }
        } catch(Exception $e) { echo 'data base error: '. $e; }
        sqlsrv_free_stmt($stmt);
        sqlsrv_close($conn);
	}

    function connectToCustomer() {
        $servername = "LAPTOP-MN48RQJD\SQL2024X";
        $database = "RESTURANTS";
        $uid = "customerAccounts";
        $pass = "";

        $connection = [
        "Database" => $database, 
        "Uid" => $uid,
        "PWD" => $pass
        ];

        $conn = sqlsrv_connect($servername, $connection);
        if(!$conn) die(print_r(sqlsrv_errors(), true));
        return $conn;
    }
?>