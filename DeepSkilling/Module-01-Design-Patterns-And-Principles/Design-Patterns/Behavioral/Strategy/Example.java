interface PaymentStrategy {

    void pay(int amount);

}



class CreditCardStrategy implements PaymentStrategy {

    public void pay(int amount) {

        System.out.println("Paid " + amount + " using Credit Card");

    }

}



class UPIStrategy implements PaymentStrategy {

    public void pay(int amount) {

        System.out.println("Paid " + amount + " using UPI");

    }

}



class ShoppingCart {

    private PaymentStrategy paymentStrategy;



    ShoppingCart(PaymentStrategy paymentStrategy) {

        this.paymentStrategy = paymentStrategy;

    }



    public void checkout(int amount) {

        paymentStrategy.pay(amount);

    }

}



public class Example {

    public static void main(String[] args) {

        ShoppingCart cart1 = new ShoppingCart(new CreditCardStrategy());

        cart1.checkout(1500);



        ShoppingCart cart2 = new ShoppingCart(new UPIStrategy());

        cart2.checkout(800);

    }

}