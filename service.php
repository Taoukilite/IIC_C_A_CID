
<!DOCTYPE HTML>

<html>
	<head>
		<title>Tyrell Corporation</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<script src="http://maps.google.com/maps/api/js?key=AIzaSyB_1OmthHTQgVvd7jXj19tSZjz8j5PeTcI&q"></script>
	</head>
	<body class="homepage">
	
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header-wrapper">
					<div id="header" class="container">

						<!-- Logo -->
							<h1 id="logo"><a href="index.html">Tyrell Corporation</a></h1>
							<p>fournisseur de service depuis 1940</p>

						<!-- Nav -->
						<nav id="nav">
								<ul>
									<li><a class="icon fa-home" href="index.php"><span>Accueil</span></a></li>
									<li><a class="icon fa-users" href="apropos.php"><span>A propos</span></a></li>
									<li><a class="icon fa-cog" href="index.php#ser"><span>Nos services</span></a></li>
									<li><a class="icon fa-shopping-cart" ><span>Nos boutiques</span></a></li>
									<li><a class="icon fa-envelope" href="contacteznous.php"><span>Contact</span></a></li>
									<li><a class="icon fa-sitemap" href="index.php#connexion"><span>Connexion</span></a></li>
								</ul>
					  </nav>


					</div>
				</div>

			<!-- Features -->
				<div id="features-wrapper">
	</html>
	<?php
	;
try
{
	$bdd = new PDO('mysql:host=localhost;dbname=uberisation;charset=utf8', 'root', '');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}
$reponse = $bdd->query('SELECT *
FROM `professionnel`');

while($donnees = $reponse->fetch())
{




?>
<p>  <TABLE> <tl> <strong>nom</strong> :<?php echo $donnees['Nom_pro']?> <strong>adress mail</strong> :<a href="connexion.php" </a><?php echo $donnees['Adresse_mailp'] ?> </tl></TABLE>
<?php

}
$reponse->closeCursor(); 

?>
	<html>					
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