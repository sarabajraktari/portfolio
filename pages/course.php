<?php
require("./database/config.php");

$selectCourse="SELECT * FROM courses";

$resultCourse=$conn->query($selectCourse);

?>

<html>
<!-- course section starts  -->

<section class="course" id="course">
    <h1 class="heading">My <span>courses</span></h1>

    <div class="box-container">
        <?php foreach($resultCourse as $course){?>
        <div class="box">
            <span><?php echo $course['start_data'].' - '.$course['end_data'] ?></span>
            <h3><?php echo $course['course_name'].' - '.$course['place']?></h3>
            <p>
                <?php  echo $course['description']?>
            </p>
        </div>
        <?php }?>

    </div>
</section>

<!-- course section ends -->

</html>