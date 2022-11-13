<?php

require('./database/config.php');

$select="SELECT * FROM `user`";

$result=$conn->query($select);
?>

<!DOCTYPE html>
<html lang="en">


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

    <!-- home section end -->
</body>

</html>