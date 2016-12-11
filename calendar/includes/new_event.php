<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
    <title>	My Calendar </title>
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css/perso.css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">

</head>
<body>


<form method="POST" action="new_event.php" >

<center><label>Jour de début: </label> <input type="date" name="jour" /> <br />
<label>Heure de début :</label> <input type="textbox" name="heure_debut" /><br />
<label>Heure de fin:</label> <input type="textbox" name="heure_fin" /><br />

<input  type="submit"  value="Ajouter"   /></center>



</form>

</body>
</html>

<?php


global $phpcdb;

try
{
	$bdd = new PDO('mysql:host=localhost;dbname=my_bd;charset=utf8', 'root', '');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}

if ( isset($_POST['heure_debut']) && isset($_POST['heure_fin']) && isset($_POST['jour']) )
{

$id_professionel=1;

// $id_professionel=$_SESSION['id_professionel'];

  $heure_debut=$_POST['heure_debut'];
  $heure_fin=$_POST['heure_fin'];
  $jour=strtotime($_POST['jour']);
  
  
if ($jour != false){
  $jour_vierge = new DateTime('@'.$jour);
}
 $premier_jour = new DateTime($jour_vierge->format('Y-m-d H:i:s'));
 $premier_jour->add(new DateInterval('PT'.($heure_debut+1).'H'));
  
  
  
  if ($jour != false){
  $jour_vierge = new DateTime('@'.$jour);
}
 $dernier_jour = new DateTime($jour_vierge->format('Y-m-d H:i:s'));
 $dernier_jour->add(new DateInterval('PT'.($heure_fin+1).'H'));
 
 $bdd->exec('INSERT INTO phpc_events(cid, owner, subject, description, readonly, catid,ctime,mtime) VALUES(1,'.$id_professionel.',\' Temps libre \' , \'Description \',0,NULL,\'2016-05-03 17:39:49\',NULL)');
 $reponse2= $bdd->query('SELECT eid FROM phpc_events where eid = @@identity');
 $donnees2 = $reponse2 -> fetch();
 $bdd->exec('INSERT INTO phpc_occurrences(eid, start_date, end_date, start_ts, end_ts, time_type) VALUES('.$donnees2['eid']. ',NULL,NULL,\' '. $premier_jour->format('Y-m-d H:i:s') .' \',\' '. $dernier_jour->format('Y-m-d H:i:s') .' \',0)');
			





			
        }



?>
