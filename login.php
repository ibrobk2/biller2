<?php 
// session_start();

include("server.php"); 

if(isset($_SESSION['user'])){ 
    $user = $_SESSION['user'];
    header("Location: user_dashboard.php");
}
include_once("process.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>


    <div class="container">
        <div class="session">
        <?php  
        if(isset($_SESSION['sent'])){
            echo $_SESSION['sent'];
            session_destroy();
        }
        
        ?>
        </div>
       
        <h2>User Login</h2>
        <form action="login.php" method="post">
        <?php include_once("errors.php"); ?>

            
            <div class="form-group">
                <input type="text" placeholder="Username" name="user">
            </div>
            
            <div class="form-group">
                <input type="password" placeholder="Password" name="pwd">
            </div>
           
            <button name="btn_login" id="loginbtn">Login</button><br><br>
            <p id="fp">Forget Password?  <a href="forget_password.php">Click Here</a></p><br>

        </form>

        <p id="st">Don't have Account? Register <a href="register.php">Here</a></p>
    </div>
    <?php include "./static/footer.php" ?>

</body>
</html>