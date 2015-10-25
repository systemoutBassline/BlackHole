package fu.blackhole.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fu.blackhole.model.BlackHoleHandler;
import fu.blackhole.model.Throwup;

/**
 * Servlet implementation class ThrowUpServlet
 */
@WebServlet("/ThrowUpServlet")
public class ThrowupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Date timeNow;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ThrowupServlet() {
		super();
		java.util.Date date = new java.util.Date();
		timeNow = new Date(date.getTime());
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BlackHoleHandler bhh = new BlackHoleHandler();
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();

		String author = "Anonymous";
		String input = request.getParameter("input");
		String result = String.format("<table id=\"messageTable\"><th><b> " 
				+ author + " </b> - %tc</th> <tr><td>" + input 
				+ "</td></tr></table>", timeNow);

		Throwup throwup = new Throwup(author, input, timeNow);
		bhh.addThrowupToDb(throwup);

		out.print(result);
		System.out.println(result);
	}

}
