package main;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Hashtable;

public class Bus {
    private int no;
    private int direction;
    private String name;
    private int lastStop;
    private int stop;
    private long timeStamp;
    private double x;
    private double y;

    private static ArrayList<String> currentBusList = new ArrayList<>();
    private static Hashtable<String, Bus> busList = new Hashtable<>();
    public static Hashtable<String, Bus> list() {
        return busList;
    }
    public static ArrayList<String> currentList() {
        return currentBusList;
    }

    public Bus(int _no, int _direction, String _name, int _stop, double _x, double _y) {
        no = _no;
        direction = _direction;
        name = _name;
        lastStop = 0;
        stop = _stop;
        timeStamp = 0;
        x = _x;
        y = _y;
    }

    public int getNo() {
        return no;
    }

    public int getDirection() {
        return direction;
    }

    public String getName() {
        return name;
    }

    public int getStop() {
        return stop;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public void updateStopName(int _stop) {
        long duration = 0;

        if (stop != _stop) {
            lastStop = stop;
            stop = _stop;

            if (timeStamp == 0) {
                timeStamp = System.currentTimeMillis() / 1000;
            } else {
                duration = System.currentTimeMillis() / 1000 - timeStamp;
                timeStamp += duration;

                Calendar calendar = Calendar.getInstance();
                String[] weekDays = { "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday" };
                String time = new SimpleDateFormat("HH").format(calendar.getTime());
                String key = lastStop + weekDays[calendar.get(Calendar.DAY_OF_WEEK) - 1] + time;

                if (!BusStop.list().containsKey(key))
                    BusStop.list().put(key, new BusStop(lastStop, stop));
                BusStop.list().get(key).addTime((int) duration);
            }
        }
    }

    public static void checkCurrent() {
        ArrayList<String> discardList = new ArrayList<>();

        for (Bus bus : busList.values())
            if (!currentBusList.contains(bus.getName()))
                discardList.add(bus.getName());

        for (String name : discardList)
            busList.remove(name);

        currentBusList.clear();
    }
}
