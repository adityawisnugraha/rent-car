<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{
if(isset($_POST['update']))
{
$lid=intval($_GET['lid']);
$nopol=$_POST['leavetype'];
$description=$_POST['description'];
$sopir=$_POST['sopir'];
$niksopir=$_POST['niksopir'];
$merk=$_POST['merk'];
$gambar=$_POST['gambar'];
$harga=$_POST['harga'];
$sql="update tblmobil set NoPol=:nopol,Description=:description,NamaSopir=:sopir,NIKSopir=:niksopir,merk=:merk,gambar=:gambar,harga=:harga where id=:lid";
$query = $dbh->prepare($sql);
$query->bindParam(':nopol',$nopol,PDO::PARAM_STR);
$query->bindParam(':description',$description,PDO::PARAM_STR);
$query->bindParam(':sopir',$sopir,PDO::PARAM_STR);
$query->bindParam(':niksopir',$niksopir,PDO::PARAM_STR);
$query->bindParam(':merk',$merk,PDO::PARAM_STR);
$query->bindParam(':gambar',$gambar,PDO::PARAM_STR);
$query->bindParam(':harga',$harga,PDO::PARAM_STR);
$query->bindParam(':lid',$lid,PDO::PARAM_STR);
$query->execute();

$msg="Mobil telah sukses diupdate";


}

    ?>

<!DOCTYPE html>
<html lang="en">
    <head>
        
        <!-- Title -->
        <title>Admin | Edit Tipe Mobil</title>
        
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <meta charset="UTF-8">
        <meta name="description" content="Responsive Admin Dashboard Template" />
        <meta name="keywords" content="admin,dashboard" />
        <meta name="author" content="Steelcoders" />
        
        <!-- Styles -->
        <link type="text/css" rel="stylesheet" href="../assets/plugins/materialize/css/materialize.min.css"/>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../assets/plugins/material-preloader/css/materialPreloader.min.css" rel="stylesheet"> 
        <link href="../assets/css/alpha.min.css" rel="stylesheet" type="text/css"/>
        <link href="../assets/css/custom.css" rel="stylesheet" type="text/css"/>
  <style>
        .errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
        </style>
    </head>
    <body>
  <?php include('includes/header.php');?>
            
       <?php include('includes/sidebar.php');?>
            <main class="mn-inner">
                <div class="row">
                    <div class="col s12">
                        <div class="page-title">Edit Tipe Mobil</div>
                    </div>
                    <div class="col s12 m12 l6">
                        <div class="card">
                            <div class="card-content">
                              
                                <div class="row">
                                    <form class="col s12" name="chngpwd" method="post">
                                          <?php if($error){?><div class="errorWrap"><strong>ERROR</strong> : <?php echo htmlentities($error); ?> </div><?php } 
                else if($msg){?><div class="succWrap"><strong>SUCCESS</strong> : <?php echo htmlentities($msg); ?> </div><?php }?>
<?php
$lid=intval($_GET['lid']);
$sql = "SELECT * from tblmobil where id=:lid";
$query = $dbh -> prepare($sql);
$query->bindParam(':lid',$lid,PDO::PARAM_STR);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{               ?>  

                                        <div class="row">
                                            <div class="input-field col s12">
<input id="leavetype" type="text"  class="validate" autocomplete="off" name="leavetype" value="<?php echo htmlentities($result->NoPol);?>"  required>
                                                <label for="leavetype">Nomor Polisi Mobil</label>
                                            </div>

<div class="input-field col s12">
<input id="leavetype" type="text"  class="validate" autocomplete="off" name="sopir" value="<?php echo htmlentities($result->NamaSopir);?>"  required>
                                                <label for="leavetype">Nama Sopir</label>
                                            </div>
                                            
                                            <div class="input-field col s12">
<input id="leavetype" type="text"  class="validate" autocomplete="off" name="niksopir" value="<?php echo htmlentities($result->NIKSopir);?>"  required>
                                                <label for="leavetype">NIK Sopir</label>
                                            </div>

<div class="input-field col s12">
<input id="leavetype" type="text"  class="validate" autocomplete="off" name="merk" value="<?php echo htmlentities($result->merk);?>"  required>
                                                <label for="leavetype">Merk Mobil</label>
                                            </div>

<div class="input-field col s12">
<input id="leavetype" type="text"  class="validate" autocomplete="off" name="gambar" value="<?php echo htmlentities($result->gambar);?>"  required>
                                                <label for="leavetype">Url Gambar Mobil</label>
                                            </div>
                                            
                                            <div class="input-field col s12">
<input id="leavetype" type="text"  class="validate" autocomplete="off" name="harga" value="<?php echo htmlentities($result->harga);?>"  required>
                                                <label for="leavetype">Harga Sewa</label>
                                            </div>

          <div class="input-field col s12">
<textarea id="textarea1" name="description" class="materialize-textarea" name="description" length="500"><?php echo htmlentities($result->Description);?></textarea>
                                                <label for="deptshortname">Description</label>
                                            </div>
                                            
<?php }} ?>



<div class="input-field col s12">
<button type="submit" name="update" class="waves-effect waves-light btn indigo m-b-xs">Update</button>

</div>




                                        </div>
                                       
                                    </form>
                                </div>
                            </div>
                        </div>
                     
             
                   
                    </div>
                
                </div>
            </main>

        </div>
        <div class="left-sidebar-hover"></div>
        
        <!-- Javascripts -->
        <script src="../assets/plugins/jquery/jquery-2.2.0.min.js"></script>
        <script src="../assets/plugins/materialize/js/materialize.min.js"></script>
        <script src="../assets/plugins/material-preloader/js/materialPreloader.min.js"></script>
        <script src="../assets/plugins/jquery-blockui/jquery.blockui.js"></script>
        <script src="../assets/js/alpha.min.js"></script>
        <script src="../assets/js/pages/form_elements.js"></script>
        
    </body>
</html>
<?php } ?> 