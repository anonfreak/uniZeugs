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
 * Servlet implementation class DeleteAddress
 */
@WebServlet("/delete")
public class DeleteAddress extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteAddress() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AddressList addressList = (AddressList) request.getAttribute("addressList");
		if (addressList == null) {
			addressList = new AddressList();
			request.setAttribute("addressList", addressList);
		}
		String id = request.getParameter("id");
		if (id == null || id.length() == 0 || !addressList.containsAddress(id)) {
			addressList.setErrorMessage("Ungültige Id");
		} else
			addressList.deleteAddress(id);
		request.getRequestDispatcher("AddressList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
