<?php 
	$mysqli = new mysqli("localhost", "hypermedia2016tim", "sitotim", "my_hypermedia2016tim");
	header('Access-Control-Allow-Origin: *');
	if (mysqli_connect_errno()) {
		echo "Error to connect to DBMS: ".mysqli_connect_error();
		exit();
	}else {
    //echo "Successful connection"; // connection ok
    //# extract results mysqli_result::fetch_array
    $query = "SELECT Path FROM Device_Category, Photo on Device_Category.Name=Photo.Name";
    //query execution
    $result = $mysqli->query($query);
    //if there are data available
    if($result->num_rows >0)
    {
        $myArray = array();//create an array
        while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = array_map('utf8_encode', $row);
        }
        echo json_encode($myArray);
    }
	else {
		echo "La tabella è vuota!";
	}
    //free result
    $result->close();
    //close connection
    $mysqli->close();
}






?>