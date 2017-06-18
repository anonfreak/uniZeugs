package de.dhkarlsruhe.webengineering.beans;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class AddressBook {

	private final static AddressBook INSTANCE = new AddressBook();
	private Map<String, Address> addressMap;

	private AddressBook() {
		super();
		initializeAddressBook();
	}

	private void initializeAddressBook() {
		addressMap = new HashMap<String, Address>();
		addressMap.put("1", new Address("1","Boller", "Stefan", "Herr", "stefan.boller@sap.com", "0815", "017411", "STraße",
				"1", "Heidelberg", "69126", "Deutschland", "2.3.1972"));
		addressMap.put("2", new Address("2","Boller", "Sanja", "Frau", "sanja@irgendwas.com", "0815", "017411", "STraße",
				"1", "Heidelberg", "69126", "Deutschland", "4.9.2001"));
		addressMap.put("3", new Address("3","Müller", "Hans", "Herr", "hansi@irgendwas.com", "0815", "017411", "STraße",
				"1", "Heidelberg", "69126", "Deutschland", "4.9.2001"));
		addressMap.put("4", new Address("4","Bauer", "Berta", "Frau", "bb@irgendwas.com", "0815", "017411", "STraße", "1",
				"Heidelberg", "69126", "Deutschland", "4.9.2001"));
	}

	public static AddressBook getInstance() {
		return INSTANCE;
	}

	public List<Address> getAddressList() {
		return new ArrayList<Address>(addressMap.values());
	}

	public Address readAddress(String id) {
		return addressMap.get(id);
	}

	public void saveAddress(Address address) {
		String id = address.getId();
		if (id==null || id.length()==0) {
			id = UUID.randomUUID().toString();
			address.setId(id);
		}
		addressMap.put(id, address);
	}

	public void deleteAddress(String id) {
		addressMap.remove(id);
	}
	
	public void resetAddressBook() {
		initializeAddressBook();
	}
	
	public List<Address> search(String searchString) {
		if (searchString==null || searchString.length()==0) return getAddressList();
		List<Address> resultList = new ArrayList<Address>(addressMap.size());
		for (Address address : addressMap.values()) {
			if (containsString(address,searchString)) resultList.add(address);
		}
		return resultList;
	}

	private boolean containsString(Address address, String searchString) {
		return address.getName().contains(searchString) || //
				address.getChristianname().contains(searchString) || //
				address.getAddressform().contains(searchString) || //
				address.getEmail().contains(searchString) || //
				address.getPhone().contains(searchString) || //
				address.getMobile().contains(searchString) || //
				address.getStreet().contains(searchString) || //
				address.getNumber().contains(searchString) || //
				address.getCity().contains(searchString) || //
				address.getPostcode().contains(searchString) || //
				address.getCountry().contains(searchString) || //
				address.getBirthday().contains(searchString);
	}

	public boolean containsId(String id) {
		return addressMap.keySet().contains(id);
	}

}
