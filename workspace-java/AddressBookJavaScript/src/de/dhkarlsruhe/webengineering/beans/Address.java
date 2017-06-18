package de.dhkarlsruhe.webengineering.beans;

public class Address {

	private String name;
	private String christianname;
	private String addressform;
	private String email;
	private String phone;
	private String mobile;
	private String street;
	private String number;
	private String city;
	private String postcode;
	private String country;
	private String birthday;

	public Address() {
		super();
	}

	public Address(String name, String christianname, String addressform, String email, String phone, String mobile,
			String street, String number, String city, String postcode, String country, String birthday) {
		super();
		this.name = name;
		this.christianname = christianname;
		this.addressform = addressform;
		this.email = email;
		this.phone = phone;
		this.mobile = mobile;
		this.street = street;
		this.number = number;
		this.city = city;
		this.postcode = postcode;
		this.country = country;
		this.birthday = birthday;
	}

	public String getChristianname() {
		return christianname;
	}

	public void setChristianname(String christianname) {
		this.christianname = christianname;
	}

	public String getAddressform() {
		return addressform;
	}

	public void setAddressform(String addressform) {
		this.addressform = addressform;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

}
