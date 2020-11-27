<?php 
	include("dbinfo.php");

	$page = "home";
	if(isset($_REQUEST["page"])){
		$page = $_REQUEST["page"];
	}

	$home_html = file_get_contents("ui/index.tpl");
	$about_html = file_get_contents("ui/aboutus.tpl");
	$currency_html = file_get_contents("ui/currency.tpl");
	$contact_html = file_get_contents("ui/contact.tpl");

	#update bitcoin data
	$gia_moi = 0;
	if(isset($_POST["gia_moi"])){
		$gia_moi = (float) $_POST["gia_moi"];
	}

	#connect to db
	$con = mysqli_connect($serverName, $dbUsername, $dbPassword, $dbName);
	if (!$con) {
		die ("Can not connect to database.");
	}
	$sql = "select * from bang_ty_gia";
	$result = mysqli_query($con, $sql);
	#update bitcoin data
	if($gia_moi != 0){
		$sql2 = "update bang_ty_gia set gia=$gia_moi where id=1";
		if (mysqli_query($con, $sql2)) {
			// ob_start();
	  		echo "Record updated successfully";
	  		// ob_end_clean();
		} else {
	  		echo "Error updating record: " . mysqli_error($con);
		}
	}

	$html_currency_data = "";
	$row = "";
	while($row = mysqli_fetch_assoc($result)) {
		$id = $row["id"];
		$ten = $row["ten"];
		$gia = $row["gia"];
		$thay_doi = $row["thay_doi"];
		if($thay_doi<0){
			$html_currency_data .= "<tr><th scope='row'>$id</th><td>$ten</td><td>$$gia</td><td class='text-danger'>$thay_doi%</td></tr>";
		}
		else if($thay_doi>0){
			$html_currency_data .= "<tr><th scope='row'>$id</th><td>$ten</td><td>$$gia</td><td class='text-success'>$thay_doi%</td></tr>";
		}
		else {
			$html_currency_data .= "<tr><th scope='row'>$id</th><td>$ten</td><td>$$gia</td><td>$thay_doi%</td></tr>";
		}
	}

	mysqli_close($con);
	#end connection.

	switch ($page) {
		case "aboutus":
			echo($about_html);
			break;
		
		case "currency":
			echo($currency_html);
			break;

		case "contact":
			echo($contact_html);
			break;

		case "home":
		default:
			$home_html = str_replace("{{CURRENCY_DATA}}", $html_currency_data, $home_html);
			echo($home_html);
			break;
	}
?>