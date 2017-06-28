<?php
require_once  './classConfig.php';
class Menu extends database{
    public function getListMenu() {
        $sql = "SELECT * FROM menu WHERE AnHien = 1";
        $rs = mysqli_query($this->conn, $sql);
        return $rs;
    }
    public function getID($alias) {
        $sql = "SELECT idmenu FROM  menu WHERE alias = '$alias' and AnHien = 1";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['alias'];
    }
    public function getUrlHinh($idMenu) {
        $sql = "SELECT urlhinh FROM  menu WHERE idmenu = '$idMenu'";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['urlhinh'];
    }
    public function getTenMenu($idMenu) {
        $sql = "SELECT tenMenu FROM  menu WHERE idmenu = '$idMenu'";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['tenMenu'];
    }
     public function getMetaDesc($idMenu) {
        $sql = "SELECT metadesc FROM  menu WHERE idmenu = '$idMenu'";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['metadesc'];
    }
    
} 


?>