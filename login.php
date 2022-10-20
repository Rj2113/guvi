<?php
session_start();
$con=mysqli_connect('localhost','user1','raja123');
mysqli_select_db($con,'user1');
$email=$_POST['email'];
$pass=$_POST['password'];
$s="select * from usertable where email= '$email' && password='$pass' ";
$result=mysqli_query($con,$s);
$num=mysqli_num_rows($result);
if($num>0)
{
echo "Yes";
}
else
echo "No";
?>
