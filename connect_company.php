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

if(isset($_POST['save_com']))
{	
	 $companyname = $_POST['companyname'];
	 $companyid = $_POST['companyid'];
	 $email = $_POST['email'];
	 $specialzation = $_POST['specialzation'];
	 $role = $_POST['role'];
	 $experience = $_POST['experience'];
	 $phonenumber = $_POST['phonenumber'];
	 $datejoin = $_POST['datejoin'];
	 $city = $_POST['city'];
	 $state = $_POST['state'];
	 $zip = $_POST['zip'];

	 $sql_query = "INSERT INTO company (companyname,companyid,email,specialzation,role,experience,phonenumber,datejoin,city,state,zip)
	 VALUES ('$companyname','$companyid','$email','$specialzation','$role','$experience','$phonenumber','$datejoin','$city','$state','$zip')";

	 if (mysqli_query($conn, $sql_query)) 
	 {
		header('Location: redirect.html');
	 } 
	 else
     {
		echo "Error: " . $sql . "" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}
?>