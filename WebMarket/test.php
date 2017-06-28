 <meta charset="UTF-8">
<?php

include './classMenu.php';
$menu = new Menu();
include './classCategory.php';
$cate = new Category();
include './classProduct.php';
$pro = new Product();

$result = $pro->getListProduct(1, 25, 1, 0,1);
while ($row = mysqli_fetch_array($result)){
    print_r($row);
}
//$rs = $menu->getListMenu();
//while ($row = mysqli_fetch_array($rs)){
//    print_r($row);
//}
//
//$rsCate = $cate->getListCategory(1,0);
//while ($row = mysqli_fetch_array($rsCate)){
//    print_r($row);
//}

?>