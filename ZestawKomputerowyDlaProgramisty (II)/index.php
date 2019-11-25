<!doctype html>
<html lang="PL">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Zestaw komputerowy · Projekt PolSL</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/album/">
    <!-- Bootstrap core CSS -->
	<link href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      img{
    	max-width: 100%;
      max-width: 500px;
      max-height: 500px;
		}
		.pt-0, .pt-1{
			margin-bottom:10%;
		}
    </style>
  </head>
  <body>
    <header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">O projekcie</h4>
          <p class="text-muted">Na tej stronie prezentujemy kilka przykładowych zestawów komputerowych dla programisty wraz z aktualnymi cenami komponentów.</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Github</h4>
          <ul class="list-unstyled">
            <li><a href="https://github.com/matpolsl" class="text-white">matpolsl</a></li>
            <li><a href="https://github.com/OskarJane" class="text-white">OskarJane</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between">
      <a href="#" class="navbar-brand d-flex align-items-center">
        <b>Zestawy komputerowe dla programisty</b>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container pt-1">
      <h1 class="jumbotron-heading">Zbiór przykładowych zestawów komputerowych dla programisty</h1>
      <p class="lead text-muted">Wybierz architekturę procesora.</p>
      <p>
        <a href="https://matpolsl.ct8.pl/?CPU=1" class="btn btn-primary my-2">Intel</a>
        <a href="https://matpolsl.ct8.pl/?CPU=2" class="btn btn-secondary my-2">AMD</a>
      </p>
    </div>

<?php
include("dbconect.php");
if(isset($_GET['CPU']) && (int)$_GET['CPU']==1) $query = mysqli_query($connect,"SELECT * FROM `Zestaw` where Architektura=0 OR Architektura=1 ORDER BY `Zestaw`.`Nr` ASC;");
else if(isset($_GET['CPU']) && (int)$_GET['CPU']==2) $query = mysqli_query($connect,"SELECT * FROM `Zestaw`where Architektura=0 OR Architektura=2 ORDER BY `Zestaw`.`Nr` ASC;");
$i=0;
if(isset($query))
while($wynik = mysqli_fetch_assoc($query)){
	$name=$wynik['Nazwa'];
	$opis=$wynik['Opis'];
	$urlp=$wynik['Photo'];
  $url=$wynik['Morele'];
  $s = file_get_contents($url);
  preg_match('/<div class="price-new"(.*?)>(.*?)<\/div>/si', $s, $aTab);
  $cena = (double)$aTab[2];
  $Tab[$i][0]=$name;
  $Tab[$i][1]=$cena;
  $i++;
	echo('<section class="pt-0">
	<div class="container">
  		<div class="row">
  			<div class="col-md-6">
  				<img src="'.$urlp.'" alt="'.$name.'" class="rounded shadow-3d hover-shadow-3d border mb-3 mb-md-0">
  			</div>
  			<div class="col">
  				<a href="'.$url.'""><h3>'.$name.'</h3></a>
  				<p>'.$opis.'</p>
          <p style="float: right;"><b>Cena:'.$cena.'zł</b></p>
  			</div>
  		</div>
  </div>
</section>');
}
if($i>0){
  echo('<section class="pt-0">
  <div class="container">
      <div class="row">
        <table class="table table-striped">
          <thead>
            <tr>
              <th>#</th>
              <th>Nazwa produktu</th>
              <th>Cena</th>
            </tr>
          </thead>
          <tbody>
            <tr>');
  for($j=0;$j<$i;$j++){
    echo('<th scope="row">'.($j+1).'</th>
              <td>'.$Tab[$j][0].'</td>
              <td>'.$Tab[$j][1].'zł</td>
              </tr>
          </tbody>
        ');
    $suma+=$Tab[$j][1];
  }
  echo('<thead>
            <tr>
              <th>#</th>
              <th>Suma:</th>
              <th>'.$suma.'zł</th>
            </tr>');
  echo('</table>
      </div>
    </div>
  </div>
</section>');
}
  

    
mysqli_close($connect);
?>




</main>

<footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Powrót do początku</a>
    </p>
    <p>&copy; Mateusz Bereta, Oskar Jany</p>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="https://getbootstrap.com/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="https://getbootstrap.com/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
</body>
</html>
