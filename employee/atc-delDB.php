<?php
$id = $_REQUEST['id'];

$sql = "DELETE FROM tb_order_service WHERE id = '$id' ";
$rs = mysqli_query($conn, $sql);

if($rs){
?>
    <script type="text/javascript">
        history.back();
    </script>
<?php
}else{
    echo 'ลบบ่อได้';
}
?>