package com.klef.jfsd.sdp.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="patient_table")
public class Patient {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="patient_id")
	private int id;
	@Column(name="patient_name",nullable=false,length = 50)
	private String name;
	@Column(name="patient_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="patient_dob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="patient_preferences",nullable=false,length = 20)
	private String preferences;
	@Column(name="patient_email",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name="patient_password",nullable=false,length = 30)
	private String password;
	@Column(name="patient_contact",nullable=false,unique = true)
	private String contact;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getPreferences() {
		return preferences;
	}
	public void setPreferences(String preferences) {
		this.preferences = preferences;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	@Override
	public String toString() {
		return "Patient [id=" + id + ", name=" + name + ", gender=" + gender + ", dateofbirth=" + dateofbirth
				+ ", preferences=" + preferences + ", email=" + email + ", password=" + password + ", contact="
				+ contact + "]";
	}
}
