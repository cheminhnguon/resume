<?php

$conn = new mysqli("localhost","root","", "shopping");
if(mysqli_connect_errno()){
    printf(mysqli_connect_error());
}