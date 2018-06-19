<?php
$cc = $_REQUEST['cc'];

$year5;
$year6;
$year7;
$year8;
$year9;
$year10;

if($cc <= 600){
    $year5 = $cc * 0.5;
    $year6 = $year5 - ( ($year5 * 10) / 100);
    $year7 = $year5 - ( ($year5 * 20) / 100);
    $year8 = $year5 - ( ($year5 * 30) / 100);
    $year9 = $year5 - ( ($year5 * 40) / 100);
    $year10 = $year5 - ( ($year5 * 50) / 100);
}else if($cc >= 601 && $cc <= 1800){
    $year5 = ( ($cc - 601) * 1.5 ) + (600 * 0.5);
    $year6 = $year5 - ( ($year5 * 10) / 100);
    $year7 = $year5 - ( ($year5 * 20) / 100);
    $year8 = $year5 - ( ($year5 * 30) / 100);
    $year9 = $year5 - ( ($year5 * 40) / 100);
    $year10 = $year5 - ( ($year5 * 50) / 100);
}else if($cc >= 1801){
    $year5 = (600 * 0.5) + ( (1800 - 601) * 1.5 ) + ( ($cc - 1801) * 4 );
    $year6 = $year5 - ( ($year5 * 10) / 100);
    $year7 = $year5 - ( ($year5 * 20) / 100);
    $year8 = $year5 - ( ($year5 * 30) / 100);
    $year9 = $year5 - ( ($year5 * 40) / 100);
    $year10 = $year5 - ( ($year5 * 50) / 100);
}

?>
<form action="" method="post">
    <input type="text" name="cc" > | 
    <input type="submit" value="คำนวน CC">
</form>

<h1>ผลลัพธ์ ของรถ <?=$cc?> ซีซี</h1>

<table>
    <tr>
        <td> ปีที่ 5 : <?= number_format($year5) ?> </td>
        <td> ปีที่ 6 : <?= number_format($year6) ?> </td>
        <td> ปีที่ 7 : <?= number_format($year7) ?> </td>
        <td> ปีที่ 8 : <?= number_format($year8) ?> </td>
        <td> ปีที่ 9 : <?= number_format($year9) ?> </td>
        <td> ปีที่ 10 : <?= number_format($year10) ?> </td>
    </tr>
</table>