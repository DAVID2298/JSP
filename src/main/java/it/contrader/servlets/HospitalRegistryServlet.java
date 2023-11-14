package it.contrader.servlets;

import it.contrader.dto.HospitalRegistryDTO;
import it.contrader.service.HospitalRegistryService;
import it.contrader.service.Service;
import it.contrader.utils.UserSingleton;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class HospitalRegistryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public HospitalRegistryServlet() {
    }
    public void updateList(HttpServletRequest request) {
        Service<HospitalRegistryDTO> service = new HospitalRegistryService();
        List<HospitalRegistryDTO> listDTO = service.getAll();
        request.setAttribute("list", listDTO);
    }
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Service<HospitalRegistryDTO> service = new HospitalRegistryService();
        String mode = request.getParameter("mode");
        HospitalRegistryDTO dto;
        int id;
        boolean ans;

        switch (mode.toUpperCase()) {

            case "HOSPITALLIST":
                updateList(request);
                getServletContext().getRequestDispatcher("/HospitalRegistry/hospitalinsert.jsp").forward(request, response);
                break;


            case "INSERT":

                String name = request.getParameter("name").toString();
                String address = request.getParameter("address").toString();
                String nation = request.getParameter("nation").toString();
                String province = request.getParameter("province").toString();
                String city = request.getParameter("city").toString();
                String description = request.getParameter("description").toString();
                int user_id = UserSingleton.getInstance().getUserLogged().getId();
                dto = new HospitalRegistryDTO(name,address,nation,province,city,description,user_id);
                ans = service.insert(dto);
                request.setAttribute("ans", ans);
                updateList(request);
                getServletContext().getRequestDispatcher("/HospitalRegistry/hospitalinsert.jsp").forward(request, response);
                break;

            case "UPDATE":

                name=request.getParameter("name");
                address=request.getParameter("address");
                nation= request.getParameter("nation");
                province= request.getParameter("province");
                city= request.getParameter("city");
                description= request.getParameter("description");
                int i = Integer.parseInt(request.getParameter("id"));
                user_id = UserSingleton.getInstance().getUserLogged().getId();
                dto =new HospitalRegistryDTO(i,name,address,nation,province,city,description, user_id);
                ans = service.update(dto);
                updateList(request);
                getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
                break;

            //     case "DELETE":
            //              user_id=UserSingleton.getInstance().getUserLogged().getId();
            //              ans = service.delete((int) user_id);
            //              request.setAttribute("ans", ans);
            //              updateList(request);
            //              getServletContext().getRequestDispatcher("/HospitalRegistry/hospitalinsert.jsp").forward(request, response);
            //              break;

            case "READ":
                user_id = UserSingleton.getInstance().getUserLogged().getId();
                dto = service.read(user_id);
                request.setAttribute("hospitalRegistryDTO", dto);

                if (request.getParameter("update") == null) {
                    getServletContext().getRequestDispatcher("/userRegistry/hospitalReg.jsp").forward(request, response);

                }

                else getServletContext().getRequestDispatcher("/userRegistry/HospitalRegistry.jsp").forward(request, response);

                break;

        }
    }

}
