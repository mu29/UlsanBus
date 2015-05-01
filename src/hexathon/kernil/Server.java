package hexathon.kernil;

import java.util.ArrayList;

public class Server {
    public static void main(String[] args) {

        Crawler crawler = Crawler.getInstance();
        ArrayList<Bus> list = crawler.getBusData(337, 1);
        list.remove(0);
    }
}
