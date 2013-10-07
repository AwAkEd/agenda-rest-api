package com.javiserrano;

import java.util.HashMap;
import java.util.Map;

public enum ContactosRepository {

	instance;

	private final Map<Integer, Contacto> contentProvider = new HashMap<Integer, Contacto>();

	private ContactosRepository() {
		Contacto contacto = new Contacto(1, "John", "Doe", "Market Road",
				"987654321", "619876543", "john.doe@email.com");
		contentProvider.put(contacto.getContactoId(), contacto);
		contacto = new Contacto(2, "Jane", "Doe", "Wall Street", "987894321",
				"612376543", "jane.doe@email.com");
		contentProvider.put(contacto.getContactoId(), contacto);
		contacto = new Contacto(3, "Kate", "Nate", "5th Street", "932187654",
				"612987654", "kate.nate@email.com");
		contentProvider.put(contacto.getContactoId(), contacto);
		contacto = new Contacto(4, "Steve", "Knowles", "Abbey Road",
				"954321876", "612345987", "steve.knowles@email.com");
		contentProvider.put(contacto.getContactoId(), contacto);
		contacto = new Contacto(5, "Andrew", "Adams", "Little Tokio",
				"943218765", "612398765", "andrew.adams@email.com");
		contentProvider.put(contacto.getContactoId(), contacto);
	}

	public Map<Integer, Contacto> getModel() {
		return contentProvider;
	}
}
