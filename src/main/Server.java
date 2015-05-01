package main;

import database.DataBase;

public class Server {
    public static void main(String[] args) {
        Thread thread = new Thread() {
            @Override
            public void run() {
                super.run();
                while (true) {
                    Crawler crawler = Crawler.getInstance();
                    crawler.updateBusData(337, 2);
                    crawler.updateBusData(807, 2);
                    try {
                        Thread.sleep(3000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        };
        thread.start();
    }
}
