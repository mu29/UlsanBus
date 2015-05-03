package main;

import database.Constant;
import database.DataBase;

public class Server {
    public static void main(String[] args) {
        Constant.init();
        DataBase.connect("jdbc:mysql://localhost:3306/hexathon", "root", "projectDanbi");
        DataBase.load();

        Thread thread = new Thread() {
            @Override
            public void run() {
                super.run();
                try {
                    while (true) {
                        Crawler crawler = Crawler.getInstance();
                        for (String bus : Constant.busList) {
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
