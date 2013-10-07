<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Agenda RESTful - Listado de Contactos</title>
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
		<div class="row">
			<div class="span12">
				<div class="btn-toolbar">
					<a href="contactForm.html" class="btn btn-primary">Nuevo
						contacto</a> <a href="contactos/export/txt" target="_blank"
						class="btn">Exportar TXT</a> <a href="contactos/export/xml"
						target="_blank" class="btn">Exportar XML</a>
				</div>
			</div>
			<div class="span12">
				<h2>Lista de Contactos</h2>
				<div class="row">
					<div class="well">
						<table class="table">
							<thead>
								<tr>
									<th>Id</th>
									<th>Nombre y apellidos</th>
									<th>Direccion</th>
									<th>email</th>
									<th>Tel. Fijo</th>
									<th>Tel. Movil</th>
									<th style="width: 36px;"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="t" items="${it}">
									<tr>
										<td>${t.contactoId}</td>
										<td>${t.nombre} ${t.apellidos}</td>
										<td>${t.direccion}</td>
										<td>${t.email}</td>
										<td>${t.telefonoFijo}</td>
										<td>${t.telefonoMovil}</td>
										<td><a href="#"><i class="icon-pencil"></i></a> <a
											href="#myModal" role="button" data-toggle="modal"><i
												class="icon-remove"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					<div class="modal small hide fade" id="myModal" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">X</button>
							<h3 id="myModalLabel">Confirmar Eliminaci&oacute;n</h3>
						</div>
						<div class="modal-body">
							<p class="error-text">Seguro que desea eliminar el contacto?</p>
						</div>
						<div class="modal-footer">
							<button class="btn" data-dismiss="modal" aria-hidden="true">No</button>
							<button class="btn btn-danger" data-dismiss="modal">Si</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
