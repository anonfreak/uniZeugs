package de.dhkarlsruhe.webengineering2.beans;

public class CalculatorBean {

	private String zahl1;
	private String zahl2;
	private String operation;

	public CalculatorBean() {
	}

	public String getZahl1() {
		return zahl1;
	}

	public void setZahl1(String zahl1) {
		this.zahl1 = zahl1;
	}

	public String getZahl2() {
		return zahl2;
	}

	public void setZahl2(String zahl2) {
		this.zahl2 = zahl2;
	}

	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation;
	}

	public boolean getOK() {
		return checkZahl(zahl1) && checkZahl(zahl2) && operationOK(operation) && !divisionBy0(zahl2, operation);
	}

	public String getErrorMessageZahl1() {
		if (isInitial() || checkZahl(zahl1)) {
			return "";
		}
		return "Bitte eine Zahl eingeben!";
	}

	public String getErrorMessageZahl2() {
		if (isInitial())
			return "";

		if (!checkZahl(zahl2))
			return "Bitte eine Zahl eingeben!";

		if (divisionBy0(zahl2, operation))
			return "Durch 0 Teilen ist nicht erlaubt!";

		return "";
	}

	public String getErrorMessageOperation() {
		if (isInitial() || operationOK(operation))
			return "";
		else
			return "Es sind nur '+', '-', '*', '/' und '%' erlaubt!";
	}

	public double getResult() {
		switch (operation) {
		case "+":
			return Double.valueOf(zahl1) + Double.valueOf(zahl2);
		case "-":
			return Double.valueOf(zahl1) - Double.valueOf(zahl2);
		case "*":
			return Double.valueOf(zahl1) * Double.valueOf(zahl2);
		case "/":
			return Double.valueOf(zahl1) / Double.valueOf(zahl2);
		case "%":
			return Double.valueOf(zahl1) % Double.valueOf(zahl2);
		}
		return 0;
	}

	private boolean isInitial() {
		return zahl1 == null && zahl2 == null && operation == null;
	}

	private boolean operationOK(String operation) {
		return (operation != null && //
				(operation.equals("+") || operation.equals("-") || operation.equals("*") || operation.equals("/")
						|| operation.equals("%")));
	}

	private boolean divisionBy0(String zahl, String operation) {
		return (operation != null && operation.equals("/") && (zahl.trim().equals("0")));
	}

	boolean checkZahl(String zahl) {
		if (zahl != null) {
			try {
				Double.valueOf(zahl);
				return true;
			} catch (NumberFormatException nfe) {
				return false;
			}
		}
		return false;
	}
}
