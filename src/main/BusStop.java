package main;

import java.util.Hashtable;

public class BusStop {
    private String startPoint;
    private String destPoint;
    private int minTime;
    private int maxTime;
    private int avgTime;
    private int numTime;

    private static Hashtable<String, BusStop> busStopList = new Hashtable<>();
    public static Hashtable<String, BusStop> list() {
        return busStopList;
    }

    public BusStop(String _start, String _dest) {
        startPoint = _start;
        destPoint = _dest;

        minTime = 3600;
        maxTime = 0;
        avgTime = 0;
        numTime = 0;
    }

    public void addTime(int time) {
        numTime++;
        minTime = minTime > time ? time : minTime;
        maxTime = maxTime < time ? time : maxTime;
        avgTime = (avgTime * numTime + time) / (numTime);
        System.out.println(startPoint + " -> " + destPoint + " (최소 : " + minTime + ", 최대 : " + maxTime + ", 평균 : " + avgTime + ")");
    }

    public int getMinTime() {
        return minTime;
    }

    public int getMaxTime() {
        return maxTime;
    }

    public int getAvgTime() {
        return avgTime;
    }
}