package main;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Bus {
    private int no;
    private int direction;
    private String name;
    private String lastStopName;
    private String stopName;
    private long timeStamp;
    private double x;
    private double y;

    public Bus(int _no, int _direction, String _name, String _stopName, double _x, double _y) {
        no = _no;
        direction = _direction;
        name = _name;
        lastStopName = "";
        stopName = _stopName;
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

    public String getStopName() {
        return stopName;
    }

    public double getX() {
        return x;
    }

    public double getY() {
        return y;
    }

    public long updateStopName(String _stopName) {
        long duration = 0;

        if (!stopName.equals(_stopName)) {
            lastStopName = stopName;
            stopName = _stopName;

            if (timeStamp == 0) {
                timeStamp = System.currentTimeMillis() / 1000;
            } else {
                duration = System.currentTimeMillis() / 1000 - timeStamp;
                timeStamp += duration;

                Calendar calendar = Calendar.getInstance();
                String[] weekDays = { "sunday", "monday", "tuesday", "wednesday", "thursday", "friday", "saturday" };
                String time = new SimpleDateFormat("HH").format(calendar.getTime());
                String key = lastStopName + weekDays[calendar.get(Calendar.DAY_OF_WEEK) - 1] + time;

                if (!BusStop.list().containsKey(key))
                    BusStop.list().put(key, new BusStop(lastStopName, stopName));
                BusStop.list().get(key).addTime((int) duration);
            }
        }

        return duration;
    }
}
