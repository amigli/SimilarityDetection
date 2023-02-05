<%@ page import="model.Canzone" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Progetto Musimatica</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%
    List<Canzone> canzoni = (List<Canzone>) request.getAttribute("canzoni");
%>
<div class="container-fluid">
<figure class="text-center">
<h1 class="display-4">
    Riconoscere il plagio tra due canzoni
</h1>
</figure>
<br/>
<form action="calcola-edit-distance">
    <div class="row">
        <div class="col">
            <label for="prima-canzone">Scegli la prima canzone:</label>
            <select class="form-select" id="prima-canzone" name="prima-canzone">
        <%
        for (int i=0; i<canzoni.size();i++){
        %>
        <option value=<%=canzoni.get(i).getId()%>><%=canzoni.get(i).getTitoloArtista()%></option>
        <%
            }
        %>
    </select>
        </div>
        <div class="col">
            <label for="seconda-canzone">Scegli la seconda canzone:</label>
            <select class="form-select" id="seconda-canzone" name="seconda-canzone">
        <%
            for (int i=0; i<canzoni.size();i++){
        %>
        <option value=<%=canzoni.get(i).getId()%>><%=canzoni.get(i).getTitoloArtista()%></option>
        <%
            }
        %>
    </select>
        </div>
    </div>
    <br><br>
    <div class="container text-center">
        <h2>Scegliere in base a cosa calcolare la similarità:</h2>
            <input type="radio" id="note" name="parametro" value="note">
            <label for="note">Note senza durata</label><br>
            <input type="radio" id="noteDurata" name="parametro" value="noteDurata">
            <label for="noteDurata">Note con durata</label><br>
            <input type="radio" id="intervalli" name="parametro" value="intervalli">
            <label for="intervalli">Intervalli</label><br>
            <input type="radio" id="all" name="parametro" value="all">
            <label for="all">Tutti i parametri precedenti</label><br>
        <br>
        <input type="submit" class="btn btn-primary btn-lg" value="Conferma">
    </div>
</form>
    <a href="ForwardServlet" class="link-primary"><button type="button" class="btn btn-outline-info btn-lg">Inserisci due file</button></a>

<br><br><br>
<footer class="text-center text-lg-start bg-light text-muted">
    Progetto realizzato nell'ambito del corso di Musimatica (Dipartimento di Informatica) a.a. 2022/2023
    <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        Prof. De Prisco Roberto<br>
        Studentessa: Miglino Annalaura mat.0512120868
    </div>
</footer>
</div>
</body>
</html>