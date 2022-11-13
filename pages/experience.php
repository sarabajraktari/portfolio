<?php
    require('./database/config.php');

    $select="SELECT * FROM experience";
    $result=$conn->query($select);
?>

<head>
</head>
<!-- Job experience section start -->
<section class="jobExperience" id="jobExperience">
    <h1 class="heading">My <span>Job Experience</span></h1>

    <?php
                foreach($result as $job){
            ?>
    <div class="row">

        <div class="info">
            <h3><?php echo $job['job_name'] ?></h3>
            <p><?php echo $job['start_date'].' - '.$job['end_date'] ?></p>
        </div>
        <div class="description">
            <p><?php echo $job['description'] ?></p>
        </div>

    </div>
    <?php }?>

</section>

<!-- Job experience section ends -->

</html>