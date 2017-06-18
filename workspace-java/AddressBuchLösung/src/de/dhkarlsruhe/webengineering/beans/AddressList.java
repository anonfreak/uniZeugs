package de.dhkarlsruhe.webengineering.beans;

import java.util.List;

public class AddressList {

	private final AddressBook addressBook;
	private int part = 0;
	private String searchString;
	private String errorMessage;

	public void setSearchString(String searchString) {
		this.searchString = searchString;
	}

	public AddressList() {
		super();
		addressBook = AddressBook.getInstance();
	}

	public void setPart(int part) {
		this.part = part;
	}

	public List<Address> getPartList() {
		List<Address> addressList = addressBook.getAddressList();
		int size = addressList.size();
		List<Address> subList;
		if (part == 1) {
			 subList = addressList.subList(0, size / 2);
			return subList;
		} else {
			subList= addressList.subList(size / 2, size );
			return subList;
		}
	}
	
	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public List<Address> getAddressList() {
		return addressBook.search(searchString);
	}
	
	public Address getAddress(String id) {
		return addressBook.readAddress(id);
	}
	
	public void deleteAddress(String id) {
		 addressBook.deleteAddress(id);
	}

	public boolean containsAddress(String id) {
		return addressBook.containsId(id);
	}
}
