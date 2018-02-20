<?php
  include('log_function.php');
  include('all_functions.php');
?>
<html>
<head><title>Askme or SuggestMe.com</title></head>

<body background="1.png" height="100%" width="50%">

<link href="/Q&A/styles/main.css" type="text/css" rel="stylesheet"/>
   <div class="pane">
   <h3 align="right"><a href="/Q&A">HOME PAGE</a></h3> <img Src="up.jpg" align="top" height="20%" width="100%">
      <div class="header"><h1 align="left" color="white"><font color=darkblue>Ask</font>Me or <font color=darkblue>Suggest</font>Me<br><h2 align="left"><font color=darkorange>ONLINE QUESTION ANSWER PLATFORM<h2></font></h1></div>
	  <h3 align=left>Choose your topics from <a href="ref.php"> here </a> "lets start to ask and explore"</h3>
	  <div class="loginpane">
          <?php 
		       session_start();
		      if(isset($_SESSION['username']))
			  {
				  logout();
				  
			  }	else{
				  if(isset($_GET['status'])){
					  if($_GET['status'] =='reg_success'){
						  echo "<h3 style='color: green;'>Registration Successful</h3>";
					  }else if($_GET['status'] == 'login_fail') {
						  echo "<h3 style='color: red;'>Incorrect username or password</h3>";
					  }
				  }
				  loginform();
				  
			  }		  
		  ?>
	  </div>
	    
</body>
</html>