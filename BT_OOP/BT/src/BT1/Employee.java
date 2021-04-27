package BT1;

    class Emloyee<puclic> {
        int id;
        String firstName;
        String lastName;
        int salary;

        public Emloyee() {
        }

        void display() {
            System.out.println("Sothutu: " + this.id);
            System.out.println("FullName: " + this.firstName + " " + this.lastName);
            System.out.println("Salary: " + this.salary);
        }

        public static void main(String[] args) {
            Emloyee E1 = new Emloyee();
            E1.id = 1;
            E1.firstName = "Ly";
            E1.lastName = "Dat";
            E1.salary = 6000000;
            E1.display();
        }

        public int getId() {
            return this.id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getFirstName() {
            return this.firstName;
        }

        public void setFirstName(String firstName) {
            this.firstName = firstName;
        }

        public String getLastName() {
            return this.lastName;
        }

        public void setLastName(String lastName) {
            this.lastName = lastName;
        }

        public int getSalary() {
            return this.salary;
        }

        public void setSalary(int salary) {
            this.salary = salary;
        }

    }

