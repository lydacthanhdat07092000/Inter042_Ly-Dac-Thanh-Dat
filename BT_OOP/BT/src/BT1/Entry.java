package BT1;

import javafx.application.Application;
import javafx.stage.Stage;

import java.util.*;

public class Entry{
        public static void main(String[] args) {
            Person s1 = new Student("Trung", 18, "Da Nang", 5.0);
            Person s2 = new Student("An", 20, "Da Nang", 5.0);
            Person s3 = new Student("Tung", 20, "Da Nang", 5.0);
            Person s4 = new Student("Hao", 18, "Da Nang", 8.0);
            Person s5 = new Student("Hien", 21, "Da Nang", 9.0);

            Teacher t1 = new Teacher("Nam", 30, "Hải Châu", 2000000);
            Teacher t2 = new Teacher("Lan", 40, "Hải Châu", 6000000);
            Teacher t3 = new Teacher("Huy", 30, "Hải Châu", 100000);
            Teacher t4 = new Teacher("Thanh", 25, "Hải Châu", 800000);
            Teacher t5 = new Teacher("Hien", 32, "Hải Châu", 500000);

            List<Person> listStu = new ArrayList<>();
            listStu.add(s1);
            listStu.add(s2);
            listStu.add(s3);
            listStu.add(s4);
            listStu.add(s5);

            List<Teacher> listTeacher = new ArrayList<Teacher>();
            listTeacher.add(t1);
            listTeacher.add(t2);
            listTeacher.add(t3);
            listTeacher.add(t4);
            listTeacher.add(t5);

            System.out.println("Danh sách học sinh :");
            System.out.println("------------------------");
            Iterator<Person> iterator1 = listStu.iterator();
            while (iterator1.hasNext()) {
                iterator1.next().display();
                System.out.println("------------------");
            }
            System.out.println("\n");
            System.out.println("Danh sách Giáo viên :");
            System.out.println("------------------------");
            Iterator<Teacher> iterator2 = listTeacher.iterator();
            while (iterator2.hasNext()) {
                iterator2.next().display();
                System.out.println("------------------");
            }

            listStu.sort(new Comparator<Person>() {
                @Override
                public int compare(Person o1, Person o2) {
                    if (o1.getAge() > o2.getAge()) {
                        return 1;
                    } else if (o1.getAge() == o2.getAge()) {
                        return 0;
                    } else return -1;
                }
            });

            listTeacher.sort(new Comparator<Teacher>() {
                @Override
                public int compare(Teacher o1, Teacher o2) {
                    if (o1.getSalary() > o2.getSalary()) {
                        return -1;
                    } else if (o1.getSalary() == o2.getSalary()) {
                        return 0;
                    } else return 1;
                }

            });


            if (listTeacher.size() > 0) {
                System.out.println("\nTop 3 giáo viên có lương cao nhất \n");
                for (int i = 0; i < 3; i++) {
                    listTeacher.get(i).display();
                    System.out.println("------------------------");
                }
            } else {
                System.out.println("Không tồn tai giáo viên");
            }


            if (listStu.size() > 0) {
                System.out.println("\n Những học sinh có tuổi nhỏ nhất\n");
                for (int i = 0; i < listStu.size(); i++) {
                    if (listStu.get(i).getAge() == listStu.get(1).getAge()) {
                        listStu.get(i).display();
                        System.out.println("----------------------------");
                    }
                }
            } else {
                System.out.println("Không tồn tại học sinh");
            }
        }
}

