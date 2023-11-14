package it.contrader.servlets;

import it.contrader.dto.AppointmentDTO;
import it.contrader.dto.UserDTO;
import it.contrader.service.AppointmentService;
import it.contrader.service.Service;
import it.contrader.service.UserService;
import it.contrader.utils.UserSingleton;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class AppointmentServlet extends HttpServlet{
        private static final long serialVersionUID = 1L;

        public AppointmentServlet() {
        }

        public void updateList(HttpServletRequest request) {
            Service<AppointmentDTO> service = new AppointmentService();
            List<AppointmentDTO> listDTO = service.getAll();
            request.setAttribute("list", listDTO);
        }

        @Override
        public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            Service<AppointmentDTO> service = new AppointmentService();
            String mode = request.getParameter("mode");
            AppointmentDTO dto;
            UserDTO userdto;
            Service<UserDTO> serv = new UserService();
            int id;
            boolean ans;

            switch (mode.toUpperCase()) {

                case "LIST":
                    updateList(request);
                    getServletContext().getRequestDispatcher("/prenotazioni.jsp").forward(request, response);
                    break;

                case "READD":
                    id = UserSingleton.getInstance().getUserLogged().getId();
                    userdto=serv.read(id);
                    request.setAttribute("userdto", userdto);
                    updateList(request);
                    getServletContext().getRequestDispatcher("/storico.jsp").forward(request,response);

                case "READ":
                    id = Integer.parseInt(request.getParameter("id"));
                    dto = service.read(id);
                    request.setAttribute("dto", dto);

                    if (request.getParameter("update") == null) {
                        getServletContext().getRequestDispatcher("").forward(request, response);

                    }

                    else getServletContext().getRequestDispatcher("/modPren.jsp").forward(request, response);

                    break;

                case "INSERT":
                    int userId = UserSingleton.getInstance().getUserLogged().getId();
                    int idMe = Integer.parseInt(request.getParameter("idme"));

                    dto = new AppointmentDTO (userId, idMe);
                    ans = service.insert(dto);
                    request.setAttribute("ans", ans);
                    updateList(request);

                    getServletContext().getRequestDispatcher("/homeuser.jsp").forward(request, response);
                    break;

                case "UPDATE":
                    String date = request.getParameter("data");
                    String hour = request.getParameter("hour");
                    double cost = Double.parseDouble(request.getParameter("cost"));
                    boolean demand = Boolean.parseBoolean(request.getParameter("accepted"));
                    id = Integer.parseInt(request.getParameter("id"));
                    userId = Integer.parseInt(request.getParameter("userid"));
                    idMe = Integer.parseInt(request.getParameter("idme"));
                    dto = new AppointmentDTO (id, date, hour, cost, demand, userId, idMe);
                    ans = service.update(dto);
                    updateList(request);
                    getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
                    break;

                case "DELETE":
                    userId = Integer.parseInt(request.getParameter("id"));
                    ans = service.delete(userId);
                    request.setAttribute("ans", ans);
                    updateList(request);
                    getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
                    break;


            }
        }
    }

