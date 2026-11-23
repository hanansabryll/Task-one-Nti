<?php
session_start(); include "config/connection.php"; $error="";
if($_SERVER["REQUEST_METHOD"]=="POST"){
$email=trim($_POST["email"]??""); $password=$_POST["password"]??"";
if(!filter_var($email,FILTER_VALIDATE_EMAIL)||strlen($email)>100) $error="Please enter a valid email.";
elseif(strlen($password)<4||strlen($password)>50) $error="Password must be between 4 and 50 characters.";
else{$email=mysqli_real_escape_string($conn,$email);$res=mysqli_query($conn,"SELECT * FROM customers WHERE email='$email' LIMIT 1");if($res&&mysqli_num_rows($res)==1){$u=mysqli_fetch_assoc($res);if(password_verify($password,$u['password'])){$_SESSION['customer_id']=$u['id'];$_SESSION['customer_name']=$u['name'];header("Location: index.php");exit();}}$error="Email or password is incorrect.";}}
include "includes/header.php"; ?>
<div class="form-box"><div class="card p-4"><h2 class="mb-3 text-center">Customer Login</h2><?php if($error): ?><div class="alert alert-danger"><?php echo htmlspecialchars($error); ?></div><?php endif; ?><form method="POST"><div class="mb-3"><label class="form-label">Email</label><input type="email" name="email" maxlength="100" class="form-control" required></div><div class="mb-3"><label class="form-label">Password</label><input type="password" name="password" minlength="4" maxlength="50" class="form-control" required></div><button class="btn btn-primary w-100">Login</button></form><div class="alert alert-info mt-3 mb-0">Demo login: <b>ahmed@example.com</b><br>Password: <b>password</b></div></div></div><?php include "includes/footer.php"; ?>