<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Elonmusklite</title>
<%@include file="/img/head.jsp"%>



<style type="text/css">
body {
	background-image: url("img/back.jpg");
	background-attachment: fixed;  
   background-size: cover;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">User Login</div>
			<div class="card-body">
				<form action="LoginServ" method="post">
					<div class="form-group">
						<label>User Name</label> <input type="text" id="login-email"
							class="form-control" name="login-email"
							placeholder="Enter the username" required>
					</div>
					<div class="form-group">
						<label>password</label> <input type="password" id="login-pwd"
							class="form-control" name="login-password" placeholder="Password"
							required>
					</div>
					<div class="text-center">
						<button type="submit" id="btn" class="btn btn-primary">Login</button>
					</div>
				</form>
				<script>
$(document).ready(
		function() { 
			$("#btn").click(
					function(event) {
						debugger;
						alert("start");
						var lsUserName = $("#login-email").val;
						var lspwd = $("#login-pwd").val;
						$.ajax({
							type : "post",
							url : "LoginServ",
							data : "login-email=" + lsUserName + "&login-pwd="
									+ lspwd,
							success : function(msg) {
								alert("sucess");
							},
							error : function(e) {
								alert("error");
							}
						})
					})
		});
		


</script>

				<div class="account">
					<a href="createaccount.jsp"> Create New account</a> &nbsp &nbsp
					&nbsp &nbsp &nbsp <a href="forgot.jsp">forgot password</a>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/img/footer.jsp"%>
</body>
</html>