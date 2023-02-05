<%--
  Created by IntelliJ IDEA.
  User: migli
  Date: 07/01/2023
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Lettura file</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
    <figure class="text-center">
        <h1 class="display-4">Carica due file e calcola la edit distance</h1>
    </figure>
<form action="leggi-file" enctype="multipart/form-data" method="post">

    <div class="mb-3">
        <label for="file1">Select a file:</label>
        <input class="form-control" type="file" id="file1" name="file1" accept="text/txt" width="50%"><br><br>
    </div>

    <div class="mb-3">
        <label for="file2">Select a file:</label>
        <input class="form-control" type="file" id="file2" name="file2" accept="text/txt" width="50%"><br><br>
    </div>
    <figure class="text-center">
        <input type="submit" class="btn btn-primary btn-lg" value="Invia">
    </figure>
</form>

</div>
</body>
</html>
