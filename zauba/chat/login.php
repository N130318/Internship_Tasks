<?php
// variables
$user = $_POST['user'];
$ip = $_SERVER['REMOTE_ADDR'];
if (!get_magic_quotes_gpc())
{
 $user = addslashes($user);
}

if (empty($user))
{
	echo "Please enter a username.";
}
else
	{
		include_once('connection.php');	
		$sql = mysql_query("INSERT INTO chat VALUES ('$user','joins the chat!',NULL,'$ip')");	
		mysql_close($link);
		setcookie("name",$user,time()+3600,"/");	
		header("Location:chat.html");	
	}	
?>
