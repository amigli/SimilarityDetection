package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Canzone;
import model.CanzoneDAO;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CalcolaEditDistance", value = "/calcola-edit-distance")
public class editdistance extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idPrimaCanzone = Integer.parseInt(request.getParameter("prima-canzone"));
        int idSecondaCanzone = Integer.parseInt(request.getParameter("seconda-canzone"));
        String parametro = request.getParameter("parametro");
        CanzoneDAO canzoneService = new CanzoneDAO();
        String address;
        Canzone c1 = null, c2 = null;
        int dNote=-1, dNoteDurata=-1, dIntervalli=-1;
        int[] valori = new int[3];

        if (idPrimaCanzone!=0 && idSecondaCanzone!=0){
            c1 = canzoneService.doRetrieveById(idPrimaCanzone);
            c2 = canzoneService.doRetrieveById(idSecondaCanzone);

            if(parametro!=null){

            if (parametro.equalsIgnoreCase("note")){
                dNote = canzoneService.calcolaEditDistance(c1.getNote(),c2.getNote());
                valori[0]=dNote;
                valori[1]=-1;
                valori[2]=-1;
            }
            if (parametro.equalsIgnoreCase("noteDurata")){
                dNoteDurata = canzoneService.calcolaEditDistance(c1.getNoteDurata(), c2.getNoteDurata());
                valori[0]=-1;
                valori[1]=dNoteDurata;
                valori[2]=-1;
            }
            if (parametro.equalsIgnoreCase("intervalli")){
                dIntervalli = canzoneService.calcolaEditDistance(c1.getIntervalli(), c2.getIntervalli());
                valori[0]=-1;
                valori[1]=-1;
                valori[2]=dIntervalli;
            }
            if (parametro.equalsIgnoreCase("all")){
                dNote = canzoneService.calcolaEditDistance(c1.getNote(),c2.getNote());
                dNoteDurata = canzoneService.calcolaEditDistance(c1.getNoteDurata(), c2.getNoteDurata());
                dIntervalli = canzoneService.calcolaEditDistance(c1.getIntervalli(), c2.getIntervalli());
                valori[0] = dNote;
                valori[1] = dNoteDurata;
                valori[2] = dIntervalli;
            }
        }else{
                address = "/WEB-INF/error.jsp";

                RequestDispatcher dispatcher =  request.getRequestDispatcher(address);

                dispatcher.forward(request, response);
            }
    }

        request.setAttribute("canzone1", c1);
        request.setAttribute("canzone2", c2);
        request.setAttribute("editDistanceArray", valori);

        address = "/WEB-INF/results.jsp";

        RequestDispatcher dispatcher =  request.getRequestDispatcher(address);

        dispatcher.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
