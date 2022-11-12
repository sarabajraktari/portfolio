<?php

require('./database/config.php');

$select="SELECT * FROM `user`";

$result=$conn->query($select);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="style.css">

</head>

<body>
    <!-- home section starts  -->

    <section class="home" id="home">
        <h3>HI THERE !</h3>
        <?php
            while($row=$result->fetch_object()){
                echo '<h1>'."I'M ".'<span>'.$row->name.' '. $row->surname .'</span>'.'</h1>'
                .'<p>'.$row->description.'</p>';
        }

        ?>
        <a href="#about"><button class="btn">about me <i class="fas fa-user"></i></button></a>
    </section>

    <!-- jquery cdn link  -->
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->

    <!-- custom js file link  -->
    <!-- <script src="script.js"></script> -->
</body>

</html>