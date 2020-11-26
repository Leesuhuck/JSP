package story;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChoiceDog
 */
@WebServlet("/ChoiceDog")
public class ChoiceDog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChoiceDog() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String[] dog = request.getParameterValues("dog_name");
		//하나의 파라미터의 여러개의 값을 가질때 사용
		out.println("<html>");
		/*out.println을 이용해 html태그를 사용할수 있다.
		왜냐면 서블릿창은 또다른 창이기 때문이다. */
		out.println("<head>");
		out.println("</head>");
		out.println("<body bgcolor='black'>");
		//Body안에 background color 설정
		out.println("<table align='center' bgcolor='yellow'>");
		out.println("<tr>");
		for (int i=0; i<dog.length; i++) {
			out.println("<td width='30%' height='30%' align='center' margin='0'>");
			out.println("<img src='"+dog[i]+"'/>");
			out.println("</td>");
		}
		out.println("</tr>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
	}

}
