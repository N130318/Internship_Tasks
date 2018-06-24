<html>
	<head><title>Image Write</title></head>
		<form action="" method="POST">
		<input type="text" name="flname" placeholder="Enter (.jpg)Filename"><br>
		<input type="text" placeholder="Enter X Cordinate" name="xcord"><br>
		<input type="text" placeholder="Enter Y Cordinate" name="ycord"><br>
		<input type="text" placeholder="Enter Text" name="text"><br>
		<input type="submit" name="sbmit">
		</form>
</html>
<?php
	header('Content-type', 'image/jpeg');   
	$flnm='a.jpg';
	$op='op.jpg';
	$x=0;
	$y=0;
	$Text='';
	$a="\n initial Image Is: \n";
	if(isset($_POST['sbmit']))
	{
		$flnm=(string)$_POST['flname'];
		$x=$_POST['xcord'];
		$y=$_POST['ycord'];
		$Text=$_POST['text'];
	}
	$our_image = imagecreatefromjpeg($flnm); 
	$white_color = imagecolorallocate($our_image, 255, 0, 255);
	$font_path = 'arial.TTF';
	$size=30;
	$angle=0;
	if(imagettftext($our_image, $size,$angle,$x,$y, $white_color, $font_path, $Text))
	imagejpeg($our_image,$op);
	imagedestroy($our_image);
?>
