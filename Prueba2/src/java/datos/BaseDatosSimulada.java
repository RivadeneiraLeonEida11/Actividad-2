package datos;

import java.util.ArrayList;
import modelo.Estudiante;

public class BaseDatosSimulada {

    private static ArrayList<Estudiante> listaEstudiantes = new ArrayList<>();

    public static void agregarEstudiante(Estudiante e) {
        listaEstudiantes.add(e);
    }

    public static ArrayList<Estudiante> obtenerEstudiantes() {
        return listaEstudiantes;
    }
}
