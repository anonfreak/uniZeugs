package de.dhkarlsruhe.webengineering.beans;

import java.util.List;

public class AddressList {

	private final AddressBook addressBook;
	private int part = 0;

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
}
