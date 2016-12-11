
<!DOCTYPE HTML>

<html>
	<head>
		<title>Tyrell Corporation</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 

	
	</head>
	<body class="homepage">
<div id="page-wrapper">


<? php

SESSION_START();
if(isset($_SESSION['Nom']) { echo("hhh");}
	?>
	<!-- Header -->
  <div id="header-wrapper">
					<div id="header" class="container">
<!-- Logo -->
					  <h1 id="logo"><a href="index.php" >Tyrell Corporation</a></h1>
							<br/>

							<p>fournisseur de service depuis 1940</p>
<br/><br/><br/><br/>
							<form action="resultat_recherche.php" method="get">
	<table>
		<tr> 
			<td align="center">
				<input type="search" id="champ1" name="rq" placeholder="Entrez un mot clé">
			  <button type="button" data-toggle="modal" data-target="#myModal" onclick="myFunction()" value="recherche" style="padding: 0.2%;  padding-right: 1%; padding-left: 1%;" >
			  Recherche
			  </button>
			
<script>
function myFunction() {
    if(rq.value) {

    alert("Vous n'avez rien saisit!");
}
}
</script>
			</td>
		</tr>
	</table> 
</form>


  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Résultat de la recherche</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn " data-dismiss="modal">Fermer</button>
        </div>
      </div>
      
    </div>
  </div>

   <div class="modal fade" id="servModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
         
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn " data-dismiss="modal">Fermer</button>
        </div>
      </div>
      
    </div>
  </div>
  


						<!-- Nav -->
							<nav id="nav">
								<ul>
									<li><a class="icon fa-home" href="index.php"><span>Accueil</span></a></li>
									<li><a class="icon fa-users" href="apropos.php"><span>A propos</span></a></li>
									<li><a class="icon fa-cog" href="#ser"><span>Nos services</span></a></li>
									<li><a class="icon fa-shopping-cart"   href="boutiques.php" ><span>Nos boutiques</span></a></li>
									<li><a class="icon fa-envelope" href="contacteznous.php"><span>Contact</span></a></li>
									
<? php

SESSION_START();
if(isset($_SESSION['Nom']) { ?>	
<!-- <li><a class="icon fa-sitemap" href=""><span>Déconnexion</span></a></li>-->
                       			
                       <? php } else { ?>


									<li><a class="icon fa-sitemap" href="#connexion"><span>Connexion</span></a></li>
									    <? php }  ?>
									    

								</ul>
					  </nav>

    </div>
  </div>


 




<center style=" background-color: #ffffff;"><br/><a href="#ser"><img  style="width: 7%;" src="images/scroll.png" alt="Smiley face" ></a></center>

			<!-- Features -->
				<div id="features-wrapper">
					<section id="features" class="container">
                    
						<header>
                        
							<h3 style="display:inline;" id="ser">madames et messieurs découvrez <strong>nos service</strong>!</h3>

							<ul class="actions" style="display:inline;">
						
							<li style="margin-left: 8%"><a href="specifique.php" class="button icon " style="padding: 2%;"><i class="fa fa-search-plus" aria-hidden="true"></i> service plus spécifique</a></li>
						</ul> 
						</header>
						  <br/><br/>


						  <form method="post" action="service.php">
					


	<div class="row">
							<div class="4u 12u(mobile)">
                           
		  

								<!-- Feature -->
									<section>
									<?php
									$service="service"
									?>
									
								<section>

										<a  data-toggle="modal" data-target="#servModal"  href="service.php" class="image featured"><img src="images/tuile_babysitting.png" alt="" /></a>

							  
							  </section>

						  </div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>

										<a href="<?php echo "service.php?service=coiffure" ?>" class="image featured"><img src="images/tuile_coiffure.png" alt="" /></a>

									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="<?php echo "service.php?service=electricite" ?>" class="image featured"><img src="images/tuile_electricite.png" alt="" /></a>
										

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="service.php" class="image featured"><img src="images/tuile_informatique.png" alt="" /></a>
						                 <div id="map" style="display: none" >
                                         <iframe id="google_map" width="425" height="350" frameborder="1"  scrolling="no" marginheight="10" marginwidth="10" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyB_1OmthHTQgVvd7jXj19tSZjz8j5PeTcI&q=Space+Needle,Seattle+WA"> </iframe>
                                         </div>

									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="<?php echo "service.php?service=jardinage" ?>" class="image featured"><img src="images/tuile_jardinage.png" alt="" /></a>


									</section>

							</div>
							<div class="4u 12u(mobile)">

								<!-- Feature -->
									<section>
										<a href="<?php echo "service.php?service=plombrie" ?>" class="image featured"><img src="images/tuile_plomberie.png" alt="" /></a>

									</section>

							</div>
						</div>


					</form>
						<ul class="actions">
							<li><a href="#" class="button icon " style="padding: 2%;"><i class="fa fa-plus" aria-hidden="true"></i> Voir plus de service</a></li>
							<li><a href="specifique.php" class="button icon " style="padding: 2%;"><i class="fa fa-search-plus" aria-hidden="true"></i> service plus spécifique</a></li>
						</ul>

					</section>
				</div>


		    <aside class="bg-dark">
        <div class="container text-center" id="connexion">
        	<br/>
						
						
            <div class="call-to-action">
            		<h2> <strong>Se connecter</strong></h2>
                       <form method="post" action="authentification_client.php" style="padding: 3%;">
<div align="center">
Login &nbsp;&nbsp;<br/><input required="required" type="text" style="width:30%" class="bg-dark" name="login" id="login">
</div>
<br/>
<div align="center">
Mot de passe <br/><input required="required" class="bg-dark" style="width:30%" type="password" name="mdp" id="mdp">
</div>
<br/>
<div align="center">
               <input type="submit" class="btn btn-default btn-xl wow tada">

</div>
   			  </form>
            </div>

   </div>
    </aside><br/>
 <aside class="bg-dark">
        <div class="container text-center" id="siscrire">
	<!-- Post --><br/>  <div class="call-to-action">
							<h2> <strong>S'inscrire </strong></h2>

	<form action="ins.php" method="post" style="padding: 3%;">
		<div align="center">Nom:&nbsp;&nbsp;<br/> <input required="required" style="width:30%" class="bg-dark"  name="nom"></div><br/>



	<div align="center">Prénom:&nbsp;&nbsp;<br/><input required="required" style="width:30%" name="prenom" class="bg-dark" ></div><br/>
	<div align="center">Numéro de téléphone:&nbsp;&nbsp;<br/><input style="width:30%" name="numtel" type="number" class="bg-dark"></div><br/>
	<div align="center">Adresse mail:&nbsp;&nbsp;<br/><input required="required" style="width:30%" name="addmail" type="email" class="bg-dark"></div><br/>
	<div align="center">Adresse:&nbsp;&nbsp;<br/><input style="width:30%" name='add' class="bg-dark"/> </div><br/>
	<div align="center">Mot de passe:&nbsp;&nbsp;<br/><input required="required" style="width:30%" type="password" name='motdp' class="bg-dark" /></div><br/>
	<div align="center">Confirmer le mot de passe:&nbsp;&nbsp;<br/><input required="required" style="width:30%" type="password" class="bg-dark" /></div>
<br/>
<input type="submit" value="S'inscrire" name="inscrit" onclick="connexion.php"/>


</form>
</div>
        </div>
    </aside>


			<!-- Banner -->
				

			

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
