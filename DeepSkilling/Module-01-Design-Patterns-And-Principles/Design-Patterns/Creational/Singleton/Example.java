class AppLogger {
    private static AppLogger instance;

    private AppLogger() {
        System.out.println("Logger object created");
    }

    public static AppLogger getInstance() {
        if (instance == null) {
            instance = new AppLogger();
        }
        return instance;
    }

    public void log(String message) {
        System.out.println("Log Message: " + message);
    }
}

public class Example {
    public static void main(String[] args) {
        AppLogger logger1 = AppLogger.getInstance();
        AppLogger logger2 = AppLogger.getInstance();

        logger1.log("Application started");
        logger2.log("User logged in");

        System.out.println(logger1 == logger2);
    }
}