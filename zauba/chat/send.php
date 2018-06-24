<?PHP
// variables
$name = $_COOKIE["name"];
$message = $_POST["message"];
$ip = $_SERVER['REMOTE_ADDR'];

# checks that the user nickname is present
if( empty($name) )
{
	exit('You must <a href="index.html">login</a> in to chat!');
}
else
	if( empty($message) )
	{
		exit('You must type a message!');
	}
if (!get_magic_quotes_gpc())
{
 $message = addslashes($message);
}
# connect to the database
include_once('connection.php');

$sql = mysql_query("INSERT INTO chat VALUES('$name', '$message',NULL,'$ip')");

if (mysql_affected_rows() == 1)
{
	header("Location:chat.html");	
}
else
	{
		echo "Sorry, your message could not be sent!";
	}
mysql_close($link);
?>
