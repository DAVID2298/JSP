package it.contrader.servlets;

import it.contrader.service.RegisterService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class RegisterServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        final HttpSession session = request.getSession();
        session.setAttribute("utente", null);

        RegisterService registerService = new RegisterService();

        if (request != null) {
            String username = request.getParameter("registerUsername");
            String password = request.getParameter("registerPassword");
            String usertype = request.getParameter("registerUsertype");

            String nome = request.getParameter("registerFirstname");
            String cognome = request.getParameter("registerLastname");
            String indirizzo = request.getParameter("registerAddress");
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
//            Date birthdate = null;
//            try {
//                birthdate = new Date(dateFormat.parse(birthdateStr).getTime());
//            } catch (ParseException e) {
//                e.printStackTrace();
//            }
            String dataNascita= request.getParameter("registerData");


            if (request.getParameter("registerUsertype").equals("ADMIN")) {
                String name = request.getParameter("registerNameH");
                String address = request.getParameter("registerAddressH");
                String nation = request.getParameter("registerNation");

                String province = request.getParameter("registerProvinceH");
                String city = request.getParameter("registerCityH");
                String description = request.getParameter("registerDescriptionH");


                registerService.registerAdmin(username, usertype,password, nome, cognome, indirizzo, dataNascita, address, address, nation, province, city, description);
            } else if (request.getParameter("registerUsertype").equals("USER")) {
                registerService.registerUser(username, usertype, password, nome, cognome, indirizzo, dataNascita);
            }

            getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }
}