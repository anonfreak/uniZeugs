package de.dhkarlsruhe.webengineering2.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.dhkarlsruhe.webengineering2.beans.CalculatorBean;

/**
 * Servlet implementation class OKServlet
 */
@WebServlet("/OKServlet")
public class OKServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OKServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		CalculatorBean calculatorBean = (CalculatorBean) request.getAttribute("calculatorBean");
		if (calculatorBean == null) {
			calculatorBean = new CalculatorBean();
			request.setAttribute("calculatorBean", calculatorBean);
		}
		calculatorBean.setZahl1(request.getParameter("Zahl1"));
		calculatorBean.setZahl2(request.getParameter("Zahl2"));
		calculatorBean.setOperation(request.getParameter("Operation"));
		RequestDispatcher dispatcher;
		if (calculatorBean.getOK())
			dispatcher = request.getRequestDispatcher("Result.jsp");
		else
			dispatcher = request.getRequestDispatcher("Form.jsp");
		dispatcher.forward(request, response);
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
