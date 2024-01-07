<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Elonmusklite</title>
<%@include file="/img/head.jsp"%>

<script type="text/javascript">
	$(document).ready(
			alert("login");
			function() {
				$("#btn-sub").click(
						alert("function start");
						function(event) {
							var lsUserName = $("#login-email").val;
							var lspwd = $("#login-pwd").val;
							var lshint = $("login-hint").val;
							$.ajax({
								type : "post",
								url : "RegServ",
								data : "login-email=" + lsUserName + "&login-pwd="
										+ lspwd + "&login-hint=" + lshint,
								success : function(msg) {
									alert("sucess");
								},
								error : function(e) {
									alert("error");
								}

							})

						})
			})
			
			
</script>

<style type="text/css">
body {
	background-image: url("img/createaccount.jpg");
	background-attachment: fixed;  
    background-size: cover;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card w-50 mx-auto my-5">
			<div class="card-header text-center">Create Account</div>
			<div class="card-body">
				<form action="RegServ" method="post">
					<div class="form-group">
						<label>User Name</label> <input type="email" id="login-email"
							onkeyup="removeDisf1()" class="form-control" name="login-email"
							placeholder="Enter the username" required>
					</div>
					<div class="form-group">
						<label>New Password</label> <input type="password" id="login-pwd1"
							onkeyup="removeDisf2()" class="form-control"
							name="login-password1" placeholder="Password" required>
					</div>
					<div class="form-group">
						<label>Conform password</label> <input type="password"
							id="login-pwd" onkeyup="removeDisf2()" class="form-control"
							name="login-password" placeholder="Password" required>
					</div>
					<div class="form-group">
						<label>Hint</label> <input type="text" id="login-hint1"
							onkeyup="removeDisf2()" class="form-control" name="login-hint1"
							placeholder="Password" required>
					</div>
					<div class="form-group">
						<label>Conform Hint</label> <input type="text" id="login-hint"
							onkeyup="removeDisf2()" class="form-control" name="login-hint"
							placeholder="Password" required>
					</div>
					<div class="text-center">
					<button type="submit" id="btn-sub" class="btn btn-primary" >Login</button>
				</div>
				</form>
				
			</div>
		</div>
	</div>
	<%@include file="/img/footer.jsp"%>
</body>
</html>