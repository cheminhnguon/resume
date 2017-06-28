<?php

class database {
    public $conn = NULL;
    public $host = "localhost";
    public $user = "root";
    public $pass = "";
    public $database = "shopping";

    function __construct() {
        $this->conn = new mysqli($this->host, $this->user, $this->pass, $this->database);
        $this->conn->set_charset("utf8");
        if (mysqli_connect_errno()) {
            printf("Connect faild: %s\n", mysqli_connect_error());
            exit();
        }
    }

}

?>