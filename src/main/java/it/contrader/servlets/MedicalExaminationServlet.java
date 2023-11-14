package it.contrader.servlets;

import it.contrader.dto.MedicalExaminationDTO;
import it.contrader.service.MedicalExaminationService;
import it.contrader.service.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class MedicalExaminationServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public MedicalExaminationServlet(){
    }

    public void updateMe(HttpServletRequest request) {
        Service<MedicalExaminationDTO> service = new MedicalExaminationService();
        List<MedicalExaminationDTO>listDTO = service.getAll();
        request.setAttribute("list", listDTO);
    }

    @Override
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Service<MedicalExaminationDTO> service = new MedicalExaminationService();
        String mode = request.getParameter("mode");
        MedicalExaminationDTO dto;
        int id;
        boolean ans;

        switch (mode.toUpperCase()){

            case "MELIST":
                updateMe(request);
                getServletContext().getRequestDispatcher("/visits.jsp").forward(request, response);
                break;

            case "MEUSERLIST":
                updateMe(request);
                getServletContext().getRequestDispatcher("/visite.jsp").forward(request, response);
                break;

            case "READ":

                id = Integer.parseInt(request.getParameter("id"));
                dto = service.read(id);
                request.setAttribute("dto", dto);

                if (request.getParameter("update")==null){
                    getServletContext().getRequestDispatcher("/dettaglio.jsp").forward(request, response);
                }

                else getServletContext().getRequestDispatcher("/modVisita.jsp").forward(request,response);

                break;

            case "INSERT":
                String typology = request.getParameter("typology").toString();
                double cost = Double.parseDouble(request.getParameter("cost").toString());
                long code = Long.parseLong(request.getParameter("code").toString());
//                String img = request.getParameter("img").toString();
                dto = new MedicalExaminationDTO(typology, cost, code);
                ans = service.insert(dto);
                request.setAttribute("ans", ans);
                updateMe(request);
                getServletContext().getRequestDispatcher("/admin.jsp").forward(request, response);
                break;

            case "UPDATE":
                typology = request.getParameter("typology");
                cost = Double.parseDouble(request.getParameter("cost"));
                code = Long.parseLong(request.getParameter("code"));
                String img = request.getParameter("img");
                id = Integer.parseInt(request.getParameter("id"));


                dto = new MedicalExaminationDTO(id, typology, cost, code, img);
                ans = service.update(dto);
                updateMe(request);
                getServletContext().getRequestDispatcher("/admin.jsp").forward(request,response);
                break;

            case "DELETE":
                id = Integer.parseInt(request.getParameter("id"));
                ans = service.delete((int) id);
                request.setAttribute("ans", ans);
                updateMe(request);
                getServletContext().getRequestDispatcher("/admin.jsp").forward(request,response);
                break;
        }
    }
}