<?php

require('./database/config.php');

//Select query
$selectUser="SELECT * FROM user";
$selectLanguage="SELECT * FROM languages";
$selectEducation="SELECT * FROM educations";

$result=$conn->query($selectUser);
$resultLang=$conn->query($selectLanguage);
$resultEdu=$conn->query($selectEducation);
?>
<html>

<!-- about section starts  -->

<section class="about" id="about">
    <h1 class="heading"><span>About</span> me</h1>

    <div class="row">
        <?php
       
        foreach($result as $user)
        {
        ?>
        <div class="info">

            <h3><i class="fas fa-user"></i>
                <span> <?php echo $user['name']; ?></span>
            </h3>
            <h3><i class="fa fa-map-marker"></i>
                <span> <?php echo $user['address']; ?> </span>
            </h3>
            <h3><i class='fa fa-mobile'></i>
                <span> <?php echo $user['number']; ?></span>
            </h3>
        </div>

        <div class="info">
            <h3><i class="fa fa-envelope"></i>
                <span> <?php echo $user['email'];?></span>
            </h3>
            <h3><i class="fa fa-birthday-cake"></i>
                <span> <?php echo $user['data_birth'];?></span>
            </h3>
            <h3><i class="fa fa-female"></i>
                <span> <?php echo $user['sex'];?></span>
            </h3>
        </div>
        <?php
                    }
                    ?>
    </div>
    <div class="row">

        <div class="info">


            <h1 class="heading2">Languages</h1>
            <?php
                        foreach($resultLang as $language){
                            ?>
            <h3>
                <?php echo $language['language_name'];?>
                <span>: <?php echo $language['language-level'] ?>
                </span>
            </h3>
            <?php }?>

        </div>
        <div class="info">

            <h1 class="heading2">Education</h1>
            <?php
            foreach($resultEdu as $language){
                ?>

            <div class="box-container">
                <div class="box">
                    <span><?php echo $language['start_year'].' - '.$language['end_year'] ?> </span>
                    <h3><?php echo $language['city'].', '.$language['country']?></h3>
                    <p>
                        <?php  echo $language['school_name'].', '.$language['major']?>
                    </p>
                </div>


                <?php }?>
            </div>
        </div>
    </div>

</section>

<!-- about section ends -->

</html>