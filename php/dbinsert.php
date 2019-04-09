<?php
$db = pg_connect("host=localhost port=5432 dbname=hvdeploy user=postgres password=postgres123");
$query = "INSERT INTO register VALUES ('$_POST[username]','$_POST[firstname]',
'$_POST[lastname]','$_POST[email]','$_POST[password]','$_POST[Role]')";
$result = pg_query($query); 
?>