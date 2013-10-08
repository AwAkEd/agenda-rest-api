<!DOCTYPE html>
<html>
<head>
<title>Agenda RESTful - Ver Contacto</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet"
	media="screen">
<style>
.center {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	margin-bottom: auto;
	margin-top: auto;
}
</style>
</head>
<body>
    <div class="hero-unit center">
        <h1>Agenda RESTful!</h1>
        <br />
        <p>API REST para la aplicaci&oacute;n de ejemplo Agenda.</p>
    </div>
    <br />
	<div class="container">
		<h2>Datos del Contacto ${it.contactoId}</h2>
		<div class="row">
			<div class="span4 well">
				<div class="row">
					<div class="span1">
						<a href="#"
							class="thumbnail"><img
							src="http://icons.iconarchive.com/icons/oxygen-icons.org/oxygen/64/Actions-im-user-icon.png" alt=""></a>
					</div>
					<div class="span3">
						<p>
							<i class="icon-user"></i> <strong>${it.nombre}
								${it.apellidos}</strong><br> <i class="icon-map-marker"></i> <strong>${it.direccion}</strong><br>
							<i class="icon-envelope"></i> <strong>${it.email}</strong><br>
							<i class="icon-bullhorn"></i> <strong>${it.telefonoFijo}</strong><br>
							<i class="icon-comment"></i> <strong>${it.telefonoMovil}</strong><br>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
