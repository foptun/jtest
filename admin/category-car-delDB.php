<?php
$id = $_GET['id'];

$sql = "DELETE FROM tb_category_car WHERE id = '$id' ";

$rs = mysqli_query($conn, $sql);

if($rs){
    ?>
    <script type="text/javascript">
        window.location = 'index.php?menu=category-car-show';
    </script>
    <?php
}else{
    ?>
    <script type="text/javascript">
        alert('Delete Fails!!!');
        history.back();
    </script>
    <?php
}
?>