<?php
require_once './classConfig.php';
    class Product extends database{
        public function getListProduct($idMenu, $idCate, $idCateCha, $start, $top, $orderby = "" ) {
            $query = "SELECT * FROM product WHERE AnHien = 1 and (idmenu = $idMenu or $idMenu = -1) ";
            $query .= "and (idcate = $idCate or $idCate = -1) and (idcatecha = $idCateCha or $idCateCha = -1) ";
            
            if($orderby  == ""){
                $query .= "ORDER BY idsp ASC";
            } else {
                $query .= $orderby;
            }
            $query .= " limit {$start},{$top} ";
            //var_dump($query);
            $result = mysqli_query($this->conn, $query);
            return $result;
        }

    }
?>