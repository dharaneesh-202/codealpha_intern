<?php
$server_name="localhost";
$username="root";
$password="";
$database_name="survey";

$conn=mysqli_connect($server_name,$username,$password,$database_name);
//now check the connection
if(!$conn)
{
	die("Connection Failed:" . mysqli_connect_error());

}

if(isset($_POST['save']))
{	
	 $firstname = $_POST['firstname'];
	 $lastname = $_POST['lastname'];
	 $email = $_POST['email'];
	 $fathername = $_POST['fathername'];
	 $mothername = $_POST['mothername'];
	 $sibilings = $_POST['sibilings'];
	 $gender = $_POST['gender'];
	 $phonenumber = $_POST['phonenumber'];
	 $dob = $_POST['dob'];
	 $city = $_POST['city'];
	 $state = $_POST['state'];
	 $zip = $_POST['zip'];

	 $sql_query = "INSERT INTO personal (firstname,lastname,email,fathername,mothername,sibilings,gender,phonenumber,dob,city,state,zip)
	 VALUES ('$firstname','$lastname','$email','$fathername','$mothername','$sibilings','$gender','$phonenumber','$dob','$city','$state','$zip')";

	 if (mysqli_query($conn, $sql_query)) 
	 {
		header('Location: form.html');
	 } 
	 else
     {
		echo "Error: " . $sql . "" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}

?>