<?php 
	if(isset($_GET['rq']))
	{
		//CONNEXION A LA BASE DE DONNEES
		try
		{
			$bdd = new PDO('mysql:host=localhost;dbname=uberisation;charset=utf8', 'root', '');
		}
		catch (Exception $e)
		{
				die('Erreur : ' . $e->getMessage());
		}
		
		//Supprimer les balises HTML
		$mot_cle = htmlspecialchars($_GET['rq']);
		
		//Requete pour la recherche 
		$requete = $bdd->query("SELECT * FROM tag_service ts LEFT JOIN service s ON ts.id_service = s.id_service WHERE nom_tagservice LIKE '%$mot_cle%' ");
		
		//Remplir un tableau des données trouvés
		while ($donnees = $requete->fetch())
		{
			if(!isset($tab_resultats[$donnees['nom_service']]))
				$tab_resultats[$donnees['nom_service']] = array();
			
			array_push($tab_resultats[$donnees['nom_service']], $donnees['nom_tagservice']);
		}
		$requete->closeCursor();
		
	}
?>

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
	<body>
		<div id="header-wrapper">
		<div id="header" class="container">
			<form action="resultat_recherche.php" method="get">
				<table>
					<tr> 
						<td align="center">
							<input type="search" id="champ1" name="rq" placeholder="Entrez un mot clé">
							<input type="submit" value="recherche" >
						</td>
					</tr>
				</table> 
			</form>
			<?php
				if(isset($_GET['rq'])){
					echo '<H3> Mot clé recherché:'.$mot_cle.'</H3>';
					if(!isset($tab_resultats))
						echo '<H2><span style="color:red">Aucun résultat trouvé</span></H2>';
					else{
						foreach($tab_resultats as $service => $tags){
						echo '<strong>Service: '.$service.'</strong><ul>';
							foreach($tags as $tag_service){
								echo '<li>'.$tag_service.'</li>';
							}
							echo '</ul>';
						}
					}
				}
			?>
		</div>
		</div>
	</body>
	</html>