<%--
  Created by IntelliJ IDEA.
  User: migli
  Date: 08/01/2023
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Risultati lettura di file</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
<%
int d = (int) request.getAttribute("editDistance");
String nome1 = (String) request.getAttribute("nomeFile1");
String nome2 = (String) request.getAttribute("nomeFile2");
String contenuto1 = (String) request.getAttribute("contenutoFile1");
String contenuto2 = (String) request.getAttribute("contenutoFile2");
%>
    <figure class="text-center">
        <h1 class="display-5">Calcolo distanza tra le due stringhe</h1>
    </figure>
<br>
    <div class="row justify-content-md-center">
        <div class="col-md-auto">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Primo file: <%=nome1%></h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            Contenuto del file: <br>
                            <%=contenuto1%>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-md-auto">
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">Secondo file: <%=nome2%></h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">
                            Contenuto del file: <br>
                            <%=contenuto2%>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <br><br>
    <p>La edit distance tra le stringhe contenute nei due file è di <%=d%></p><br>
    <p>Più la barra è colorata, più le stringhe sono simili.</p>
    <div class="progress">
        <%
            if (d>100){
        %>
        <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
        <%
        }else{
        %>
        <div class="progress-bar bg-info" role="progressbar" style="width: <%=100-d%>%" aria-valuenow="<%=d%>" aria-valuemin="0" aria-valuemax="100"></div>
        <%
            }
        %>
    </div>
<br>
    <a href="index.html"><button type="button" class="btn btn-outline-info btn-lg">Torna alla home</button></a>
</div>
</body>
</html>
