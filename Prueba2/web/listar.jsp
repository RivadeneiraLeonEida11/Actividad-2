<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Estudiante" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registros</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<h1>Estudiantes Registrados</h1>

<%
    ArrayList<Estudiante> lista =
        (ArrayList<Estudiante>) request.getAttribute("lista");

    if (lista != null && !lista.isEmpty()) {
        for (Estudiante e : lista) {
%>
            <div class="card">
                <p><strong>Nombre:</strong> <%= e.getNombre() %></p>
                <p><strong>Correo:</strong> <%= e.getCorreo() %></p>
                <p><strong>Curso:</strong> <%= e.getCurso() %></p>
            </div>
<%
        }
    } else {
%>
        <p>No hay registros.</p>
<%
    }
%>

<a href="index.jsp">Volver</a>

</body>
</html>
