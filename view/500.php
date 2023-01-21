<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="PHP Motors">
    <meta name="author" content="Felipe Belisario">
    <title>500 Server Error</title>
    <style>
        <?php include '../css/main.css'; ?>
    </style>
    <?php
    $CONTENT_TITLE = "Sorry our server seems to be experiencing some technical difficulties";
    ?>
</head>
<body>
    <div id="page-container">
        <?php require_once $_SERVER['DOCUMENT_ROOT'] . '/phpmotors/snippets/header.php'; ?>
        <?php require_once $_SERVER['DOCUMENT_ROOT'] . '/phpmotors/snippets/nav.php'; ?>
        <main id="page-main">
        <h1>Server Error</h1>
        <p><?php echo $CONTENT_TITLE; ?></p>
        </main>
        <?php require_once $_SERVER['DOCUMENT_ROOT'] . '/phpmotors/snippets/footer.php'; ?>
    </div>
    <script>
        // Last Modified
    <?php include '../js/lastUpdate.js'; ?>
    </script>    
</body>
</html>