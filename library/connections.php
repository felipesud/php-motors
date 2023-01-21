<?php
/*
 * Proxy connection to the phpmotors database 
 * 
 */
function phpmotorsConnect() {
    $server = 'localhost';
    $dbname = 'phpmotors';
    $username = 'iClient';
    $password = 'Mtb@UY988Y5ZiXBi';
    $dsn= "mysql:host=$server;dbname=$dbname";
    $options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);

    try {
        $link = new PDO($dsn, $username, $password, $options);
        
        // if (is_object($link)){
        //     echo 'It Worked!';
        // }
        
        return $link;
    } catch (PDOException $e) {
        // echo "Sorry, the connection failed" . $e->getMessage; 
        header('Location: /phpmotors/view/500.php');
        exit;
    }
}
// phpmotorsConnect();
?>