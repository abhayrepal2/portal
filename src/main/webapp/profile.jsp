<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Elonmusklite</title>
<script type="text/javascript">
	function openInstagram() {
		window.open("https://www.instagram.com/elonmusklite/")
	}
</script>
<%@include file="/img/head.jsp"%>
</head>
<body>
	<%@include file="/img/navbar.jsp"%>
	<form action="RegServ" method="post" style="background-color:">
		<div class="container" style="background-color: #E5EDFF">
			<div class="row">
				<div class="col-6">
					<label>Name :</label> <input type="text" id="pname"
						onkeyup="removeDisf1()" class="form-control w-50"
						name="login-email" placeholder="Name" value="" required>
				</div>
				<div class="col-6">
					<label>Name :</label> <input type="text" id="pLastname"
						class="form-control w-50" name="login-password1"
						placeholder="lastname" value="" required>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label>Mobile No :</label> <input type="text" id="pMobile"
						class="form-control w-50" name="pmobile" placeholder="Mobile No"
						value="" required>
				</div>
				<div class="col-6">
					<label>Email Address :</label> <input type="email" id="pMobile"
						class="form-control w-50" name="pemail" placeholder="Mobile No"
						value="" required>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<label>Address :</label> <input type="text" id="paddress"
						class="form-control w-50" name="paddress" placeholder="address"
						value="" required>
				</div>
				<div class="col-6">
					<label>State :</label> <input type="text" id="pstate"
						class="form-control w-50" name="pstate" placeholder="state"
						value="" required>
				</div>
			</div>


			<div class="row">
				<div class="col-6">
					<label>pincode :</label> <input type="text" id="ppincode"
						class="form-control w-50" name="pincode" placeholder="pincode"
						value="" required>
				</div>
				<div class="col-6">
					<label>SSN/Adhar-card No</label> <input type="text" id="pssn"
						class="form-control w-50" name="pincode" maxlength="12"
						placeholder="pincode" value="" required>
				</div>
			</div>
			<div class="row">
				<div class="col-6">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value=""
							id="flexCheckDefault"> <label class="form-check-label"
							for="flexCheckDefault"> Default checkbox </label>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12 text-center">
					<div class="form-check">
						<button type="button" class="btn btn-primary">Submit</button>
					</div>

				</div>

			</div>

		</div>
	</form>

	<section class="vh-100">
		<div class="container py-5 h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col col-md-9 col-lg-7 col-xl-5">
					<div class="card" style="border-radius: 15px;">
						<div class="card-body p-4">
							<div class="d-flex text-black">
								<div class="flex-shrink-0">
									<img src="img/profile.jpeg" alt="Generic placeholder image"
										class="img-fluid" style="width: 180px; border-radius: 10px;">
								</div>
								<div class="flex-grow-1 ms-3 px-3">
									<h5 class="mb-1">Elonmusklite</h5>
									<p class="mb-2 pb-1" style="color: #2b2a2a;">#speceX
										#elonmusk</p>
									<div class="d-flex justify-content-start rounded-3 p-2 mb-2"
										style="background-color: #efefef;">Follow this page</div>
									<div class="d-flex pt-1">
										<button type="button" onclick="openInstagram()"
											class="btn btn-primary flex-grow-1">Follow</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="page-footer font-small cyan darken-3 pt-5">

		<!-- Footer Elements -->
		<div class="container  border" style="background-color: #E5EDFF;">
			<div class="row mt-3">
				<div class="col-6">
					<h4>Elonmusklite</h4>
					<p>Think different to change the world</p>
				</div>
				<div class="col-6">
					<div class="row">
						<div class="text-right">
							<a href="" class="text-dark">Home</a>
						</div>
						&nbsp &nbsp &nbsp &nbsp &nbsp
						<div class="text-right">
							<a href="" class="text-dark">Contact</a>
						</div>
						&nbsp &nbsp &nbsp &nbsp &nbsp
						<div class="text-right">
							<a href="" class="text-dark">Address</a>
						</div>
						&nbsp &nbsp &nbsp &nbsp &nbsp
						<div class="text-right text-dark">
							<a href="" class="text-dark">Careers</a>
						</div>
						&nbsp &nbsp &nbsp &nbsp &nbsp
						<div class="text-right text-dark">
							<a onclick="openInstagram()" class="text-dark">Instagram</a>
						</div>
					</div>
					<div class="row"></div>
				</div>
			</div>
			<div class="row">
				<div class="col text-center">2020 Copyright : Elonmusklite</div>
			</div>
		</div>
	</footer>


	<%@include file="/img/footer.jsp"%>
</body>
</html>