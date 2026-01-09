package controlador;

import datos.BaseDatosSimulada;
import modelo.Estudiante;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegistroServlet")
public class RegistroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion.equals("guardar")) {

            String nombre = request.getParameter("nombre");
            String correo = request.getParameter("correo");
            String curso = request.getParameter("curso");

            Estudiante e = new Estudiante(nombre, correo, curso);
            BaseDatosSimulada.agregarEstudiante(e);

            response.sendRedirect("index.jsp");

        } else if (accion.equals("mostrar")) {

            request.setAttribute(
                "lista",
                BaseDatosSimulada.obtenerEstudiantes()
            );

            request.getRequestDispatcher("listar.jsp")
                   .forward(request, response);
        }
    }
}
