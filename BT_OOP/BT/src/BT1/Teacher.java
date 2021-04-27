package BT1;

import javafx.application.Application;
import javafx.stage.Stage;

public class Teacher extends Person {
    private int salary;

    public Teacher(String name, int age, String address, int salary) {
        super(name, age, address);
        this.salary = salary;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public void display() {
        super.display();
        System.out.println("Salary: " + salary);
    }
}


