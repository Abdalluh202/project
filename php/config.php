<?
$username="ktabna";//change username 
	$password="Ay90901212@"; //password database
	$host="104.234.239.74";
	$db_name="ktabna_app"; //database name
	

	$connect=mysqli_connect($host,$username,$password,$db_name);
	mysqli_query($connect, "SET NAMES 'utf8'") or die('Can\'t charset in DataBase');
mysqli_query($connect, "SET CHARACTER SET utf8") or die('Can\'t charset in DataBase');

	if(!$connect)
	{
		echo json_encode("Connection Failed");
	}
	

	?>