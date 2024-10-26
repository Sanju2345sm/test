<?php
//Author :: Deluxe Script
//Name :: GAMEZ PHP Script
if(file_exists("./install.php")) {
	header("Location: ./install.php");
} 
ob_start();
session_start();
error_reporting(0);
include("configs/bootstrap.php");
include("includes/bootstrap.php");
include(getLanguage($settings['url'],null,null));
if (isset($_GET['sources'])) {
  $source_name = protect($_GET['sources']);
  $check = $db->query("SELECT * FROM traffic_sources WHERE source_name='$source_name'");
  if($check->num_rows>0) { 
    $query = $db->query("SELECT * FROM traffic_sources WHERE source_name='$source_name'");
	$row = $query->fetch_assoc();
    $lifetime_hits = $row['lifetime']+1;
    $update = $db->query("UPDATE traffic_sources SET lifetime='$lifetime_hits' WHERE id='$row[id]'");
  }
}
if (isset($_GET['mode'])) {
    $mode = protect($_GET['mode']);
    if ($mode == "dark") {
        $mode = "dark";
        $_SESSION['mode'] = $mode;
    } else {
        $mode = "light";
        $_SESSION['mode'] = $mode;
    }
} else {
    if (empty($_SESSION['mode'])) {
        $mode = "dark";
        $_SESSION['mode'] = $mode;
    }
}
if (isset($_GET['a'])) {
$a = protect($_GET['a']);
}
switch(isset($a) ? $a : null) {
  case "page": include("sources/page.php"); break;
  case "contact": include("sources/contacts.php"); break;
  case "search": include("sources/search.php"); break;
  case "subject": include("sources/subject.php"); break;
  case "category": include("sources/category.php"); break;
  case "embed": include("sources/embed.php"); break;
  case "play": include("sources/play.php"); break;
  case "knowledge": include("sources/knowledge.php"); break;
  default: include("sources/home.php");
}
mysqli_close($db);
?>