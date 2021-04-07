import java.util.List;
import java.util.stream.Stream;

import static java.util.stream.Collectors.toList;

public class App {
    public static void main(String[] args) {
        System.out.println("Starting the remote debugging application");
        System.out.println("The application will be running inside a docker image");
        int i = 0;

        while (i < 500) {
            System.out.println("Value of i is " + i);

            List<String> strings = Stream.of("C", "A", "B")
                    .sorted()
                    .collect(toList());

            if (i == 5) {
                System.out.println("i == 5");
                try {
                    throw new IllegalArgumentException();
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                }
            }

            try {
                Thread.sleep(5000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            i++;
        }

    }
}
