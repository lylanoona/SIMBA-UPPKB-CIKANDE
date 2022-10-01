<?php

require 'function.php';

//cek login, terdaftar atau tidak
if (isset($_POST['login'])) {

    $username=$_POST['username'];
    $password=$_POST['password'];

    //cocokin dengan database, cari...ada atau engga tuh data
    $result = mysqli_query($koneksi,"SELECT * FROM user WHERE
            username='$username' AND
            password='$password' ");

//cek user
    $hitung = mysqli_num_rows($result);

if ($hitung>0 ){
    $_SESSION['log']='true';
        header('Location: index.php');
   
    } else{
        echo "Username dan Password salah/tidak terdaftar";
        header('Location: login.php');
    };
};

if (!isset($_SESSION['log'])) {
    
} else {
    header('Location:index.php');
}

?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Halaman Login</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-5">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Login</h3></div>
                                    <div class="card-body">
                                        <form method="POST">
                                           <div class="form-group">
                                                <label class="small mb-1" for="InputUsername">Username</label>
                                                <input class="form-control" name="username" id="InputUsername" type="username" placeholder="enter username" />
                                               
                                            </div>
                                            <div class="form-group">
                                                <label class="small mb-1" for="inputPassword">Password</label>
                                                <input class="form-control" name="password" id="inputPassword" type="password" placeholder="enter Password" />
                                                
                                            </div>                                            
                                            <div class="from-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                                <button class="btn btn-primary" name="login">Login</button>
                                            </div>
                                        </form>
                                    </div>                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
