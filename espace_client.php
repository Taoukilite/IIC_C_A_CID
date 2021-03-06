
<html>
	<head>
		<title>Client Tyrell Corporation</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<script src="http://maps.google.com/maps/api/js?key=AIzaSyB_1OmthHTQgVvd7jXj19tSZjz8j5PeTcI&q"></script>
	</head>
	<body class="homepage">
<?php session_start(); ?>
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<a href="messagerie.php">Mes messages</a> <?php echo $_SESSION['nom']; ?>
					<div id="header" class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.html">Tyrell Corporation</a></h1>
							<p>fournisseur de service depuis 1940</p>

						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon fa-home" href="index.html"><span>A propos</span></a></li>
									<li><a class="icon fa-sitemap" href="connexion.php"><span>Connexion</span></a></li>
									<li><a class="icon fa-cog" href="Nosservices.html"><span>Nos services</span></a></li>
									<li><a class="icon fa-retweet" "><span>Nos boutiques</span></a></li>
									<li><a class="icon fa-sitemap" "><span>Contact</span></a></li>
								</ul>
							</nav>

					</div>
				</div>

			<!-- Features -->
				<div id="features-wrapper">
					<section id="features" class="container">
						<header>
							<h2>madames et messieurs <strong>nos service</strong>!</h2>
						</header>
						<div class="row">
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>

										<a href="map.html" class="image featured"><img src="images/tuile_babysitting.png" alt="" /></a>

									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>

										<a href="map.html" class="image featured"><img src="images/tuile_coiffure.png" alt="" /></a>

									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="map.html" class="image featured"><img src="images/tuile_electricite.png" alt="" /></a>
										<

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="map.html" class="image featured"><img src="images/tuile_informatique.png" alt="" /></a>
						                 <div id="map" style="display: none" >
                                         <iframe id="google_map" width="425" height="350" frameborder="1"  scrolling="no" marginheight="10" marginwidth="10" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB_1OmthHTQgVvd7jXj19tSZjz8j5PeTcI&q=Space+Needle,Seattle+WA"> </iframe>
                                         </div>

									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="map.html" class="image featured"><img src="images/tuile_jardinage.png" alt="" /></a>


									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="map.html" class="image featured"><img src="images/tuile_plomberie.png" alt="" /></a>

									</section>

							</div>
						</div>
						<ul class="actions">
							<li><a href="#" class="button icon fa-file">Voir plus de service</a></li>
							<li><a href="#" class="button icon fa-file">service plus spécifique</a></li>
						</ul>

					</section>
				</div>


		    <aside class="bg-dark">
        <div class="container text-center">
            <div class="call-to-action">
                       <form method="post" action="config/connect.php">

<p>
Identifiant &nbsp;&nbsp;&nbsp;&nbsp;<input class="bg-dark" name="util">
</P>
<p>
Mot de passe <input class="bg-dark" type="password" name="pass">
</P>
               <input type="submit" onClick="pasuser(this.form)" value="Connexion" class="btn btn-default btn-xl wow tada">

			   			</form>
            </div>
        </div>
    </aside>


			<!-- Banner -->
				<div id="banner-wrapper">
					<div class="inner">
						<section id="banner" class="container">
							<p>un probléme  <strong>nous </strong>.<br />
							some la.</p>
						</section>
					</div>
				</div>


			<!-- Footer -->
				<div id="footer-wrapper">
					<div id="footer" class="container">
						<header>
							<h2>question commentaire  <strong>contacter nous:</strong></h2>
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
									la france nous vous aidrons pour fair la difference  .</p>
									<div class="row">
										<div class="6u 12u(mobile)">
											<ul class="icons">
												<li class="icon fa-home">
													sale de TP goupeC <br />
													reims, 51100<br />
													france
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
