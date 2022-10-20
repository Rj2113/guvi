<?php 
session_start();
$con=mysqli_connect('localhost','user1','raja123');
mysqli_select_db($con,'user1');
$name=$_POST['name'];
$mobile=$_POST['mobile'];
$email=$_POST['email'];
$pass=$_POST['password'];
$s="select * from usertable where email= '$email' ";
$result=mysqli_query($con,$s);
$num=mysqli_num_rows($result);
if($num==1)
echo"No";
else
{
$sql="insert into usertable(name,mobile,email,password) values('$name','$mobile','$email','$pass')";
mysqli_query($con,$sql);
$newmsg=array( "name"=>$name,
"email"=>$email,
"mobile"=>$mobile);
if(filesize("messages.json")==0)
{
$farray=array("$newmsg");
$datatosave=$farray;
}
else
{
 $oldarray=json_decode(file_get_contents("messages.json"));
 array_push(o$ldarray,$newmsg);
$datatosave=$oldarray;
}
file_put_contents("messages.json",json_encode($datatosace,JSON_PRETTY_PRINT),LOCK_EX);
echo "Yes";
}
?>