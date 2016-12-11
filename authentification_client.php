<?php
        try
        {
	        $pdo = new PDO('mysql:host=localhost;dbname=uberisation', 'root', '');
            $query = $pdo->query('SELECT * FROM user WHERE `login`="'.$_POST['login'].'" AND `mdp`="'.$_POST['mdp'].'";');
            if(!empty($query) AND $query->rowCount() == 1)
            {
			    session_start ();
                foreach ($query as $row) 
                {
                    $_SESSION['nom']=$row['login'];
                }
				header('Location:espace_client.php');
            }
        } 
        catch(PDOException $e)
        {
            echo $e->getMessage();
        }
?>
