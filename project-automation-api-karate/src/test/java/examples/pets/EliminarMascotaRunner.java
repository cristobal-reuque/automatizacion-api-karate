package examples.pets;

import com.intuit.karate.junit5.Karate;

public class EliminarMascotaRunner {
    @Karate.Test
    Karate eliminarMascotaRunner() {
        return Karate.run("eliminar-mascota").relativeTo(getClass()).tags("@eliminar-mascota");
    }
}
