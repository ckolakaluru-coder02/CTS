class Student {
    private String name;
    private String rollNumber;

    public Student(String name, String rollNumber) {
        this.name = name;
        this.rollNumber = rollNumber;
    }

    public String getName() {
        return name;
    }

    public String getRollNumber() {
        return rollNumber;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRollNumber(String rollNumber) {
        this.rollNumber = rollNumber;
    }
}

class StudentView {
    public void displayStudentDetails(String name, String rollNumber) {
        System.out.println("Student Details");
        System.out.println("Name: " + name);
        System.out.println("Roll Number: " + rollNumber);
    }
}

class StudentController {
    private Student model;
    private StudentView view;

    public StudentController(Student model, StudentView view) {
        this.model = model;
        this.view = view;
    }

    public void setStudentName(String name) {
        model.setName(name);
    }

    public void setStudentRollNumber(String rollNumber) {
        model.setRollNumber(rollNumber);
    }

    public void updateView() {
        view.displayStudentDetails(model.getName(), model.getRollNumber());
    }
}

public class Example {
    public static void main(String[] args) {
        Student student = new Student("Chaitanya", "231FA19046");
        StudentView view = new StudentView();

        StudentController controller = new StudentController(student, view);

        controller.updateView();

        System.out.println();

        controller.setStudentName("K. Chaitanya");
        controller.setStudentRollNumber("231FA19046");

        controller.updateView();
    }
}