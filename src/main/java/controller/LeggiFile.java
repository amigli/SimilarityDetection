package controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.CanzoneDAO;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

@MultipartConfig(fileSizeThreshold = 1024 * 1024,
        maxFileSize = 1024 * 1024 * 5,
        maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(name = "leggi-file", value = "/leggi-file")
public class LeggiFile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Part> parts = (List<Part>) request.getParts();
        CanzoneDAO canzoneService = new CanzoneDAO();
        int d = 0;
        int c = 0;
        Part file1 = request.getPart("file1");
        Part file2 = request.getPart("file2");
        String c1 = null, c2 = null;
        String address;

        String fileName1 = file1.getSubmittedFileName();
        String fileName2 = file2.getSubmittedFileName();

        int index1 = fileName1.indexOf(".");
        String estensione1 = fileName1.substring(index1);
        int index2 = fileName2.indexOf(".");
        String estensione2 = fileName2.substring(index2);

        String s1 = "";
        String s2 = "";


        if ((estensione1.equalsIgnoreCase(".txt")) && (estensione2.equalsIgnoreCase(".txt"))) {

            String path = request.getServletContext().getRealPath("") + "tmp";

            File pathNew = new File(path);

            //creo la cartella
            if (!pathNew.exists()) {
                pathNew.mkdir();
            }

            file1.write(path + File.separator + "file1");
            file2.write(path + File.separator + "file2");

            //leggo i file
            File f1 = new File(path + File.separator + "file1");
            File f2 = new File(path + File.separator + "file2");

            Scanner scanner1 = new Scanner(f1);
            Scanner scanner2 = new Scanner(f2);

            s1 = "";
            s2 = "";

            while (scanner1.hasNextLine()) {
                s1 += scanner1.nextLine();
            }

            while (scanner2.hasNextLine()) {
                s2 += scanner2.nextLine();
            }

            //divido le stringhe in base allo spazio
            String[] s1Parts = s1.split(" ");
            String[] s2Parts = s2.split(" ");

            //controllo la prima stringa
            //controllo se si tratta di note senza durata
            if ((s1Parts[0].matches("^[a-gA-G]{1}[1-8]{1}$"))){
                c1 = "note";
                //verifico se c'è qualche mismatch in tutta la stringa
                for (int i=1; i < s1Parts.length; i++) {
                    if (!(s1Parts[i].matches("^[a-gA-G]{1}[1-8]{1}$")))
                        c++;
                }
            }else if ((s1Parts[0].matches("^[a-gA-G]{1}[1-8]{1}[mqost]{1}$"))){
                c1 = "noteDurata";
                //controllo se si tratta di note con durata
                //verifico se c'è qualche mismatch in tutta la stringa
                for (int i=1; i < s1Parts.length; i++) {

                    if (!(s1Parts[i].matches("^[a-gA-G]{1}[1-8]{1}[mqost]{1}$")))
                        c++;
                }
            }else if ((s1Parts[0].matches("^[0-9]$|^[1][0-2]$"))){
                c1 = "intervalli";
                //controllo se si tratta di intervalli

                for (int i=1; i < s1Parts.length; i++) {
                    if (!(s1Parts[i].matches("^[0-9]$|^[1][0-2]$")))
                        c++;
                }
            }else {
                c++;
            }

            //controllo la seconda stringa
            //controllo se si tratta di note senza durata
            if ((s2Parts[0].matches("^[a-gA-G]{1}[1-8]{1}$"))){
                c2 = "note";
                //verifico se c'è qualche mismatch in tutta la stringa
                for (int i=1; i < s2Parts.length; i++) {
                    if (!(s2Parts[i].matches("^[a-gA-G]{1}[1-8]{1}$")))
                        c++;
                }
            }else if ((s2Parts[0].matches("^[a-gA-G]{1}[1-8]{1}[mqost]{1}$"))){
                //controllo se si tratta di note con durata
                c2 = "noteDurata";
                //verifico se c'è qualche mismatch in tutta la stringa
                for (int i=1; i < s2Parts.length; i++) {

                    if (!(s2Parts[i].matches("^[a-gA-G]{1}[1-8]{1}[mqost]{1}$")))
                        c++;
                }
            }else if ((s2Parts[0].matches("^[0-9]$|^[1][0-2]$"))){
                c2 = "intervalli";
                //controllo se si tratta di intervalli

                for (int i=1; i < s2Parts.length; i++) {
                    if (!(s2Parts[i].matches("^[0-9]$|^[1][0-2]$")))
                        c++;
                }
            }else {
                c++;
            }

        }else {
            c = -1;
        }

        if ((c==0) && (c1.equals(c2))){
            d = canzoneService.calcolaEditDistance(s1, s2);

            request.setAttribute("editDistance", d);
            request.setAttribute("nomeFile1", fileName1);
            request.setAttribute("nomeFile2", fileName2);
            request.setAttribute("contenutoFile1", s1);
            request.setAttribute("contenutoFile2", s2);

            address = "/WEB-INF/resultsFile.jsp";
        }else{
            if(c==-1)
                address = "/WEB-INF/formatError.jsp";
            else
                address = "/WEB-INF/stringError.jsp";
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher(address);

        dispatcher.forward(request, response);
    }
}
