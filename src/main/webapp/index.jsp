<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
HttpSession Session = request.getSession();
String name = (String) Session.getAttribute("uname");
%>
<!DOCTYPE html>
<html>
<head>
<title>Abhay</title>
<%@include file="/img/head.jsp"%>
<script type="text/javascript">

function openCybertruck(){
	window.open("https://www.tesla.com/cybertruck/");
}

function openSpacex(){
	window.open("https://www.spacex.com/");
}

function openTwitter(){
	window.open("https://x.com/");
}

function openInstagram(){
	window.open("https://www.instagram.com/elonmusklite/");
	
}


</script>
</head>
<body>
	<%@include file="/img/navbar.jsp"%>

	<div class="container">
		<div id="demo" class="carousel slide" data-ride="carousel">

			<!-- Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>

			<!-- The slideshow -->
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/elon2.jpg" alt="Los Angeles" width="1100" height="500">
				</div>
				<div class="carousel-item">
					<img src="img/chicago.jpg" alt="Chicago" width="1100" height="500">
				</div>
				<div class="carousel-item">
					<img src="img/ny.jpg" alt="New York" width="1100" height="500">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
	</div>
	<div class="container" >

		<div class="row pt-2" style="background-color: #E5EDFF; border-radius: 16px; ">
			<div class="col-2">
				<p1>Elon Musk :<br>
				CEO of Tesla</p1>
			</div>

			<div class="col">
				<a href="index.jsp" class="btn btn-outline-dark m-auto"
					style="border-radius: 16px;">overview</a>
			</div>
			<div class="col">
				<a href="video.jsp" class="btn btn-outline-dark m-auto"
					style="border-radius: 16px;">Videos</a>
			</div>
			<div class="col">
				<a href="" class="btn btn-outline-dark m-auto"
					style="border-radius: 16px;">Relationships</a>
			</div>
			<div class="col">
				<a href="" class="btn btn-outline-dark m-auto"
					style="border-radius: 16px;">Products</a>
			</div>
			<div class="col">
				<a href="" class="btn btn-outline-dark m-auto"
					style="border-radius: 16px;">Projects</a>
			</div>
			<div class="col">
				<a href="" class="btn btn-outline-dark m-auto"
					style="border-radius: 16px;">Organizations</a>
			</div>
			<div class="col">
				<a href="" class="btn btn-outline-dark m-auto"
					style="border-radius: 16px;">About</a>
			</div>
		</div>

	</div>
	<div class="container">
		<div class="row pt-5">
			<div class="col-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/imgspace.jpg"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">SpaceX</h5>
						<p class="card-text">SpaceX is the first private company to
							develop a liquid-propellant rocket that has reached orbit......</p>
						<a onclick="openSpacex()" class="btn btn-primary">Go
							somewhere</a>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/TeslaCybertruck.jpg"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Cyber-Truck</h5>
						<p class="card-text">Durable and rugged enough to go anywhere.
							Tackle anything with electronically adaptive air suspension that
							offers 12 of travel and 17 of clearance .</p>
						<button id="cybertruck" onclick="openCybertruck()"
							class="btn btn-primary">click here</button>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="img/Twitter.jpg"
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title">Twitter</h5>
						<p class="card-text">The big rebranding explained. Elon Musk's
							rebranding of Twitter as 'X' began at the tail end of July 2023.
							The social media platform now sports a new 'X' logo on its mobile
							apps for iPhone and Android,</p>
						<a  onclick="openTwitter()" class="btn btn-primary">Go somewhere</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container pt-3">
		<div class="row">
			<div class="col-4">
				<div class="card" style="width: 18rem;">
					<video controls height="300px" width="150" class="card-img-top">
						<source src="videos/a1.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<p class="card-text">SpaceX is the first private company to
							develop a liquid-propellant rocket that has reached orbit......</p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card" style="width: 18rem;">
					<video controls height="300px" width="150" class="card-img-top">
						<source src="videos/a2.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<p class="card-text">SpaceX is the first private company to
							develop a liquid-propellant rocket that has reached orbit......</p>
					</div>
				</div>
			</div>
			<div class="col-4">
				<div class="card" style="width: 18rem;">
					<video controls height="300px" width="150" class="card-img-top">
						<source src="videos/a3.mp4" type="video/mp4" />
					</video>
					<div class="card-body">
						<p class="card-text">SpaceX is the first private company to
							develop a liquid-propellant rocket that has reached orbit......</p>
					</div>
				</div>
			</div>
		</div>
	</div>
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
						&nbsp &nbsp
					&nbsp &nbsp &nbsp
						<div class="text-right">
							<a href="" class="text-dark">Contact</a>
						</div>
						&nbsp &nbsp
					&nbsp &nbsp &nbsp
						<div class="text-right">
							<a href=""  class="text-dark">Address</a>
						</div>
						&nbsp &nbsp
					&nbsp &nbsp &nbsp
						<div class="text-right text-dark">
							<a href="" class="text-dark">Careers</a>
						</div>
							&nbsp &nbsp
					&nbsp &nbsp &nbsp
						<div class="text-right text-dark">
							<a onclick="openInstagram()" class="text-dark">Instagram</a>
						</div>
					</div>
					<div class="row">
						
					</div>
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