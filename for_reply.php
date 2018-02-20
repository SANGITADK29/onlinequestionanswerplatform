<?php
  include('log_function.php');
  include('all_functions.php');
?>
<html>
<head><title>Askme or SuggestMe</title></head>
<link href="/Q&A/styles/main.css" type="text/css" rel="stylesheet"/>
<body>
   <div class="pane">
        <h3 align="right"><a href="/Q&A">HOME PAGE</a></h3> <img Src="up.jpg" align="top" height="20%" width="100%">
      <div class="header"><h1 align="center">AskMe or SuggestMe<br><h2 align="center">ONLINE QUESTION ANSWER PLATFORM<h2></h1></div>
	  <div class="loginpane">
          <?php 
		       session_start();
		      if(isset($_SESSION['username']))
			  {
				  logout();
				  
			  }	else{
				  if(isset($_GET['status'])){
					  if($_GET['status'] =='reg_success'){
						  echo "<h1 style='color: green;'>new user registered successfully!</h1>";
					  }else if($_GET['status'] == 'login_fail') {
						  echo "<h1 style='color: red;'>invalid username or password</h1>";
					  }
				  }
				  loginform();
			  }		  
		  ?>
	  </div>
	
	   <?php 
	      if (!isset($_SESSION['username'])){
			 echo "<p>Login first... <a href='/Q&A/register.html'</a> Not yet register</p>";
		  }
	   ?>
	   
      </div
	  <?php 
	  if(isset($_SESSION['username'])){
		  replytopost($_GET['cid'], $_GET['scid'], $_GET['tid']);
	  }
	  ?>
      <div class="content"> 
	    <?php disptopic($_GET['cid'], $_GET['scid'], $_GET['tid']);?>
	  </div>
   </div>	  
</body>
</html>