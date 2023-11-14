package it.contrader.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import it.contrader.dto.UserDTO;
import it.contrader.service.LoginService;
import it.contrader.utils.UserSingleton;


/*
 * Login Servlet
 */
public class PonteServlet extends HttpServlet {
    // UID della servlet
    private static final long serialVersionUID = 1L;

    /**
     * @param HttpServletRequest  request
     * @param HttpServletResponse response
     *                            <p>
     *                            Metodo che gestisce le request che arrivano dalla JSP.
     */
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        final HttpSession session = request.getSession();
        session.setAttribute("utente", null);

        LoginService service = new LoginService();

        if (request != null) {
            String username = request.getParameter("username").toString();
            String password = request.getParameter("password").toString();
            //come nei vecchi controller, invoca il service
            UserDTO dto = service.login(username, password);
            if (dto != null)
                //se il login ha funzionato, salva l'utente nella sessione
                session.setAttribute("user", dto);
            else
                //altrimenti torna alla pagina di login
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

            //esegue una switch case in base allo usertype per il reindirizzamento
            switch (UserSingleton.getInstance().getUserLogged().getUsertype().toUpperCase()) {
                case "ADMIN":
                    System.out.println("CIAO");
                    //questo metodo reindirizza alla JSP tramite URL con una request e una response
                    getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
                    break;

                case "USER":
                    System.out.println("cia");

                    getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
                    break;

                case "REGISTER":
                    System.out.println("CIA");

                    getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
                    break;

                default:
                    //di default rimanda al login
                    getServletContext().getRequestDispatcher("/register.jsp").forward(request, response);
                    break;
            }
        }
    }
}

