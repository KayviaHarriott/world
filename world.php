<?php
	$dbServername = "localhost";
	$dbUsername = "root";
	$dbPassword = "";
	$dbName = "world";
	
	$conn = mysqli_connect($dbServername,$dbUsername,$dbPassword,$dbName);

	if($conn === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

$query = "SELECT * FROM cities";

if ($result = $conn->query($query)) {

    /* fetch object array */
    echo "You're in world.php";
    echo nl2br("\n");
    echo nl2br("\n");
    while ($row = $result->fetch_row()) {
        echo $row[0], " ", $row[1], " ", $row[2], " ", $row[3];
        echo nl2br("\n");        
    }

    /* free result set */
    $result->close();
}

    /* close connection */
    $conn->close();
    

?>