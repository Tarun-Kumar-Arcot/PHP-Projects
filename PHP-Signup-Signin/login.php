<?php
	if($_SERVER["REQUEST_METHOD"] === "POST"){
		$mysqli = require __DIR__ ."/database.php";

		$sql = sprintf("SELECT * FROM user
						WHERE email='%s'",
						$mysqli->real_escape_string($_POST["email"]));

		$result = $mysqli->query($sql);

		$user = $result->fetch_assoc();

		if ($user) {
			if(password_verify($_POST["password"], $user["password_hash"])){
				session_start();
            
            	session_regenerate_id();
            
            	$_SESSION["user_id"] = $user["id"];
            
            	header("Location: index.php");
            	exit;
			}
		}
		// var_dump($user);
		// exit;
		$is_invalid = true;

	}
	?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Login</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/water.css@2/out/water.css">
</head>
<body>
	<h1>Login</h1>
	<form method="post">
		<label for="email">email</label>
		<input type="email" name="email" id="email"
				value="<?=htmlspecialchars($_POST["email"] ?? "")?>">

		<label for="password">Password</label>
		<input type="password" id="password" name="password">

		<button>Login</button>
	</form>
	<?php if ($is_invalid):?>
			<em>Invalid login</em>
	<?php endif; ?>
</body>
</html>
