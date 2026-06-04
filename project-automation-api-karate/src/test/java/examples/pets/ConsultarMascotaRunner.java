package examples.pets;

import com.intuit.karate.junit5.Karate;

public class ConsultarMascotaRunner {
    @Karate.Test
    Karate consultarMascotaRunner() {
        return Karate.run("consultar-mascota").relativeTo(getClass()).tags("@consultar-mascota");
    }
}
