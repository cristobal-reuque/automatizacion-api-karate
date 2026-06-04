package examples.pets;

import com.intuit.karate.junit5.Karate;

public class CrearMascotaRunner {
    @Karate.Test
    Karate crearMascotaRunner() {
        return Karate.run("crear-mascota").relativeTo(getClass()).tags("@crear-mascota");
    }
}
