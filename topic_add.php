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
		<h3 align="center bottom" >Choose your topics from <a href="ref.php"> here </a> "lets start to ask and explore"</h3>  
      <div class="content">
           <?php
                 if (isset($_SESSION['username'])) {
					 echo "<form action='/Q&A/subtopicadd.php?cid=".$_GET['cid']."&scid=".$_GET['scid']."'
					       method='POST'>
						   <p>Question belongs to which topic </p>
						   <input type='text' name='topic' id='topic' size='100' />
						   <p>Put your question here: </p>
						   <textarea id='content' name='content'></textarea><br />
						   <input type='submit' value='DONE' /></form>";
						   
				 } else {
					 echo "<p>Login first... <a href='/Q&A/register.html'</a> Not yet register</p>";
				 }
		   ?>
      </div>
   </div>	  
</body>
</html>