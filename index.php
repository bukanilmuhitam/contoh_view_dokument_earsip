<?php 

$conn = mysqli_connect('localhost' , 'root' , '' , 'coba_coba') or die ("MYSQL BERMASALAH");
$iduser = '1';

?>

<h1>Testing</h1>

<table style="width : 500px;" border="1">
   
        <tr>
            <td>#</td>
            <td>Notif</td>
          
        </tr>
        
    <?php 

        $query = mysqli_query($conn , "SELECT * FROM notifikasi");
        // $row = mysqli_fetch_array($query);

        $no = 1;
        while ($row = mysqli_fetch_array($query)) {

            $idnotif = $row['id'];
            $cek = mysqli_query($conn , "SELECT * FROM tbl_dump where id_user = '$iduser' and id_notif = '$idnotif'");
            $rowscount = mysqli_num_rows($cek);
    ?>

        <?php 
                if($rowscount <=0){
         ?>
        <tr>
            
            <td><?=$no++?></td>
            <td><?=$row['notifikasi'];?></td>
           
        </tr>

        <?php }?>
    <?php }?>
</table>