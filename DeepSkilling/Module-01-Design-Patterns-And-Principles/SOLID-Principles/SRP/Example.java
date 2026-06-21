class Report {
    public String generateReport() {
        return "Student Report Generated";
    }
}

class ReportPrinter {
    public void printReport(String report) {
        System.out.println(report);
    }
}

public class Example {
    public static void main(String[] args) {
        Report report = new Report();
        ReportPrinter printer = new ReportPrinter();

        String generatedReport = report.generateReport();
        printer.printReport(generatedReport);
    }
}