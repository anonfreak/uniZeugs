package de.dhkarlsruhe.webengineering.servlets;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.dhkarlsruhe.webengineering.beans.Address;
import de.dhkarlsruhe.webengineering.beans.AddressBook;
import de.dhkarlsruhe.webengineering.beans.AddressList;

/**
 * Servlet implementation class SaveAddress
 */
@WebServlet("/save")
public class SaveAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveAddress() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Address address = (Address) request.getAttribute("address");
		if (address == null) {
			address = new Address();
			request.setAttribute("address", address);
		}
		String id = request.getParameter("id");
		if (id == null || id.length() == 0)
			address.setId(UUID.randomUUID().toString());
		else {
			address.setId(id);
			if (!address.isValidId()) {
				AddressList addressList = (AddressList) request.getAttribute("addressList");
				if (addressList == null) {
					addressList = new AddressList();
					request.setAttribute("addressList", addressList);
				}
				addressList.setErrorMessage("Ungültige Id");
				request.getRequestDispatcher("AddressList.jsp").forward(request, response);
				return;
			}
		}
		address.setName(request.getParameter("name"));
		address.setChristianname(request.getParameter("christianname"));
		address.setAddressform(request.getParameter("addressform"));
		address.setEmail(request.getParameter("email"));
		address.setPhone(request.getParameter("phone"));
		address.setMobile(request.getParameter("mobile"));
		address.setStreet(request.getParameter("street"));
		address.setNumber(request.getParameter("number"));
		address.setCity(request.getParameter("city"));
		address.setPostcode(request.getParameter("postcode"));
		address.setCountry(request.getParameter("country"));
		address.setBirthday(request.getParameter("birthday"));
		address.save();
		request.getRequestDispatcher("AddressDetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
