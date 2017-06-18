package de.dhkarlsruhe.webengineering.beans;

import java.util.ArrayList;
import java.util.List;

public class AddressBook {

	private final static AddressBook INSTANCE = new AddressBook();
	private List<Address> addressList = new ArrayList<Address>();

	private AddressBook() {
		super();
		addressList.add(new Address("Boller", "Stefan", "Herr", "stefan.boller@sap.com", "0815", "017411", "STraße",
				"1", "Heidelberg", "69126", "Deutschland", "2.3.1972"));
		addressList.add(new Address("Boller", "Sanja", "Frau", "sanja@irgendwas.com", "0815", "017411", "STraße",
				"1", "Heidelberg", "69126", "Deutschland", "4.9.2001"));
		addressList.add(new Address("Müller", "Hans", "Herr", "hansi@irgendwas.com", "0815", "017411", "STraße",
				"1", "Heidelberg", "69126", "Deutschland", "4.9.2001"));
		addressList.add(new Address("Bauer", "Berta", "Frau", "bb@irgendwas.com", "0815", "017411", "STraße",
				"1", "Heidelberg", "69126", "Deutschland", "4.9.2001"));
	}

	public static AddressBook getInstance() {
		return INSTANCE;
	}

	public List<Address> getAddressList() {
		return addressList;
	}

}
