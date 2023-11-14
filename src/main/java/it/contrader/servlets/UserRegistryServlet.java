package it.contrader.servlets;

import it.contrader.dto.UserDTO;
import it.contrader.dto.UserRegistryDTO;
import it.contrader.model.User;
import it.contrader.model.UserRegistry;
import it.contrader.service.Service;
import it.contrader.service.UserRegistryService;
import it.contrader.service.UserService;
import it.contrader.utils.UserSingleton;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.util.List;

public class UserRegistryServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    int i;

    public UserRegistryServlet() {
    }

    public void updateList(HttpServletRequest request) {
        Service<UserRegistryDTO> service = new UserRegistryService();
        List<UserRegistryDTO> listDTO = service.getAll();
        request.setAttribute("list", listDTO);
    }

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Service<UserRegistryDTO> service = new UserRegistryService();
        String mode = request.getParameter("mode");
        UserRegistryDTO dto;
        int userId;
        boolean ans;

        switch (mode.toUpperCase()) {

            case "USERLIST":
                updateList(request);
                getServletContext().getRequestDispatcher("/user/allUsers.jsp").forward(request, response);
                break;

            case "READ":

                userId = UserSingleton.getInstance().getUserLogged().getId();
                dto = service.read(userId);
                request.setAttribute("userRegistryDTO", dto);

                if (request.getParameter("update") == null) {
                    getServletContext().getRequestDispatcher("/userRegistry/home.jsp").forward(request, response);

                }

                else getServletContext().getRequestDispatcher("/userRegistry/UserModifica.jsp").forward(request, response);

                break;

            case "READUSER":

                userId = UserSingleton.getInstance().getUserLogged().getId();
                dto = service.read(userId);
                request.setAttribute("userRegistryDTO", dto);

                if (request.getParameter("updatem") == null) {
                    getServletContext().getRequestDispatcher("/userRegistry/homeu.jsp").forward(request, response);

                }

                else getServletContext().getRequestDispatcher("/userRegistry/UserModificam.jsp").forward(request, response);

                break;

            case "INSERT":
                String name=request.getParameter("name").toString();
                String surname=request.getParameter("surname").toString();
                String address=request.getParameter("address").toString();
                String birthDate=  request.getParameter("birthDate").toString();
//                userId= UserSingleton.getInstance().getUserLogged().getId();
                userId = Integer.parseInt(request.getParameter("id"));
                UserRegistryDTO u= new UserRegistryDTO(name,surname,address,birthDate,userId);
                ans = service.insert(u);
                request.setAttribute("ans", ans);
                updateList(request);
                getServletContext().getRequestDispatcher("/homeadmin.jsp").forward(request, response);
                break;

            case "UPDATE":

                name=request.getParameter("name");
                surname=request.getParameter("surname");
                address=request.getParameter("address");
                birthDate= request.getParameter("birthDate");
//                userId = Integer.parseInt(request.getParameter("Userid"));
                i = Integer.parseInt(request.getParameter("id"));
                userId = UserSingleton.getInstance().getUserLogged().getId();
                dto = new UserRegistryDTO (i, name, surname, address, birthDate,userId);
                ans = service.update(dto);
                updateList(request);
                getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
                break;

            case "UPDATEM":

                name=request.getParameter("name");
                surname=request.getParameter("surname");
                address=request.getParameter("address");
                birthDate= request.getParameter("birthDate");
//                userId = Integer.parseInt(request.getParameter("Userid"));
                i = Integer.parseInt(request.getParameter("id"));
                userId = UserSingleton.getInstance().getUserLogged().getId();
                dto = new UserRegistryDTO (i, name, surname, address, birthDate,userId);
                ans = service.update(dto);
                updateList(request);
                getServletContext().getRequestDispatcher("/homeuser.jsp").forward(request, response);
                break;

            case "DELETE":
                int uId= UserSingleton.getInstance().getUserLogged().getId();
                ans = service.delete(uId);
                request.setAttribute("ans", ans);
                updateList(request);
                getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
                break;
        }
    }

}
