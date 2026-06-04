package examples.pets;

import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    Karate runner() {
        return Karate.run().relativeTo(getClass()).tags("@allTest");
    }
}
