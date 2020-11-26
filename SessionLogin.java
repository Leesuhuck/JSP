package story;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionLogin
 */
@WebServlet("/SessionLogin")
public class SessionLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionLogin() {
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
		String id  = request.getParameter("id");
		String pw = request.getParameter("pw");
		if (id.equals("java")&&pw.equals("java")) {
			//equals 메서드로 연산자 == 와 같다. 객체비교 함수다.
			HttpSession session = request.getSession();
			session.setAttribute("id",id);
			RequestDispatcher dispatcher = 
			/*클라이언트로부터 최초에 들어온 요청을 JSP/Servlet 내에서 원하는 자원으로 요청을 넘기는(보내는) 역할을 수행하거나,
				특정 자원에 처리를 요청하고 처리 결과를 얻어오는 기능을 수행하는 클래스*/
					request.getRequestDispatcher("menu.jsp");
			dispatcher.forward(request, response);
			// HttpServletRequest 와 HttpServletResponse가 동시에 공유된다.
		} else {
			out.println("<script>");
			out.println("alert('ID or Pw Error')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
