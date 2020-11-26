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
		//�ϳ��� �Ķ������ �������� ���� ������ ���
		out.println("<html>");
		/*out.println�� �̿��� html�±׸� ����Ҽ� �ִ�.
		�ֳĸ� ����â�� �Ǵٸ� â�̱� �����̴�. */
		out.println("<head>");
		out.println("</head>");
		out.println("<body bgcolor='black'>");
		//Body�ȿ� background color ����
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
