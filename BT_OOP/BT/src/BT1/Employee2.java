
package BT1;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.ArrayList;
class Emloyee2 {
    private int id;
    private String name;

    public Emloyee2(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Emloyee2{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    public static class ArrayList<E> {
        public static void main(String[] args) {

            List<Emloyee2> listEmployee = new java.util.ArrayList<Emloyee2>();

            Emloyee2 emloyee1 = new Emloyee2(1, "Huy");
            Emloyee2 emloyee2 = new Emloyee2(2, "Dat");
            Emloyee2 emloyee3 = new Emloyee2(3, "Thao");
            Emloyee2 emloyee4 = new Emloyee2(4, "Tai");
            Emloyee2 emloyee7 = new Emloyee2(7, "Khanh");
            Emloyee2 emloyee6 = new Emloyee2(6, "Lan");
            Emloyee2 emloyee5 = new Emloyee2(5, "Vy");
            Emloyee2 emloyee8 = new Emloyee2(8, "Hao");
            Emloyee2 emloyee9 = new Emloyee2(9, "Nhan");
            Emloyee2 emloyee10 = new Emloyee2(10, "Hien");

            listEmployee.add(emloyee1);
            listEmployee.add(emloyee2);
            listEmployee.add(emloyee3);
            listEmployee.add(emloyee6);
            listEmployee.add(emloyee7);
            listEmployee.add(emloyee4);
            listEmployee.add(emloyee5);
            listEmployee.add(emloyee8);
            listEmployee.add(emloyee9);
            listEmployee.add(emloyee10);

            Collections.sort(listEmployee, new Comparator<Emloyee2>() {
                @Override
                public int compare(Emloyee2 o1, Emloyee2 o2) {
                    if(o1.getId()> o2.getId())
                    return 1;
                    else if(o1.getId() == o2.getId())
                        return 0;
                    else
                        return -1;
                }
            });

            for (Emloyee2 emloyee : listEmployee) {
                System.out.println(emloyee.toString());
            }

    }
}
}