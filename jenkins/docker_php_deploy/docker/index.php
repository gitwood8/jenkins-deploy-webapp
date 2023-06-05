<?php
$ip_server = $_SERVER['SERVER_ADDR'];
?>

<!DOCTYPE html>
<html>
<head>
<style>
.row {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

.container {
  background-color: #f2f2f2;
  border: 1px solid #ccc;
  padding: 20px;
  margin: 0 auto;
}

h1 {
  text-align: center;
  animation: moveText 2s infinite alternate;
}

@keyframes moveText {
  0% {
    margin-left: 0;
  }
  50% {
    margin-left: 20px;
  }
  100% {
    margin-left: 0;
  }
}
</style>
</head>
<body>
<div class="row">
  <div class="container">
    <h1>Hello from K8s</h1>
    <br>
    <p>Server IP is: <?php echo $ip_server; ?></p>
    <br>
    <p>Made by <font color="grey">Wood</font></p>
    <br>
    <h1><font color="blue">VERSION latest</h1>
  </div>
</div>
</body>
</html>
