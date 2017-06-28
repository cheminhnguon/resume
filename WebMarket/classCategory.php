<?php

require_once './classConfig.php';

class Category extends database {

    public function getListCategory($idMenu, $idCha, $limit = -1) {
        $query = "SELECT * FROM category WHERE AnHien = 1 and idmenu=$idMenu and ( idcha = $idCha or $idCha = -1)";
        if ($idMenu == "") {
            $idMenu = -1;
        } else {
            $idMenu = $idMenu;
        }
        if ($limit != -1) {
            $limit = $sql .= "limit 0,{$limit}";
        }
        $rs = mysqli_query($this->conn, $query);
        return $rs;
    }
    public function getID($alias) {
        $query = "SELECT idcate FROM category WHERE alias = '$alias' and AnHien = 1 ";
        $result = mysqli_query($this->conn, $query);
        $row = mysqli_fetch_array($result);
        return $row['idcate'];
    }
    public function getAlias($idCate) {
        $query = "SELECT alias FROM category WHERE idcate = $idCate";
        $result = mysqli_query($this->conn, $query);
        $row = mysqli_fetch_array($result);
        return $row['alias'];
    }
    public function getUrlHinh($idCate) {
        $sql = "SELECT urlhinh FROM  category WHERE idcate = '$idCate'";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['urlhinh'];
        //nhớ cắt json
    }
    public function getTenCate($idCate) {
         $sql = "SELECT tencate FROM  category WHERE idcate = '$idCate'";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['tencate'];
    }
       public function getMetaDesc($idCate) {
        $sql = "SELECT metadesc FROM  menu WHERE idcate = '$idCate'";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['metadesc'];
    }
    public function getIdCha($idCate) {
        $sql = "SELECT idcha FROM  menu WHERE idcate = '$idCate' and AnHien = 1";
        $rs = mysqli_query($this->conn, $sql);
        $row = mysqli_fetch_array($rs);
        return $row['idcha'];
    }
}

?>