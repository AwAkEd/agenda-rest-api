<!DOCTYPE html>
<html>
<head>
<title>Agenda RESTful</title>
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
		<a href="http://tecnodologos.blogspot.com"
			class="btn btn-large btn-info"><i class="icon-book icon-white"></i>
			Ver otros tutoriales</a>
	</div>
	<br />
	<div class="container">
		<ul class="thumbnails">
			<li class="span4">
				<div class="thumbnail">
					<img src="img/contact-list-icon.png" alt="ALT NAME">
					<div class="caption">
						<h3>Todos los Contactos</h3>
						<p>Para ver todos los contactos dados de alta en el sistema</p>
						<p align="center">
							<a href="contactos" class="btn btn-primary btn-block">Ver
								contactos</a>
						</p>
					</div>
				</div>
			</li>
			<li class="span4">
				<div class="thumbnail">
					<img src="img/view-contact-icon.png" alt="ALT NAME">
					<div class="caption">
						<h3>Consultar Contacto</h3>
						<p>Para consultar la informaci&oacute;n de detalle de un
							contacto</p>
						<p align="center">
							<a href="#myModal" class="btn btn-primary btn-block"
								role="button" data-toggle="modal">Ver contacto</a>
						</p>
					</div>
				</div>
			</li>
			<li class="span4">
				<div class="thumbnail">
					<img src="img/contact-new-icon.png" alt="ALT NAME">
					<div class="caption">
						<h3>A&ntilde;adir Contacto</h3>
						<p>Para a&ntilde;adir un nuevo contacto al listado de
							contactos.</p>
						<p align="center">
							<a href="contactForm.html" class="btn btn-primary btn-block">Nuevo
								contacto</a>
						</p>
					</div>
				</div>
			</li>
		</ul>
	</div>
	<div class="modal small hide fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">X</button>
			<h3 id="myModalLabel">Cancelar Adici&oacute;n</h3>
		</div>
		<form class="form-horizontal" action="contacto" method="post">
			<div class="modal-body">
				<fieldset>
					<div class="control-group">
						<label class="control-label">Identificador</label>
						<div class="controls">
							<input id="contactId" name="contactId" type="text"
								placeholder="Identificador" class="input-medium" required>
							<p class="help-block"></p>
						</div>
					</div>
				</fieldset>
			</div>
			<div class="modal-footer">
				<button type="submit" class="btn btn-primary">Ver contacto</button>
				<button class="btn" data-dismiss="modal" aria-hidden="true">Cancelar</button>
			</div>
		</form>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
