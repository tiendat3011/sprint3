package bai_tap_nho;
// Tính trừu tượng (Abstraction): là tính chất che dấu đi toàn bộ quá trình
// thực hiện một tính năng nào đó, chỉ quan tâm đến kết quả, không quan tâm
// đến quá trình, thể hiện thông qua Abstract Class và Interface.
public class test1 {
    interface Animal {
        void makeSound();
    }

    class Dog implements Animal {
        @Override
        public void makeSound() {
            System.out.println("Gau");
        }
    }

    class Cat implements Animal {
        @Override
        public void makeSound() {
            System.out.println("Meow!");
        }
    }

    class Main {
        public void main(String[] args) {
            Animal dog = new Dog();
            Animal cat = new Cat();

            dog.makeSound();
            cat.makeSound();
        }
    }
}
