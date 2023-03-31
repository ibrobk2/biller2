<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fund Wallet</title>
    <style>
         body{
        background-image: linear-gradient(45deg, #fff, dodgerblue);
        width: 100%;
        height: 100vh;
    }
        .container{
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            font-family: sans-serif;
            font-size: 18px;
        }
input, button{
    padding: 10px;
    margin-top: 5px;
  
}

button{
    width: 100%;
    background-color: green;
    border-radius: 5px;
    color: white;
    font-size: 14px;
    font-weight: bold;
}


    </style>
</head>
<body>
    <a href="user_dashboard.php" style="font-size: 30px;">Back to Dashboard</a>
    <div class="container">
        <h2>Wallet Funding</h2>
        <form action="card_pay.php" method="post">
            <label for="amount">Amount</label><br>
            <input type="number" placeholder="Enter Amount" name="amount" required><br>
            <button name="btn_fund">Submit</button>
        </form>
    </div>
</body>
</html>