package main;

import database.DataBase;

import java.util.ArrayList;
import java.util.Collections;

public class Server {
    public static void main(String[] args) {
        DataBase.connect("jdbc:mysql://localhost:3306/hexathon", "root", "projectDanbi");
        DataBase.load();

        ArrayList<Integer> busList = new ArrayList<>();
        Integer[] bus = new Integer[] { 133, 233, 337, 733, 304, 807, 304, 307, 123, 317, 327 };
        Collections.addAll(busList, bus);

        Thread thread = new Thread() {
            @Override
            public void run() {
                super.run();
                try {
                    while (true) {
                        Crawler crawler = Crawler.getInstance();
                        for (int bus : busList) {
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
