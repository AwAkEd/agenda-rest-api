package com.javiserrano;

import java.io.Serializable;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

@SuppressWarnings("serial")
@XmlRootElement
@XmlAccessorType(XmlAccessType.FIELD)
public class Contacto implements Serializable {
	private static final String TO_STRING_FORMAT = "%s %s. Direccion:%s. Fijo/Movil:%s/%s. Email: %s";
	int contactoId;
	String nombre = "";
	String apellidos = "";
	String direccion = "";
	String telefonoFijo = "";
	String telefonoMovil = "";
	String email = "";

	public Contacto() {
		super();
	}

	public Contacto(int contactoId, String nombre, String apellidos,
			String direccion, String telefonoFijo, String telefonoMovil,
			String email) {
		super();
		this.contactoId = contactoId;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.direccion = direccion;
		this.telefonoFijo = telefonoFijo;
		this.telefonoMovil = telefonoMovil;
		this.email = email;
	}

	public int getContactoId() {
		return contactoId;
	}

	public void setContactoId(int contactoId) {
		this.contactoId = contactoId;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefonoFijo() {
		return telefonoFijo;
	}

	public void setTelefonoFijo(String telefonoFijo) {
		this.telefonoFijo = telefonoFijo;
	}

	public String getTelefonoMovil() {
		return telefonoMovil;
	}

	public void setTelefonoMovil(String telefonoMovil) {
		this.telefonoMovil = telefonoMovil;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return String.format(TO_STRING_FORMAT, nombre, apellidos, direccion,
				telefonoFijo, telefonoMovil, email);
	}
}