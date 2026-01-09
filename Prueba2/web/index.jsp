<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Curso</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>

<h1>Registro a Curso Virtual</h1>

<form action="RegistroServlet" method="post">

    <label>Nombre:</label>
    <input type="text" name="nombre" required>

    <label>Correo:</label>
    <input type="email" name="correo" required>

    <label>Curso:</label>
    <select name="curso">
        <option>Java Básico</option>
        <option>Programación Web</option>
        <option>Bases de Datos</option>
    </select>

    <button type="submit" name="accion" value="guardar">
        Guardar
    </button>

    <button type="submit" name="accion" value="mostrar">
        Mostrar registros
    </button>

</form>

</body>
</html>
