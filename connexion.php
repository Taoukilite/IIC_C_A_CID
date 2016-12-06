
<html>
	<head>
		<title>Tyrell Corporation</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>
	<body class="no-sidebar">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div id="header" class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.php">Tyrell Corporation</a></h1>
							<p>fournisseur de service depuis 1940</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon fa-home" ><span>A propos</span></a></li>
									<li>
										<a href="#" class="icon fa-sitemap"><span>Connexion</span></a>

									</li> <a href="#"></a>
									<li><a class="icon fa-cog" ><span>Nos Services</span></a></li>
									<li><a class="icon fa-retweet" ><span>Nos boutiques</span></a></li>
									<li><a class="icon fa-sitemap" ><span>Nous contacter</span></a></li>
								</ul>
							</nav>

					</div>
				</div>


				<div id="main-wrapper">
					<div id="main" class="container">
						<div id="content">
						<h1 align="center">Connexion<h1> <br><br>
							<form action="authentification_client.php" method="post">
						<table>
<tr>
<th>Nom:</th>
<td><input type="text" value="" name="login"><br><br></td>
</tr>
<tr>
<th>Mot de passe:</th>
<td><input type="text" value="" name="motdep"><br><br></td>
</tr>
<th></th>
<td><a href="espace_client.php">se connecter</a> <br><br></td>
</tr>
</table><br><br>
</form>
							<!-- Post -->
							<h1 align="center">Inscription</h1><br><br>

	<form action="ins.php" method="post">
<table>
<tr>
<th>Nom:</th>
<td><input type="text" name="nom"><br><br></td>
</tr>
<tr>
<th>Prenom:</th>
<td><input type="text" name="prenom">*<br><br></td>
</tr>
<tr>
<th>Num_tel:</th>
<td><input type="text" name="numtel"><br><br></td>
</tr>
<tr>
<th>Adresse_mail:</th>
<td><input type="text" name="addmail"><br><br></td>
</tr>
<tr>
<th>Adresse:</th>
<td><textarea name='add'></textarea> <br><br></td>
</tr>
<tr>
<th>mot de passe:</th>
<td><input type="text" name='motdp'/><br><br></td>
</tr>
<tr>
<th>confirmer mot de passe:</th>
<td><input type="text"/><br><br></td>
</tr>
<tr>
<th></th>
<td><input type="submit" value="S'inscrire" name="inscrit" onclick="connexion.php"/><br><br></td>
</tr>
</table>


</form>

<script LANGUAGE="JavaScript"> function popup(connexion.php)
{ window.open(connexion.php,'popup','width=200,height=100,toolbar=false,scrollbars=false'); } </script>						</div>
					</div>
				</div>

			<!-- Footer -->
				<div id="footer-wrapper">
					<div id="footer" class="container">
						<header>
							<h2>Questions or comments? <strong>Get in touch:</strong></h2>
						</header>
						<div class="row">
							<div class="6u 12u(mobile)">
								<section>
									<form method="post" action="#">
										<div class="row 50%">
											<div class="6u 12u(mobile)">
												<input name="name" placeholder="Name" type="text" />
											</div>
											<div class="6u 12u(mobile)">
												<input name="email" placeholder="Email" type="text" />
											</div>
										</div>
										<div class="row 50%">
											<div class="12u">
												<textarea name="message" placeholder="Message"></textarea>
											</div>
										</div>
										<div class="row 50%">
											<div class="12u">
												<a href="#" class="form-button-submit button icon fa-envelope">Send Message</a>
											</div>
										</div>
									</form>
								</section>
							</div>
							<div class="6u 12u(mobile)">
								<section>
									<p>fournisseur de service dans divers domaine nous sommes les lideur du marcher avec nos 45682 boutique repartie sur toutes
									la france nous vous aidrons pour fair la difference.</p>
									<div class="row">
										<div class="6u 12u(mobile)">
											<ul class="icons">
												<li class="icon fa-home">
													sale de TP goupeC
												</li>
												<li class="icon fa-phone">
													00 33 12345678
												</li>
												<li class="icon fa-envelope">
													<a href="#">yacine.2limi@gmail.com</a>
												</li>
											</ul>
										</div>
										<div class="6u 12u(mobile)">
											<ul class="icons">
												<li class="icon fa-twitter">
													<a href="#">@iiacine</a>
												</li>
												<li class="icon fa-instagram">
													<a href="#">instagram.com/iiacine</a>
												</li>
												<li class="icon fa-dribbble">
													<a href="#">dribbble.com/iiacine</a>
												</li>
												<li class="icon fa-facebook">
													<a href="#">facebook.com/yacine.delimi</a>
												</li>
											</ul>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
					<div id="copyright" class="container">
						<ul class="links">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</div>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/skel-viewport.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>
