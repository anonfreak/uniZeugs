package de.dhkarlsruhe.webengineering.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.dhkarlsruhe.webengineering.beans.Address;
import de.dhkarlsruhe.webengineering.beans.AddressList;

/**
 * Servlet implementation class PartServlet
 */
@WebServlet("/PartServlet")
public class PartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PartServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AddressList addressList = (AddressList) request.getAttribute("addressBean");
		if (addressList == null) {
			addressList = new AddressList();
			request.setAttribute("addressBean", addressList);
		}
		addressList.setPart(Integer.parseInt(request.getParameter("part")));
		response.setContentType("text/html; charset=ISO-8859-1");
		PrintWriter writer = response.getWriter();
		writer.write("[");
		List<Address> partList = addressList.getPartList();
		Iterator<Address> it = partList.iterator();
		while (it.hasNext()) {
			Address address = it.next();
			writer.write("{\"name\":\"" + address.getName() + "\",");
			writer.write("\"christianname\":\"" + address.getChristianname() + "\",");
			writer.write("\"city\":\"" + address.getCity() + "\"}");
			if (it.hasNext())
				writer.write(",");
		}
		writer.write("]");
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
