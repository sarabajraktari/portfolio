<?php
    require('./database/config.php');
    $selectProject="SELECT * FROM projects";
    // $selectSkill="SELECT * FROM skills";
    
    $resultProject=$conn->query($selectProject);
    // $resultSkill=$conn->query($selectSkill);
?>

<html>

<!-- repository section starts  -->

<head>
</head>
<section class="repository" id="repository">

    <!-- Repositories info -->
    <h1 class="heading">My <span>repositories</span></h1>
    <div class="box-container">
        <?php foreach($resultProject as $project){ ?>
        <div class="box">
            <h3><?php echo $project['project_name']?></h3>
            <p><?php echo $project['programming_language']?></p>
            <p><?php echo $project['description']?></p>
            <a href="<?php echo $project['github_link']?>" target="_blank">Click me</a>
        </div>
        <?php }?>
    </div>

    <!-- Skills info -->
    <h1 class="heading2">My skills</h1>
    <div class="box-container">
        <div class="box-icons">

            <img src="./icons/typescript.png" class="img-style" alt="">
            <img src="./icons/java.png" class="img-style" alt="">
            <img src="./icons/bootstrap.png" class="img-style" alt="">
            <img src="./icons/html-css.png" class="img-style" alt="">
            <img src="./icons/php.png" class="img-style" alt="">
            <img src="./icons/react.png" class="img-style" alt="">
            <img src="./icons/mysql.png" class="img-style" alt="">
            <img src="./icons/js.png" class="img-style" alt="">
            <img src="./icons/angular.png" class="img-style" alt="">
        </div>

    </div>
</section>

<!-- repository section ends -->

</html>