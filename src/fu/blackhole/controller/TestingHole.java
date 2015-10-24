package fu.blackhole.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestingHole
 */
@WebServlet("/TestingHole")
public class TestingHole extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Date timeNow;
	private String ajaxInput = "", ajaxResponse = "";
	private String[] message;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestingHole() {
		super();
		message = new String[] { "", "", "", "", "", "", "", "", "", "" };
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO: dexter respont to hello
		response.setContentType("text/plain");
		timeNow = new Date();
		ajaxInput = request.getParameter("input");
		String newInput = "";
		
		newInput = "<b>YOU</b>: " + ajaxInput;
		ajaxResponse = manageMessage(newInput);

		if (ajaxInput.toLowerCase().contains("hello")) {
			newInput = dexter("hello!");
			ajaxResponse = manageMessage(newInput);
		} else if (ajaxInput.toLowerCase().contains("dex")) {
			newInput = dexter("yes?");
			ajaxResponse = manageMessage(newInput);
		}

		PrintWriter out = response.getWriter();

		out.print(ajaxResponse);
		System.out.println(ajaxResponse);
	}
	
	public String dexter(String input) {
		return "<b>DEX</b>: " + input;
	}

	public String manageMessage(String newInput) {
		message[9] = message[8];
		message[8] = message[7];
		message[7] = message[6];
		message[6] = message[5];
		message[5] = message[4];
		message[4] = message[3];
		message[3] = message[2];
		message[2] = message[1];
		message[1] = message[0];
		message[0] = String.format("[%tT]:" + newInput + "<br />", timeNow);
		String returnMessage = message[0] + message[1] + message[2] + message[3] + message[4] + message[5] + message[6]
				+ message[7] + message[8] + message[9];
		return returnMessage;
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