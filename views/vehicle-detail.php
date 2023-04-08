<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/phpmotors/css/style.css">
    <title>Document</title>
</head>
<body>
    <?php require_once $_SERVER['DOCUMENT_ROOT'] . '/phpmotors/snippets/header.php'?>
    <nav>
        <?php // require_once $_SERVER['DOCUMENT_ROOT'] . '/phpmotors/snippets/navigation.php';
        echo $navList 
        ?>
    </nav>
    <main id="veh-detail">
       
        <?php if(isset($vehicleSelectedDisplay)){
            echo $vehicleSelectedDisplay;
        } ?>

    
<hr>
            <h2>Customer Reviews</h2>
         

            <h3><?php if(isset($vDetails)){ 
	 echo "Review the $vDetails[invModel]";}?></h3>

<?php 
if (isset($message)) {
  echo $message;
}
?>

            <?php  

if (!$_SESSION) {
    echo "<p>You can add a review for the $vDetails[invModel] after logging in.</p>";
    echo "<a class='form-box' href='/phpmotors/accounts/index.php?action=login'>Login here</a>";
    
   } 
   else {
    if(isset($message)){
        echo $message;
    }
    echo "<form class='form' name='form' action='/phpmotors/reviews/index.php' method='post'>";
    
    if(isset($_SESSION['clientData'])) {
        $fname = $_SESSION['clientData']['clientFirstname'];
        $letter = $fname[0];
        $lname = $_SESSION['clientData']['clientLastname'];
        $clientId = $_SESSION['clientData']['clientId'];
        $invId = $vDetails['invId'];
     
    
    echo "<label>Screen Name:<br><input type='text' value='$letter$lname' readonly></label>";
    echo "<br>";
    echo "<label>Review:<br><textarea required name='reviewText'></textarea></label>";
    echo "<br>";
    echo "<input class='submitBtn' name='submit' type='submit' value='Submit Review'>";
    echo "<input name='action' type='hidden' value='addnewreview'>";
    echo "<input name='clientId' type='hidden' value='$clientId'>";
    echo "<input name='invId' type='hidden' value='$invId'>";
    echo "</form>";
   }}
?>


            <?php if(count($reviews) < 1){
                    echo "<p class='notice'>Be the first to write a review.</p>";
                    } 
                    else {
                        echo $reviewsDisplay;
                    }?>


    </main>

    <?php require_once $_SERVER['DOCUMENT_ROOT'] . '/phpmotors/snippets/footer.php' ?>
    <script src="/phpmotors/js/motors.js"></script>
</body>
</html>