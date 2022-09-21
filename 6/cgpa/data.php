<html>
    <head>
    <style>
        table{
            border-collapse: collapse;
            width: 100%;
        }
        td,th{
            border: 1px solid black;
            text-align: left;
            padding: 8px;
        }
        tr:nth-child(even){
            background-color: #dddd;
        }
        h2{
            text-align: center;
        }
    </style>    
</head>
<body >
<div style="display:flex; justify-content: center">
       <div style="border: 5px solid gray; padding: 20px 60px; background: white">
           <div style="text-align: right;"><a href="index.html"><button style="border:3px solid gray; color:white; background: gray;font-weight: bold;padding: 5px 30px;">Add Data</button></a></div>
            <?php
$servername="localhost";
$dbname="student";
//Create Connection
$conn = new mysqli($servername, "root", "", $dbname);
$sql = "SELECT id, studentname, address, gender, computer, department,  mobile, password, cgpa FROM student_data";
$result = $conn->query($sql);
function gradeArray($score) {
    if     ($score >= 70)  return "A";
    elseif ($score >= 50)  return "B";
    elseif ($score >= 40)  return "C";
    else                   return "F";
 }
echo"<h2><u>All Student Information</u></h2>";
if ($result->num_rows >0){
    //output data of each row
    echo"<table>";
    echo"<tr><th>id</th><th>Student Name</th><th>Address</th><th>Gender</th><th>Computer</th><th>Mobile</th><th>Department</th><th>Password</th><th>Result</th><tr>";
    while($row =$result->fetch_assoc()){
        echo "<tr><td>" . $row["id"]."</td><td>". $row["studentname"]. "</td><td>". $row["address"]. "</td><td>". $row["gender"]. "</td><td>".(($row["computer"]=='1')?'✔':"X"). "</td><td>".(($row["mobile"]=='1')?'✔':"X"). "</td><td>". $row["department"]. "</td><td>". $row["password"]. "</td><td>".gradeArray($row["cgpa"]).'('. $row["cgpa"].')'. "</td></tr>";
    }
    echo"</table>";
} else {
    echo "0 results";
}
$conn->close();
?>
       </div>
</div>
</body>
</html>