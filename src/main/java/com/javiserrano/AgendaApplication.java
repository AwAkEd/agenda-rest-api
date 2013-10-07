package com.javiserrano;

import org.glassfish.jersey.filter.LoggingFilter;
import org.glassfish.jersey.server.ResourceConfig;
import org.glassfish.jersey.server.mvc.jsp.JspMvcFeature;

public class AgendaApplication extends ResourceConfig {

	public AgendaApplication() {
		property("jersey.config.server.mvc.templateBasepath.jsp", "");
		// Resources.
		packages(ContactosResource.class.getPackage().getName());
		// MVC.
		register(JspMvcFeature.class);
		// Logging.
		register(LoggingFilter.class);
	}
}
