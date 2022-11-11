<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname="portfolio";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);


//Check for connection error
if($conn->connect_error){
  die("Error in DB connection: ".$conn->connect_errno." : ".$conn->connect_error);    
}
?>