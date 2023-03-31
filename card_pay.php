<?php
session_start();

$user = $_SESSION['user'];
  // $otp = substr(number_format(time()*rand(), 0, '',''),0,6);

if(isset($_POST['btn_fund'])){
   $_SESSION['amount'] = $amount = $_POST['amount'];
    // $otp = uniqid();
   $_SESSION['otp'] = $otp = substr(number_format(time()*rand(), 0, '',''),0,6);

    // $amount = $_GET['amount'];;
    header("Location: card_pay.php?amount=$amount");
}




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card Payment</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

    <style>
        body{
            background-color: whitesmoke;
        }
        .container{
            width: 50%;
            background-color: white;
            padding: 1rem;
            margin-top: 2rem;
            border-radius: 2rem;
            box-shadow: 1px 2px 3px black;
        }
        h2{
            background-color: gray;
            color: white;
            text-align:center;
            margin-top: 45px;
            padding: 10px;
        }

        button[type="submit"]{
            float: right;
            margin-top: 40px;
        }
    </style>
</head>
<body>
<form action="otp_page.php" method="post">
    <div class="container">

<h2>Card Payment</h2>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="name">Name on Card</label>
      <input type="text" class="form-control" id="name" placeholder="Your Name" name="yourName" required>
    </div>
    <div class="form-group col-md-6">
      <label for="cardNumber">Card Number</label>
      <input type="text" class="form-control" id="cardNumber" placeholder="1234 5678 9012 3456" name="cardNumber" required minlength='16' maxlength='16'>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="expiry">Expiry Date</label>
      <input type="text" class="form-control" id="expiry" placeholder="MM/YY" name="expiry" required minlength='4' maxlength='4'>
    </div>
    <div class="form-group col-md-4">
      <label for="cvv">CVV Code</label>
      <input type="text" class="form-control" id="cvv" placeholder="123" name="cvv2" required minlength='3' maxlength='3'>
    </div>
    <div class="form-group col-md-4">
      <label for="pin">Card PIN</label>
      <input type="text" class="form-control" id="cardpin" placeholder="1234" name="cardPin" required minlength='4' maxlength='4'>
    </div>
  </div>
  <button type="submit" class="btn btn-primary" name="btn_pay">Submit Payment</button>
</form>
</div>
</body>
</html>
