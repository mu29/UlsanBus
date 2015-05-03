package main;

import database.DataBase;

import java.util.ArrayList;
import java.util.Collections;

public class Server {
    public static void main(String[] args) {
        DataBase.connect("jdbc:mysql://localhost:3306/hexathon", "root", "projectDanbi");
        DataBase.load();

        ArrayList<String> busList = new ArrayList<>();
        String[] bus = new String[] { "0133", "0233", "0337", "0733", "0304", "0807", "0304", "0307", "0123", "0317", "0327" };
        Collections.addAll(busList, bus);

        Thread thread = new Thread() {
            @Override
            public void run() {
                super.run();
                try {
                    while (true) {
                        Crawler crawler = Crawler.getInstance();
                        for (String bus : busList) {
                            crawler.updateBusData(bus, 1);
                            crawler.updateBusData(bus, 2);
                        }
                        Thread.sleep(3000);
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        };
        thread.start();
    }
}
