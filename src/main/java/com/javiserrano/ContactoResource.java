package com.javiserrano;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.glassfish.jersey.server.mvc.Template;
import org.glassfish.jersey.server.mvc.Viewable;

/**
 * Root resource (exposed at "contactos" path)
 */
@Path("contacto")
public class ContactoResource {

	@GET
	@Template
	@Path("{contactId}")
	@Produces(MediaType.TEXT_HTML)
	public Viewable find(@PathParam("contactId") int contactId) {
		return new Viewable("/contact", ContactosRepository.instance.getModel()
				.get(contactId));
	}

	@POST
	@Template
	@Produces(MediaType.TEXT_HTML)
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public Viewable findId(@FormParam("contactId") int contactId) {
		return new Viewable("/contact", ContactosRepository.instance.getModel()
				.get(contactId));
	}

}
