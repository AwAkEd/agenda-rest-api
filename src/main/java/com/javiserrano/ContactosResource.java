package com.javiserrano;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.server.mvc.Template;
import org.glassfish.jersey.server.mvc.Viewable;

/**
 * Root resource (exposed at "contactos" path)
 */
@Path("contactos")
public class ContactosResource {

	@GET
	@Template
	@Produces(MediaType.TEXT_HTML)
	public Viewable list() {
		List<Contacto> contactos = new ArrayList<Contacto>();
		contactos.addAll(ContactosRepository.instance.getModel().values());
		return new Viewable("/contactList", contactos);
	}

	@GET
	@Path("export/txt")
	@Produces(MediaType.TEXT_PLAIN)
	public String exportText() {
		return ContactosRepository.instance.getModel().values().toString();
	}

	@GET
	@Path("export/xml")
	@Produces(MediaType.TEXT_XML)
	public List<Contacto> exportXml() {
		List<Contacto> listaContactos = new ArrayList<Contacto>();
		listaContactos.addAll(ContactosRepository.instance.getModel().values());
		return listaContactos;
	}

	@POST
	@Template
	@Produces(MediaType.TEXT_HTML)
	public Viewable add(@FormParam("nombre") String nombre,
			@FormParam("apellidos") String apellidos,
			@FormParam("direccion") String direccion,
			@FormParam("email") String email,
			@FormParam("telefonoFijo") String telefonoFijo,
			@FormParam("telefonoMovil") String telefonoMovil) {
		int lastId = ContactosRepository.instance.getModel().values().size();
		Contacto contacto = new Contacto(lastId + 1, nombre, apellidos,
				direccion, telefonoFijo, telefonoMovil, email);
		ContactosRepository.instance.getModel().put(lastId + 1, contacto);
		return new Viewable("/index");
	}

}
