package controller;

import java.io.*;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.Canzone;
import model.CanzoneDAO;

@WebServlet(name = "indexServlet", value = "/index.html")
public class IndexServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        CanzoneDAO canzoneService = new CanzoneDAO();
        String address;

        List<Canzone> canzoni = null;

        canzoni = canzoneService.doRetrieveAll();


        request.setAttribute("canzoni", canzoni);

        address =  "/WEB-INF/index.jsp";

        RequestDispatcher dispatcher = request.getRequestDispatcher(address);

        dispatcher.forward(request, response);

    }
}