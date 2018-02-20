
<?php
    function loginform(){
		echo "<form action='/Q&A/validatelogin.php' method='POST'>
		
		  <table align=center border=0 height=200 width=400 bgcolor=black>
		  <tr align=center><th colspan=2> <font color=white>LOGIN FORM</tr>
		  			<tr align=right ><td><font color=white>Username:<td align=left> :<input type='text' id='usernameinput' name='usernameinput'></td>
			<tr align=right ><td><font color=white>Password <td align=left> : <input type='password' id='passwordinput' name='passwordinput'>
			<tr><td align=right><input type='submit' value='Login'></td>
		  <td align=left><button type='button' onclick='location.href=\"/Q&A/register.html\";'>Register</button></td>
		  </table>
		  </form>";
		  
	}
			
			
	function logout() {
		echo nl2br("<p>login as ".$_SESSION['username']."</p>
		       <form action='/Q&A/logout.php' method='GET'>
			    <input type='submit' value='Logout'/></form>");
	}
?>
