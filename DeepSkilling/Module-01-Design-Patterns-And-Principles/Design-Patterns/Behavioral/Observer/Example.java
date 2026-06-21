import java.util.ArrayList;

import java.util.List;



interface Observer {

    void update(String message);

}



class Subscriber implements Observer {

    private String name;



    Subscriber(String name) {

        this.name = name;

    }



    public void update(String message) {

        System.out.println(name + " received notification: " + message);

    }

}



class YouTubeChannel {

    private List<Observer> subscribers = new ArrayList<>();



    public void subscribe(Observer observer) {

        subscribers.add(observer);

    }



    public void uploadVideo(String videoTitle) {

        notifySubscribers("New video uploaded: " + videoTitle);

    }



    private void notifySubscribers(String message) {

        for (Observer observer : subscribers) {

            observer.update(message);

        }

    }

}



public class Example {

    public static void main(String[] args) {

        YouTubeChannel channel = new YouTubeChannel();



        Observer sub1 = new Subscriber("Chaitanya");

        Observer sub2 = new Subscriber("Pramod");



        channel.subscribe(sub1);

        channel.subscribe(sub2);



        channel.uploadVideo("Observer Pattern in Java");

    }

}