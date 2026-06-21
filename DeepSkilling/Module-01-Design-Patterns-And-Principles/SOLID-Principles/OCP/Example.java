interface Payment {
    void pay(double amount);
}

class CreditCardPayment implements Payment {
    public void pay(double amount) {
        System.out.println("Paid " + amount + " using Credit Card");
    }
}

class UPIPayment implements Payment {
    public void pay(double amount) {
        System.out.println("Paid " + amount + " using UPI");
    }
}

public class Example {
    public static void main(String[] args) {
        Payment payment1 = new CreditCardPayment();
        payment1.pay(1000);

        Payment payment2 = new UPIPayment();
        payment2.pay(500);
    }
}