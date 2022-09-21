<head>
    <style>
        table{
            border-collapse: collapse;
            width: 100%;
        }
        td,th{
            border: 1px solid black;
            text-align: center;
            padding: 8px;
        }
        tr:nth-child(even){
            background-color: #dddd;
        }
    </style>    
</head>
<?php
$studentName=$_POST['studentName'];
$address=$_POST['address'];
$gender=$_POST['gender'];
$computer=isset($_POST["computer"]) ? True : False;
$mobile=isset($_POST["mobile"]) ? True : False;
$department=$_POST['department'];
$password=$_POST['password'];
$servername="localhost";
$dbname="student";
//Create Connection
$conn = mysqli_connect($servername, "root", "", $dbname);
//check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
// echo "Connected Successfully";
$sql = "INSERT INTO student_info (studentname, `address`, gender, computer, mobile, department, `password`) VALUES ('$studentName','$address','$gender','$computer','$mobile','$department','$password')";
if (mysqli_query($conn, $sql)) {
    echo "<script>window.alert('New record added successfully')</script>";
    echo "<script>window.open('index.html','_self')</script>";
} else {
     echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
?>
<div>
    <a href="data.php">View Data</a>
</div>